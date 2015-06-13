class Account
  require_relative 'backend'
  attr_reader :id, :type, :user, :pass, :contacts

  def initialize(id, options)
    @id = id
    @options = options
    @type = options['type']
    @user = options['user']
    @backend = Backend.get_backend type
    @contacts = @backend.contacts
  end

  def send_message(recipient, message)
    @backend.send_message(recipient, message, @options)
  end
end
