class ContributorsController < ApplicationController

  def index
    @contributors = Contributor.all
  end

  def show
    @contributor = Contributor.find(params[:id])
  end

  # The following commented out text has been moved to the registrations_controller
  # def edit
  #   @contributor
  # end

  # def update
  #   if @contributor.update(contributor_params)
  #     flash[:notice] = "Profile updated successfully"
  #     redirect_to @contributor
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  private

  def contributor_params
    params.require(:contributor).permit(:email, :profile_name, :id, :twitter, :instagram, :tiktok, :bio, :facebook, :website, :pinterest)
  end

end
