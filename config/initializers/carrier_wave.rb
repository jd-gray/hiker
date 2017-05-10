require 'fog/aws'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV['aws_access_key_id'],                        # required
      aws_secret_access_key: ENV['cTIzV0UCly+o1rp3PKfUURjfe/27yOg0s7jGFUpf'],                        # required
  }
  config.fog_directory  = ENV['bucket']                          # required
end
