CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider           => 'Rackspace',
    :rackspace_username => 'williamagrincon',
    :rackspace_api_key  => '620f1c8b9ad0cb5abe465fe149f4554d',
    :rackspace_region   => :dfw
  }

  if Rails.env.production?
  	config.fog_directory = 'eximius_blog'
  	config.asset_host = "https://ac7b8bb4ee47c099fe5f-0bab9a7e141841369cb9110dbe691c6b.ssl.cf1.rackcdn.com"
  else
  	config.fog_directory = 'eximius_blog_dev'
  	config.asset_host = "https://a9d082dc8efa7f56f797-a043614c2f2f1362d259a3a942a45a67.ssl.cf1.rackcdn.com"
  end
end