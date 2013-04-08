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


end
