class Dependency < ApplicationRecord
  belongs_to :lib 
  belongs_to :recipe
end
