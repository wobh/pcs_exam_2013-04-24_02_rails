require 'spec_helper'

describe "cards/new" do
  before(:each) do
    assign(:card, stub_model(Card,
      :color => "MyString",
      :family => "MyString",
      :number => 1
    ).as_new_record)
  end

  it "renders new card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cards_path, "post" do
      assert_select "input#card_color[name=?]", "card[color]"
      assert_select "input#card_family[name=?]", "card[family]"
      assert_select "input#card_number[name=?]", "card[number]"
    end
  end
end
