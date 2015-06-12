# encoding: utf-8

require_relative 'account'
require_relative 'console_backend'
require_relative 'contact'

class Rmail
  def initialize()

    @accounts = []
    @contacts = []
    load_accounts 
    load_contacts

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
    @contacts.each {|c| puts "#{c.id} #{c.name} (#{c.account.id})" }
    recipient = gets.chomp!
    puts "enter message:"
    message = gets.chomp!

    @contacts[recipient.to_i].account.send_message(@contacts[recipient.to_i], message)


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

  def load_contacts
    @contacts = []
    id = 0
    @accounts.each do |a|
      a.contacts.each do |c| @contacts << Contact.new(id, c, a) 
      id +=1
      end
    end
  end

end


mailer = Rmail.new
mailer.run
