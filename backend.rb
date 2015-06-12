# Every Plugin should inheritate this.

class BackendPlugin
  def initialize(*args)
    
  end

  def send_message(recipient, message)
    raise NotImplementedError.new('OH NOES!')
  end

  def cotacts
    raise NotImplementedError.new('OH NOES!')
  end
end
