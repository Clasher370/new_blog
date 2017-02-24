require 'rails_helper'

describe Post do

  it "has a valid factory" do
    user = create(:user)
    expect(build(:post, author: user)).to be_valid
  end
end