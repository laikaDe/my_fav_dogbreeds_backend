require 'json'
require 'rest-client'
require 'open-uri'
require 'httparty'

url = "https://api.thedogapi.com/v1/breeds"


headers = {
    "x-api-key" => "DOGBREEDS_API_KEY"
}
response = HTTParty.get(url, :headers => headers)
json = JSON.parse(response.body)
dogbreeds = json


dogbreeds_list = 
dogbreeds.each do |dogbreed|
    Dogbreed.create!(
        bred_for: dogbreed["bred_for"], 
        breed_group: dogbreed["breed_group"],
        height: dogbreed["height"]["imperial"],
        weight: dogbreed["weight"]["imperial"],
        image_url: dogbreed["image"]["url"],
        life_span: dogbreed["life_span"],
        name: dogbreed["name"],
        origin: dogbreed["origin"],
        temperament: dogbreed["temperament"]
    )
end

puts dogbreeds_list
