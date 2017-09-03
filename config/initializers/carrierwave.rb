CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1'
  }
  config.storage = :fog

  case Rails.env
    when 'production'
      config.fog_directory = 'teamlab-ecapp'
      config.asset_host =  'https://s3-ap-northeast-1.amazonaws.com/teamlab-ecapp'

    when 'development'
      config.fog_directory = 'teamlab-ecapp'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/teamlab-ecapp'

    when 'test'
      config.fog_directory = 'test.dummy'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.dummy'
  end
end
