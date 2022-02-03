class ExperiencesController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        experience = current_user.profile.experiences.create
        current_user.profile.projects.create(experience_id: experience.id)
        flash[:success] = "Experience added."
        redirect_to edit_url
    end
end
