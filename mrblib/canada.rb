module Canada
  VERSION = "0.0.1"
end

class Object
  def method_missing(meth, *args, &block)
    if meth.to_s[-4..-1] === "_eh?"
      send(meth.to_s[0..-5] + "?", *args, &block)
    else
      super
    end
  end
end
