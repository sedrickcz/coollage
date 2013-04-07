require 'spec_helper'

describe Collage do
  it "should not be valid without title" do 
    collage = FactoryGirl.build(:collage_wo_title)
    collage.should_not be_valid
  end
end
