class ToggleController < ApplicationController

  def toggle_tasks
    @tasks = Task.all.where(completed: true)
    redirect_to tasks_path, notice: "Tasks were successfully toggled"
  end

end
