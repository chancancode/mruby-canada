module Canada
  VERSION = "0.0.1"
end

class Object
  def respond_to_missing?(meth, include_private = false)
    if meth.to_s[-4..-1] === "_eh?"
      respond_to?((meth.to_s[0..-5] + "?").to_sym, include_private)
    else
      false
    end
  end

  def method_missing(meth, *args, &block)
    if meth.to_s[-4..-1] === "_eh?"
      send(meth.to_s[0..-5] + "?", *args, &block)
    else
      super
    end
  end
end

module Kernel
  def aboot(obj)
    obj.inspect
  end

  def main
    puts "ZOMG @hone02!"
  end
end

class Exception
  def initialize_with_apologies(*args)
    args[0] = "I'm sorry, but " + args[0]
    initialize_without_apologies(*args)
  end

  alias_method :initialize_without_apologies, :initialize
  alias_method :initialize, :initialize_with_apologies
end
