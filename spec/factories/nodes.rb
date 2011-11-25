# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :node do
		letter			"a"
		child			nil
		sibling		nil
  end
end
