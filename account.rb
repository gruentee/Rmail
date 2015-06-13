class Account
  require_relative 'backend'
  attr_reader :id, :type, :user, :pass, :contacts

  def initialize(id, type, user, pass)
    @id = id
    @user = user
    @backend = Backend.get_backend type
    @pass = pass
    @contacts = @backend.contacts
  end

  def send_message(recipient, message)
    @backend.send_message(recipient, message)
  end
end
