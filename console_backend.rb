# encoding: utf-8
# Stub backend for testing, only logs to console instead of sending.
#
require_relative 'backend_plugin'

class ConsoleloggerBackend < BackendPlugin
  def initialize(*args)
    
  end

  def send_message(recipient, message)
    puts "---------------------"
    puts "Mitteilung an #{recipient.name}: #{message}"
    puts "---------------------"
  end

  def contacts

    return ['peter','heinrich','juergen']
  end
end
