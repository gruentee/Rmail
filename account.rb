class Account
  require_relative 'backend'
  attr_reader :id, :type, :user, :pass, :contacts

  def initialize(id, options)
    @type = options['type']
    @id = id
    @user = options['user']
    @backend = Backend.get_backend type
    @options = options
    @contacts = @backend.contacts
  end

  def send_message(recipient, message)
    @backend.send_message(recipient, message)
  end
end
