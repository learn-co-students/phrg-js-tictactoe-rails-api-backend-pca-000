class GameSerializer < ActiveModel::Serializer
  attributes :id, :state

  #this was created by running 'rails g serializer Game state' in our console
end
