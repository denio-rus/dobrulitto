class Specification < ApplicationRecord
  belongs_to :material
  belongs_to :specificable, polymorphic: true
end
