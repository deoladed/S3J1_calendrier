require_relative '../lib/user'

describe User do

  before(:each) do
    Object.send(:remove_const, 'User')
    load 'user.rb'
  end

  describe 'initializer' do
    it 'creates an user' do
			# créé un utilisateur
      user = User.new("email@email.com")

      # petit test si l'utilisateur est bien créé
      expect(user.class).to eq(User)
    end
    it 'saves @email as instance variable' do
      email = "email@email.com"
      user = User.new(email)
      expect(user.email).to eq(email)
    end

    # it 'adds one to the @@all_users global variable' do
    #   user = User.new("email@email.com")
    #   expect(@@all_users).is_a?(Array)
    #   expect(@@all_users).not_to be_nil
    #   expect(@@all_users).not_to be_zero
    # end
  end

  describe 'instance methods' do
    describe 'all' do
      it "return all users" do
        user = User.new("email@email.com")
        expect(User.all).to eq([user])
      end
    end
  end

  describe 'instance variables' do

    describe '@email' do

      it 'can be read' do 
        email = "email@email.com"
        user = User.new(email)
        expect(user.email).to eq(email)
      end

      it 'can be written' do 
        email = "email@email.com"
        user = User.new(email)
        email_2 = "email_2@email.com"
        user.email = email_2
        expect(user.email).not_to eq(email)
        expect(user.email).to eq(email_2)
      end
    end
  end
end