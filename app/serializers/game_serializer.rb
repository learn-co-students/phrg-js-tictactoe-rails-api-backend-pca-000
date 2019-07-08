class GameSerializer < ActiveModel::Serializer
  attributes :id, :state

  def self.serialize(game)
    serialized_game = '{'

    serialized_game += '"id": ' + game.id.to_s + ', '
    serialized_game += '"state": ' + game.state.to_s + ', '
    serialized_game += '}'
  end
end
