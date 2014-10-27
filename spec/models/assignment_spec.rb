require "spec_helper"

describe User do
  describe "assignment" do
    it "doesn't throw exception" do
      expect {
        User.create!({
          :username => "john",
          :fullname => "John Doe",
          :email => "john@example.org",
          :encrypted_password => "marmota"
        })
      }.to_not raise_error
    end
  end
end
