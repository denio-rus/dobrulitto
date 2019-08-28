class UsedMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :sketch
end
