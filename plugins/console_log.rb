class ConsoleLoggerPlugin

  # Simple example plugin that logs to the console instead of sending anywhere


  # Register the plugin when loaded to the type 'console'
  Backend.register_backend 'console' do self.new end

  def say_name
    puts "ich bin plugin1"
  end

  def send_message(recipient, message)
    puts "---------------------"
    puts "Mitteilung an #{recipient.name}: #{message}"
    puts "---------------------"
  end

  def protocols_supported
    ['console']    
  end

  def contacts
    ['peter','heinrich','juergen']
  end


end
