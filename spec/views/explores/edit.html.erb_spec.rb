require 'rails_helper'

RSpec.describe "explores/edit", type: :view do
  before(:each) do
    @explore = assign(:explore, Explore.create!(
      title: "MyString",
      description: "MyText",
      price: 1
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
