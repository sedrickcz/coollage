require 'spec_helper'

# describe Image do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
describe Image do
  it "should not be valid without image" do 
    image = FactoryGirl.build(:image_wo_image)
    image.should_not be_valid
  end
end