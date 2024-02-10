class List < ApplicationRecord

  has_many :list_recipes
  has_many :recipes, through: :list_recipes

  accepts_nested_attributes_for :list_recipes

end
