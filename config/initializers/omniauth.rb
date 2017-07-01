Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, '205094976680491', 'ed77df9892ce0843a105849505bcb7ef', {scope: 'email', info_fields: 'email, name'}
  provider :facebook, '205094976680491', 'ed77df9892ce0843a105849505bcb7ef', {:scope => 'email', :info_fields => 'email,name', :client_options => { :ssl => { :ca_file => "#{Rails.root}/config/ca-bundle.crt" }}}
end