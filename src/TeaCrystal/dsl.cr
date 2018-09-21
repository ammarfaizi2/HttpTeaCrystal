HTTP_METHODS = %w(get post put patch delete options)

{% for method in HTTP_METHODS %}
  def {{method.id}}(path : String, &block : HTTP::Server::Context -> _)

  end
{% end %}
