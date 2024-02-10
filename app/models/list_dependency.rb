class ListDependency < ApplicationRecord
  belongs_to :list 
  belongs_to :lib
end
