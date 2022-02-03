class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        @project = current_user.profile.projects.create(experience_id: params[:id])
        flash[:success] = "Project added."
        redirect_to edit_url
    end
end
