require "spec_helper"

describe PasswordEncryptor do
  describe "#encrypt" do
    it "returns password hash" do
      PasswordEncryptor.encrypt("marmota").should have_key(:hash)
    end

    it "encrypts password" do
      encryption = PasswordEncryptor.encrypt("marmota")
      actual_hash = PasswordEncryptor.verify(encryption[:hash])

      actual_hash.should eql(encryption[:hash])
    end
  end

  describe "#encryptor" do
    it "delegates to BCrypt::Password" do
      PasswordEncryptor.encryptor.should be(BCrypt::Password)
    end
  end
end
