class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  def author_nickname
    author.nickname
  end

  before_create do |post|
    post.published_at = Date.today if post.published_at == nil
  end


end
