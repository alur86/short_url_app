namespace :my_namespace do
  desc "it's deleted all expired records"
  task clear_expired: :environment do
  	Url.where('expired_at <=?', Time.now).destroy_all
  end

end
