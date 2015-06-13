class ConsoleLoggerPlugin


  Backend.register_backend 'console' do |url|
    self.new
  end

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
