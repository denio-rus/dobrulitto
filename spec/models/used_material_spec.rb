require 'rails_helper'

RSpec.describe UsedMaterial, type: :model do
  it { should belong_to(:sketch) }
  it { should belong_to(:material) }
end
