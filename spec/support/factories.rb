FactoryGirl.define do
  factory :user do
    username "john"
    fullname "John Doe"
    sequence(:email) {|i| "john#{i}@example.org"}
    encrypted_password "test"
  end

  preload do
    factory(:john) do
      FactoryGirl.create(:user)
    end
  end
end
