if Rails.env.production?
  CarrierWave.configure do |cfg|
    cfg.fog_provider = 'fig/aws'
    cfg.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['S3_ACCESS_KEY'],
      aws_secret_access_key: ENV['S3_SECRET_KEY'],
      region: 'sa-east-1'
    }
    cfg.fog_directory = ENV['S3_BUCKET']
    cfg.fog_public = false
    cfg.storage = :fog
  end
end