# encoding: utf-8
class Contact
  attr_reader :name, :id, :account

  def initialize(id, name, account)
    @id = id
    @name = name
    @account = account
  end
end
