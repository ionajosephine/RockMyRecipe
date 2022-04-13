class ContributorsController < ApplicationController

  def index
    @contributors = Contributor.all
  end

  def show
    @contributor = Contributor.find(params[:id])
  end

  private

  def contributor_params
    params.require(:contributor).permit(:email, :profile_name, :id)
  end

end