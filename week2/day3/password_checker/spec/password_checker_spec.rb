require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
	describe "#check_password" do

		it "returns true for valid passwords" do
			checker = PasswordChecker.new
			expect(checker.check_password("nizar@example.com","aB76*%acz")).to eq(true)
			expect(checker.check_password("nizar@example.com","uP8&$O20")).to eq(true)
		end

		it "returns false for passwords shorter than 8 characters" do
			#examples: "aB7*"  "uP8&$"
		end

		it "return false for passwords without letters" do

		end

		it "returns false for passwords without numbers" do

		end

		it "return fasle for passwords without symbols" do

		end

		it "returns false for passwords without uppercase letters" do

		end

		it "returns false for passwors without lowercase letters" do

		end
			
		#Bonusi

		it "returns false for passwords with the domain" do

		end

	end
end









# "nizar@example.com"
# "aB76*%acz#"