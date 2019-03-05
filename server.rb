require 'sinatra'
require 'json'

before do
    $stdout.sync = true
end

post '/' do
    puts "received post"
    puts "data:"
    body = request.body.read
    puts body
    jBody = JSON.parse(body)
    lang = jBody["language"]
    puts "crafting response:"

    return "This reached the action with argument: #{lang}"
end