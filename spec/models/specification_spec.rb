require 'rails_helper'

RSpec.describe Specification, type: :model do
  it { should belong_to(:specificable) } 
end
