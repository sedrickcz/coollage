require 'spec_helper'

describe "collages/edit" do
  before(:each) do
    @collage = assign(:collage, stub_model(Collage,
      :title => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit collage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", collage_path(@collage), "post" do
      assert_select "input#collage_title[name=?]", "collage[title]"
      assert_select "input#collage_author[name=?]", "collage[author]"
    end
  end
end
