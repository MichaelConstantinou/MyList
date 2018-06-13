require 'rails_helper'

RSpec.describe DeviseController, type: :controller do

  before do
    @new_user = User.create!(email: 'newuser@user.com', name: 'Jo Doe', password: 'password2018')
    sign_in(@new_user)
  end

  describe '#delete' do

    it 'should route user to jumbotron on log out' do
      sign_out :user
      expect(subject.current_user).to eq nil
    end

  end

end