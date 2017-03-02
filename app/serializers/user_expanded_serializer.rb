class UserExpandedSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :token 
end
