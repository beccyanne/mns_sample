Given(/^I register a user:$/) do |user|
  @uuid = generate_uuid
  options = { userId: @uuid }.merge user.hashes[0]
  @sdk.user.create_user(options)
end

When(/^I search for the newly registered user$/) do
  @users = @sdk.user.get_user(@uuid)[0]
end

Then(/^the registration should be successful$/) do
  expect(@sdk.user.last_response_code).to eq(201)
end

Then(/^the user below should be returned:$/) do |u|
  user = u.hashes[0]
  expect(user['title']).to eq(@users.title)
  expect(user['body']).to eq(@users.body)
end

private

def generate_uuid
	uuid = UUID.new
	uuid.generate
end