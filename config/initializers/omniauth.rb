OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '715856685151795', 'dfefd8f0896614679f075d3edce581ac'
end