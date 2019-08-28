require 'rails_helper'

RSpec.describe Album, type: :model do
  it { should have_many(:sketches).dependent(:destroy) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:began_at) }
  it { should validate_presence_of(:ended_at) }
end