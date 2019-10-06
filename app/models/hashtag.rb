class Hashtag < ActiveRecord::Base
<<<<<<< HEAD
  validates_presence_of :name
  has_many :faq_hashtags
  has_many :faqs, through: :faq_hashtags
end
=======
  validates_presence_of :name       
  has_many :faq_hashtags
  has_many :faqs, through: :faq_hashtags
end
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
