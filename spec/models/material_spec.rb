require 'rails_helper'

RSpec.describe Material, type: :model do
  it { should have_many(:used_materials).dependent(:destroy) }
  it { should have_many(:sketches).through(:used_materials) }

  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }
end
