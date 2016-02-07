When(/I submit "(.*)" to flask_rest$/) do |mess|
  # POST to ENV['API_URL']
  @last_message = {
    message: mess
  }

  @last_response = HTTParty.post(ENV['API_URL'], body: @last_message)
  @last_message[:shortcode] = @last_response.body
end

Then(/The response should be successful$/) do
  assert @last_response.code == 200
end

When(/I recall my last message$/) do
  url = "#{ENV['API_URL']}/#{@last_message[:shortcode]}"
  @last_response = HTTParty.get(url)
end

Then(/The response should contain "(.*)"$/) do |content|
  assert @last_response.include?(content),
    "Response '#{@last_response.body}' did not include '#{content}'"
end
