class EmailPlugin
require 'pony'


  # Register the plugin when loaded to the type 'email'
  Backend.register_backend 'email' do self.new end

  def send_message(recipient, message, options)


Pony.mail({
  :to => recipient,
  :via => :smtp,
  :via_options => {
    :address              => options['address'],
    :port                 => options['port'],
    :enable_starttls_auto => options['enable_starttls_auto'],
    :user_name            => options['user'],
    :password             => options['pass'],
    :authentication       => options['authentication'],
    :domain               => options['domain']
  }
})


  end



  def contacts
    ['binaryplease@gmail.com','heinrich','juergen']
  end


end
