class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :status

  def status
    200
  end
end
