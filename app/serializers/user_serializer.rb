class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone_number, :image, :email, :password, :password_confirmation
end
