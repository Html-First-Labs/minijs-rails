class Lib < ApplicationRecord

  has_many :dependencies
  has_many :recipes, through: :dependencies

  has_many :list_dependencies
  has_many :lists, through: :list_dependencies

  BUNDLERS = {
    :none => {
      :name => "None",
      :identifier => "none"
    },
    :npm => {
      :name => "NPM",
      :identifier => "npm"
    }
  }

end
