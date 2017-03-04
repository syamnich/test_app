describe User, type: :model do
  let!(:user) { build(:user) }

  it { expect(user).to respond_to(:email) }
  it { expect(user).to respond_to(:password) }
#   it { expect(user).to respond_to(:password_confirmation) }
#   it { expect(user).to be_valid }

#   context 'validations' do
#     it { is_expected.to validate_presence_of(:email) }
#   end

#   describe 'password encryption' do
#     before { user.save }

#     it { expect(user).to respond_to(:encrypted_password) }
#     it { expect(user).to respond_to(:remember_token) }
#     it { expect(user).to respond_to(:authenticate) }

#     it 'should set the encrypted password' do
#       expect(user.encrypted_password).not_to be_blank
#     end

#     describe 'password? method' do
#       it 'should be true if the passwords match' do
#         expect(user.password?(user.password)).to be_truthy
#       end

#       it "should be false if the passwords don't match" do
#         expect(user.password?('invalid')).to be_falsey
#       end
#     end

#     describe 'return value of authenticate method' do
#       before { user.save }
#       let(:found_user) { User.find_by(email: user.email) }

#       describe 'with valid password' do
#         it { expect(user).to eq found_user.authenticate(user.password) }
#       end

#       describe 'with invalid password' do
#         let(:user_for_invalid_password) { found_user.authenticate('invalid') }

#         it { expect(user).not_to eq user_for_invalid_password }
#         it { expect(user_for_invalid_password).to be false }
#       end
#     end
#   end

#   describe 'when email is not present' do
#     before { user.email = '' }
#     it { expect(user).not_to be_valid }
#   end

#   describe 'have email format is invalid' do
#     it 'should be invalid' do
#       emails = %w(user@foo,com user_at_foo.org example.user@foo.
#                   foo@bar_baz.com foo@bar+baz.com)
#       emails.each do |invalid_emails|
#         user.email = invalid_emails
#         expect(user).not_to be_valid
#       end
#     end
#   end

#   describe 'when email format is valid' do
#     it 'should be valid' do
#       emails = %w(user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn)
#       emails.each do |valid_emails|
#         user.email = valid_emails
#         expect(user).to be_valid
#       end
#     end
#   end

#   describe 'when email address is already taken' do
#     before do
#       user_with_same_email = user.dup
#       user_with_same_email.email = user.email.upcase
#       user_with_same_email.save
#     end

#     it { expect(user).not_to be_valid }
#   end

#   describe 'email address with mixed case' do
#     let(:mixed_case_email) { 'Foo@ExAMPle.CoM' }

#     it 'should be saved as all lower-case' do
#       user.email = mixed_case_email
#       user.save
#       expect(user.reload.email).to eq mixed_case_email.downcase
#     end
#   end

#   describe 'when password is not present' do
#     before { user.update_attributes(password: '', password_confirmation: '') }
#     it { expect(user).not_to be_valid }
#   end

#   describe "when password doesn't match confirmation" do
#     before { user.password_confirmation = 'mismatch' }
#     it { expect(user).not_to be_valid }
#   end

#   describe "with a password that's too short" do
#     before { user.password = user.password_confirmation = 'a' * 3 }
#     it { expect(user).to be_valid }
#   end

#   describe 'remember token' do
#     before { user.save }
#     it { expect(user.remember_token).not_to be_blank }
#   end
# end
