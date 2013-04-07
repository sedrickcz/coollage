require 'spec_helper'

describe "collages/new" do
  before(:each) do
    assign(:collage, stub_model(Collage,
      :title => "MyString",
      :author => "MyString"
    ).as_new_record)
  end
end
