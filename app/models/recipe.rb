class Recipe < ApplicationRecord

  belongs_to :parent_recipe, class_name: "Recipe", optional: true
  has_many :child_recipes, class_name: "Recipe", foreign_key: "parent_recipe_id"

  has_many :dependencies
  has_many :libs, :through => :dependencies

  has_many :list_recipes
  has_many :lists, :through => :list_recipes

  has_paper_trail

  accepts_nested_attributes_for :dependencies

  attr_accessor :lib_ids
  attr_accessor :list_ids

  after_save :create_dependencies_from_lib_ids_attribute 
  after_save :create_lists_from_list_ids_attribute 

  scope :no_parent, -> { where(parent_recipe_id: nil) }
  scope :published, -> { where(published:true) }

  def create_dependencies_from_lib_ids_attribute

    if self.lib_ids.present?
      self.lib_ids.each do |string|
        if string.present?
          record = self.dependencies.find_or_initialize_by(lib_id:string.to_i)
          record.save
        end
      end
    end

  end

  def create_lists_from_list_ids_attribute

    if self.list_ids.present?
      self.list_ids.each do |string|
        if string.present?
          record = self.list_recipes.find_or_initialize_by(list_id:string.to_i)
          record.save
        end
      end
    end

  end

  def title_dislay
    display_title.present? ? display_title : title
  end

  def has_grouped_recipes?
    self.child_recipes.any? || self.parent_recipe_id.present?
  end

end