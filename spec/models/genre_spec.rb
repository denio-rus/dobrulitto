require 'rails_helper'

RSpec.describe Genre, type: :model do
  it { should have_many(:watercolors) }
  
  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }
end