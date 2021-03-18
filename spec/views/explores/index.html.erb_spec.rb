require 'rails_helper'

RSpec.describe "explores/index", type: :view do
  before(:each) do
    new_user_id = User.new (
      name: "Jane Doe",
      email: "janedoe@email.com",
      password: "Password1"
    )

    new_user_id.save!

    assign(:explores, [
      Explore.create!(
        title: "Title",
        description: "MyText",
        price: 2,
        user: new_user_id
      ),
      Explore.create!(
        title: "Title",
        description: "MyText",
        price: 2,
        user: new_user_id
      )
    ])
  end

  it "renders a list of explores" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
