
require 'slack-ruby-bot'

class Bot < SlackRubyBot::Bot
  command '/birthday' do |client, data, _match|
    client.say(text: "When is your birthday ?", channel: data.channel)
  end
end

SlackRubyBot::Client.logger.level = Logger::WARN

Bot.run
