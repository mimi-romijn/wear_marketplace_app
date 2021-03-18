require 'rails_helper'

RSpec.describe "explores/show", type: :view do
  before(:each) do
    new_user_id = User.new(
      name: "Jane Doe",
      email: "janedoe@email.com",
      password: "Password1"
    )

    new_user_id.save!

    @explore = assign(:explore, Explore.create!(
      title: "Title",
      description: "MyText",
      price: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end

  # it "renders an image tag"
  #  if @explore.photo.attached?
end
