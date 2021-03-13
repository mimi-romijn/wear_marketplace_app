require 'rails_helper'

RSpec.describe "explores/index", type: :view do
  before(:each) do
    assign(:explores, [
      Explore.create!(
        title: "Title",
        description: "MyText",
        price: 2
      ),
      Explore.create!(
        title: "Title",
        description: "MyText",
        price: 2
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
