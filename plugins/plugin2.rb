class Plugin2
  Backend.register_backend 'type2' do |url|
    self.new
  end
end
