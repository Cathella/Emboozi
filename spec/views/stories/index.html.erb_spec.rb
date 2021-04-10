require 'rails_helper'

RSpec.describe "stories/index", type: :view do
  before(:each) do
    assign(:stories, [
      Story.create!(
        user: nil
      ),
      Story.create!(
        user: nil
      )
    ])
  end

  it "renders a list of stories" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
