class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    # how do i find the params for members(users)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.update_attributes(team_params)
      redirect_to teams_path
    else
      render :edit
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update

    @team = Team.find(params[:id])

  if @team.update_attributes(team_params)
    redirect_to team_path
  else
    render :edit
  end #if block

  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

  private

  def team_params
    params.require(:team).permit(:name, :tag, :mission, :image)
  end
end
