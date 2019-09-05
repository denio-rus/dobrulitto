require 'rails_helper'

RSpec.describe Discipline, type: :model do
  it { should have_many(:courses).dependent(:nullify) }
  
  it { should validate_presence_of(:title) }
end
