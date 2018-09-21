module TeaCrystal
  class Routes
    def initialize
      @routes = Radix::Tree(Routes).new
    end

    def setRoute(method : String, path : String)
      @routes.add __setRoute method, path
    end

    private def __setRoute(method : String, path : String)
      "/#{method.downcase}#{path}"
    end
  end
end
