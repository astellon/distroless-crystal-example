# A very basic HTTP server
require "http/server"

module HelloWorld
  VERSION = "0.1.0"

  server = HTTP::Server.new do |context|
    context.response.content_type = "text/plain"
    context.response.print "Hello world, got #{context.request.path}!"
  end

  puts "Listening on http://0.0.0.0:8080"
  server.listen("0.0.0.0", 8080)
end
