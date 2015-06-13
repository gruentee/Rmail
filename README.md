### Rmail
unite all the protocols!
:eyes:


#### Starting

``` 
ruby rmail.rb 
```

#### Configuration
see example.conf

#### Plugin developement

Register new Plugins like this:


````ruby

class PluginX
  Backend.register_backend 'typex' do self.new end

  #Here be methods
  #
end

````
Plugins should be placed in the plugins directory and will be autoloaded.
Accounts will choose the right Plugin based on the configured type option.

