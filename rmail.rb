# encoding: utf-8

require_relative 'account'
require_relative 'console_backend'
require_relative 'contact'
require 'parseconfig'

class Rmail
  def initialize()
    @config = ParseConfig.new('example.conf')

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
          )


    case gets.chomp!
    when '1'
      compose_message
    when '2'
      display_accounts
    else
      puts "Specify a correct number"

    end

  end

  def compose_message
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


    i =0 
    @config.get_groups.each do |a|
      @accounts << Account.new(i, @config[a]['type'], @config[a]['user'], @config[a]['pass'])
      i+=1
    end
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
