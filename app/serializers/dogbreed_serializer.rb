class DogbreedSerializer < ActiveModel::Serializer
  attributes :id, :bred_for, :breed_group, :height, :weight, :image_url, :life_span, :name, :origin, :temperament
end

# def post_data
#   post = new Hash
#   object.posts.map{|post|
#   post[:id] = post.id
#   post[:comments] = post.comments
#   post[:content] = post.content
# end