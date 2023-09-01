require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has a valid factory' do
    expect(create(:category)).to be_valid
  end

  it {is_expected.to(validate_presence_of(:name))}
  # it {is_expected.to(validate_uniqueness_of(:name))}
  it {is_expected.to(validate_presence_of(:image))}
end