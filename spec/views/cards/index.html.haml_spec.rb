require 'spec_helper'

describe "cards/index" do
  before(:each) do
    assign(:cards, [
      stub_model(Card,
        :color => "Color",
        :family => "Family",
        :number => 1
      ),
      stub_model(Card,
        :color => "Color",
        :family => "Family",
        :number => 1
      )
    ])
  end

  it "renders a list of cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Family".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
