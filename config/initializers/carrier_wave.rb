if Rails.env.production?
  CarrierWave.configure do |cfg|
    cfg.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['S3_ACCESS_KEY'],
      aws_secret_access_key: ENV['S3_SECRET_KEY']
    }
    cfg.fog_directory = ENV['S3_BUCKET']
  end
end