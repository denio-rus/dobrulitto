require 'rails_helper'

RSpec.describe Sketch, type: :model do
  it { should belong_to(:album) }
  it { should have_many(:used_materials).dependent(:destroy) }
  it { should have_many(:materials).through(:used_materials) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
end
