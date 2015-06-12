class Account
  attr_reader :id, :type, :user, :pass, :contacts

  def initialize(id, type, user, pass)
    @id = id
    @user = user
    @pass = pass
    @type = type
    @contacts = ["c_#{rand(1000)}", "c_#{rand(1000)}","c_#{rand(1000)}","c_#{rand(1000)}"]
  end
end
