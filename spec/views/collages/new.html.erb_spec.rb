require 'spec_helper'

describe "collages/new" do
  before(:each) do
    assign(:collage, stub_model(Collage,
      :title => "MyString",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new collage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", collages_path, "post" do
      assert_select "input#collage_title[name=?]", "collage[title]"
      assert_select "input#collage_author[name=?]", "collage[author]"
    end
  end
end
