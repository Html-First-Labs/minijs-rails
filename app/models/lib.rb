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

  def script_tag 
    return nil if self.cdn_script_url.blank?
    return "<script src=\"#{self.cdn_script_url}\"></script>"
  end

end
