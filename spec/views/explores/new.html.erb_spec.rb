require 'rails_helper'

RSpec.describe "explores/new", type: :view do
  before(:each) do
    assign(:explore, Explore.new(
      title: "MyString",
      description: "MyText",
      price: 1
    ))
  end

  it "renders new explore form" do
    render

    assert_select "form[action=?][method=?]", explores_path, "post" do

      assert_select "input[name=?]", "explore[title]"

      assert_select "textarea[name=?]", "explore[description]"

      assert_select "input[name=?]", "explore[price]"
    end
  end
end
