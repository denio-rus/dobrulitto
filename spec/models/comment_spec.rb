require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should have_many(:answers) }
  it { should belong_to(:commentable) }  
  it { should belong_to(:user) }
  it { should belong_to(:branch).optional } 

  it { should validate_presence_of(:body) }
end
