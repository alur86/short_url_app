class Url < ApplicationRecord

belongs_to :user

validates :title, presence: true
validates :url, presence: true
validates :url, url: true

before_create :set_expired


def set_expired
self.expired_at = Time.now + 15.day
end



end
