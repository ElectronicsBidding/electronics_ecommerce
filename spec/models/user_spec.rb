require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(create(:user)).to be_valid
  end

  it {is_expected.to(validate_presence_of(:full_name))}
  it {is_expected.to(validate_presence_of(:phone_number))}
  it {is_expected.to(validate_presence_of(:email))}
  # it {is_expected.to(validate_uniqueness_of(:email))}
  it {is_expected.to(validate_presence_of(:password_digest))}
  it {is_expected.to(validate_length_of(:password_digest).is_at_least(8))}
end
