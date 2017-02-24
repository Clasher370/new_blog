require 'rails_helper'

describe Comment do

    it "has a valid factory" do
      user = create(:user)
      expect(build(:comment, author: user)).to be_valid
    end
end
