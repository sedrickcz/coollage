# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image_wo_image, class: Image do
    image nil
  end
end
