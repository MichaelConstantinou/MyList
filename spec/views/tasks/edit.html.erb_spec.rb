# require 'rails_helper'

# RSpec.describe "tasks/edit", type: :view do
#   before(:each) do
#     @task = assign(:task, Task.create!(
#       :user => nil,
#       :description => "MyString",
#       :completed => false
#     ))
#   end

#   it "renders the edit task form" do
#     render

#     assert_select "form[action=?][method=?]", task_path(@task), "post" do

#       assert_select "input[name=?]", "task[user_id]"

#       assert_select "input[name=?]", "task[description]"

#       assert_select "input[name=?]", "task[completed]"
#     end
#   end
# end
