class UserSerializer < ActiveModel::Serializer
  attributes :nickname, :email, :api_key
end
