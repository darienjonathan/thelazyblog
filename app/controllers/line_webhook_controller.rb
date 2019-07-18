class LineWebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    body = request.body.read
    client = LineService.client

    signature = request.env['HTTP_X_LINE_SIGNATURE']

    events = client.parse_events_from(body)
    events.each { |event|
      inst_var = event.instance_variable_get(:@src)
      user_id = client.get_profile(inst_var['source']['userId'])
      case user_id
      when Net::HTTPSuccess then
        contact = JSON.parse(user_id.body)
      else
        logger.error("#{response.code} #{response.body}")
        head response.code
      end

      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
          message = {
            type: "flex",
            altText: "This is Flex Message",
            contents: 
            {
              type: "bubble",
              hero: {
                type: "image",
                url: "https://www.slate.com/content/dam/slate/blogs/lexicon_valley/2014/02/13/doge_why_we_can_t_agree_on_how_to_pronounce_the_internet_meme_featuring/wowsuchgrammarsoteach.jpg.CROP.promovar-mediumlarge.jpg",
                size: "full",
                aspectMode: "fit"
              },
              body: {
                type: "box",
                layout: "vertical",
                spacing: "md",
                contents: [
                  {
                    type: "button",
                    style: "primary",
                    action: {
                      type: "uri",
                      label: "Primary style button",
                      uri: "https://darienjonathan.com"
                    }
                  },
                  {
                    type: "button",
                    style: "secondary",
                    action: {
                      type: "uri",
                      label: "Secondary style button",
                      uri: "https://darienjonathan.com"
                    }
                  },
                  {
                    type: "button",
                    style: "link",
                    action: {
                      type: "uri",
                      label: "Link style button",
                      uri: "https://darienjonathan.com"
                    }
                  }
                ]
              }
            }
          }
          client.reply_message(event['replyToken'], message)
        end
      end
    }

    head :ok
  end

end
