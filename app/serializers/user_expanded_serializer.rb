class UserExpandedSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :token 
end
