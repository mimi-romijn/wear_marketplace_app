require 'rails_helper'

RSpec.describe Explore, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
    it "requires a title" do
      new_user_id = User.new (
        name: "Jane Doe",
        email: "janedoe@email.com",
        password: "Password1"
      )
      
      explore = explore.new(
        description: "haute couture",
        price: 20000,
        user: new_user_id
      )
    end
end
