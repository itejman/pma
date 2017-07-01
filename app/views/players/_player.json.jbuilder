json.extract! player, :id, :name, :surname, :age, :position, :growth, :created_at, :updated_at
json.url player_url(player, format: :json)
