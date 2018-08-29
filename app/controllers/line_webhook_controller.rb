class LineWebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    body = request.body.read
    client = LineService.client

    signature = request.env['HTTP_X_LINE_SIGNATURE']

    events = client.parse_events_from(body)
    events.each { |event|

      inst_var = event.instance_variable_get(:@src)

      p inst_var
      user_id = client.get_profile(inst_var['source']['userId'])
      case user_id
      when Net::HTTPSuccess then
        contact = JSON.parse(user_id.body)
        p contact['displayName']
        p contact['pictureUrl']
        p contact['statusMessage']
      else
        p "#{response.code} #{response.body}"
      end

      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
          message = {
            type: 'text',
            text: "Hello, #{contact['displayName']}! Ini Message Kamu Tadi: #{event.message['text']}"
          }
          client.reply_message(event['replyToken'], message)
        when Line::Bot::Event::MessageType::Audio
          response = client.get_message_content(event.message['id'])
          tf = Tempfile.open("content")
          a = tf.write(response.body)          
        end
      end
    }

    "OK"
  end

end
