OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '853811551325693', '6f05398a5f1e0d9faec6d88ba92dbdbc', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end