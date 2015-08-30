%w( comments pages styles stylists users sites ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js.coffee", "#{controller}.css"]
  Rails.application.config.assets.precompile += %w( sites.js )
end