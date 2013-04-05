CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIP4U3UBMUK5EFYIA',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory = 'avbl'
end
