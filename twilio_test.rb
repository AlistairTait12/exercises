# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

account_sid = 'YOUR SID'
auth_token = 'YOUR TOKEN'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = 'YOUR TWILIO NUMBER' # Your Twilio number
to = 'YOUR OWN MOBILE NUMBER' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)