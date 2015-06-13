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

````ruby

class PluginX
  Backend.register_backend 'typex' do |url|
    self.new
  end

  #Here be methods
  #
end

````


