class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :time_in_minutes, :instructions
  belongs_to :user
  has_many :favorites
  # has_many :list_ingredients
end
