class Url < ApplicationRecord
require "shorturl"

belongs_to :user

validates :title, presence: true
validates :url, presence: true
validates :url, url: true

before_create :set_expired

after_create :generate_short_url



def generate_short_url
 self.short_url = ShortURL.shorten(self.url)   
 self.save
end

def set_expired
self.expired_at = Time.now + 15.day
end



end
