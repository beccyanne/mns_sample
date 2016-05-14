require_relative '../../lib/adapters/user_api'

class SDK
  attr_accessor :user
end

def initialise_sdk
  @sdk = SDK.new
  user_adapter = UserAdapter.new
  @sdk.user = user_adapter
end

Before do |scenario|
  initialise_sdk
end