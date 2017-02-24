class User < ApplicationRecord

  has_many :posts, foreign_key: :author_id

  has_many :comments, foreign_key: :author_id

  validates_presence_of :nickname, :email, :password

  before_create do |user|
    user.api_key = user.generate_api_key
  end

  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless User.exists?(api_key: token)
    end
  end
end
