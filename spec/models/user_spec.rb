require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:first_name).when("Byron", "Peter") }
  it { should_not have_valid(:first_name).when(nil, "") }

  it { should have_valid(:last_name).when("Chen", "Boshco") }
  it { should_not have_valid(:last_name).when(nil, "") }

  it { should have_valid(:email).when("example@gmail.com", "pboshco@comcast.net") }
  it { should_not have_valid(:email).when("exam", "ex@", "e@gma","e.com", nil) }
end
