module Mixer
  class ChatUser < BaseModel
    attribute :user_id,    Integer
    attribute :user_name,  String
    attribute :user_roles, Array[Role]
    attribute :user,       User
  end
end
