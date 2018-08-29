class LineWebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    body = request.body.read
    client = LineService.client

    signature = request.env['HTTP_X_LINE_SIGNATURE']

    events = client.parse_events_from(body)
    events.each { |event|

      inst_var = event.instance_variable_get(:@src)

      logger.debug(inst_var)
      user_id = client.get_profile(inst_var['source']['userId'])
      case user_id
      when Net::HTTPSuccess then
        contact = JSON.parse(user_id.body)
        logger.debug(contact)
      else
        logger.debug("#{response.code} #{response.body}")
      end

      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
          message = {
            type: 'text',
            text: "Hello! Ini Message Kamu Tadi: #{event.message['text']}"
          }
          client.reply_message(event['replyToken'], message)
        end
      end
    }

    "OK"
  end

end
