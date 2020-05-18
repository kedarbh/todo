# frozen_string_literal: true

class DashboardsController < ApplicationController
  def show
    @tasks = current_user.tasks
    @task = Task.new
    @projects = current_user.projects
    @project = Project.new
  end
end
