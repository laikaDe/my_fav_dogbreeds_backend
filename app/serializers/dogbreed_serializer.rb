class DogbreedSerializer < ActiveModel::Serializer
  attributes :id, :bred_for, :breed_group, :height, :weight, :image_url, :life_span, :name, :origin, :temperament
end