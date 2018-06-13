require 'rails_helper'


RSpec.describe TasksController, type: :controller do


  before do
    @new_user = User.create!(email: 'newuser@user.com', name: 'Jo Doe', password: 'password2018')
    sign_in(@new_user)
    Task.create!(user_id: 1, description: 'Make bed')
    Task.create!(user_id: 1, description: 'Make cake', completed: true)
  end

  describe '#index' do

    it 'should route new user to welcome page on registration' do
      get :index
      expect(response).to render_template('tasks/index')
    end

    it 'should display completed tasks only when this link is clicked' do
      get :index, params: {status: true}
      expect(response.body).to eq "Make cake"
    end
  end

  describe '#create' do

    it 'should create a new task' do
      post :create, params: {task: {description: 'Do some cucumber'}}
      expect(@new_user.tasks.last.description).to eq 'Do some cucumber'
    end
  end

  describe '#destroy' do

    it 'should delete the chosen task' do
       delete :destroy, params: {id: 1}
       expect(Task.count).to eq 1
    end
  end

  describe '#update' do

    it "an updated uncompleted task should change to completed" do
      @new_user.tasks.first.update_attribute(:completed, true)
      expect(@new_user.tasks.first.completed).to eq true
    end
  end




end
