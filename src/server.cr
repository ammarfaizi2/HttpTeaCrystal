require "./TeaCrystal/**"

server = TeaCrystal::TeaHttp.new

require "../routes/**"

server.setHost "0.0.0.0"
server.setPort 4444
server.run
