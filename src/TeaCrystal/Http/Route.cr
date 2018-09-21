module TeaCrystal
  def initialize(@method : String, @path : String, &handler : HTTP::Server::Context -> _)
    @handler = ->(context : HTTP::Server::Context) do
      output = handler.call(context)
      output.is_a?(String) ? output : ""
    end
  end
end
