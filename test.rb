class Backend
  def self.register_backend type, &block
    @blocks ||= {}

    @blocks[type] = block
  end

  def self.get_backend type
    handler = @blocks[type]
    if handler
      return handler.call
    else
      return nil
    end
  end
end

Dir["plugins/*.rb"].each {|file| require_relative file }


Backend.get_backend('type1').say_name
Backend.get_backend('type1').say_name
Backend.get_backend('type2').say_name
