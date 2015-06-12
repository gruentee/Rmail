class Account
  attr_reader :id, :type, :user, :pass, :contacts

  def initialize(id, type, user, pass)
    @id = id
    @user = user
    @backend = choose_backend 
    @pass = pass
    @contacts = @backend.contacts
  end

  def send_message(recipient, message)
    @backend.send_message(recipient, message)
    
  end

  private

  def choose_backend
    #TODO, chooose between backendas
    ConsoleloggerBackend.new
    
  end
end
