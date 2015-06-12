# encoding: utf-8

require_relative 'account'
class Rmail
  def initialize()

    @accounts = []
    @contacts = []
    load_accounts 

  end

  def run
    choose_action
  end

  private 

  def choose_action
    puts %(What do you want to do?
           1. Send message
           2. Display Accounts
           3. Something else TODO
           4. quit
          )


    case gets.chomp!
    when '1'
      compose_message
    when '2'
      display_accounts
    when '3'
      puts "hello world"
    when '4'
      puts "bye..."
    else
      puts "Specify a correct number"
    
    end
    
  end

  def compose_message
    display_accounts
    puts "choose contact:" 
    @contacts.each {|c| puts "#{c.id} #{c.name} (#{c.account})" }
    recipient = gets.chomp!
    puts "enter message:"
    message = gets.chomp!

   send_message(recipient, message) 

    
  end

  def send_message(recipient, message)
    #TODO
    
    
  end

  def display_accounts
    puts "Your accounts:"
    @accounts.each { |a| puts "#{a.id}. #{a.user}" } 
  end

  def load_accounts
    #TODO stub until we have accounts
    10.times do |i|
      @accounts << Account.new(i, 'console', "user_#{i}", "secret")
    end 

    #TODO load contacts
  end
end


mailer = Rmail.new
mailer.run
