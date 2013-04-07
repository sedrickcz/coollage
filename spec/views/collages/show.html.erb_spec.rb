require 'spec_helper'

describe "collages/show" do
  before(:each) do
    @collage = assign(:collage, stub_model(Collage,
      :title => "Title",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
  end
end
