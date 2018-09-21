require "http/server"

module TeaCrystal
  INSTANCE = new

  class TeaHttp
    def initialize
      @routes = TeaCrystal::Routes.new
      @server = HTTP::Server.new([
        HTTP::ErrorHandler.new,
        HTTP::LogHandler.new,
        HTTP::CompressHandler.new,
      ])
      @host = "0.0.0.0"
      @port = 8000
    end

    def setHost(host : String)
      @host = host
    end

    def setPort(port : Int32)
      @port = port
    end

    def run
      address = @server.bind_tcp @host, @port
      puts "Listening on http://#{address}"
      @server.listen
    end
  end
end
