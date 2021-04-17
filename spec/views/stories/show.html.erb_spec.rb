require 'rails_helper'

RSpec.describe "stories/show", type: :view do
  before(:each) do
    @story = assign(:story, Story.create!(
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
