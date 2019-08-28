require 'rails_helper'

RSpec.describe Watercolor, type: :model do
  it { should belong_to(:genre) } 
  
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
end