require 'rails_helper'

RSpec.describe Material, type: :model do
  it { should have_many(:specifications).dependent(:destroy) }
  it { should have_many(:sketches).through(:specifications) }
  it { should have_many(:watercolors).through(:specifications) }

  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }
end
