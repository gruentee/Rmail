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
      raise "Found account type #{type} but no matching plugin"
    end
  end
end

Dir["plugins/*.rb"].each {|file| require_relative file }


