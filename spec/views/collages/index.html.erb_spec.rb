require 'spec_helper'

describe "collages/index" do
  before(:each) do
    assign(:collages, [
      stub_model(Collage,
        :title => "Title",
        :author => "Author"
      ),
      stub_model(Collage,
        :title => "Title",
        :author => "Author"
      )
    ])
  end

  it "renders a list of collages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
