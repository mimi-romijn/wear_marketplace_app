require 'rails_helper'

RSpec.describe "explores/edit", type: :view do
  before(:each) do
    new_user_id = User.new (
      name: "Jane Doe",
      email: "janedoe@email.com",
      password: "Password1"
    )

    user.save!

    @explore = assign(:explore, Explore.create!(
      title: "MyString",
      description: "MyText",
      price: 1,
      user: new_user_id
    ))
  end

  it "renders the edit explore form" do
    render

    assert_select "form[action=?][method=?]", explore_path(@explore), "post" do

      assert_select "input[name=?]", "explore[title]"

      assert_select "textarea[name=?]", "explore[description]"

      assert_select "input[name=?]", "explore[price]"
    end
  end
end
