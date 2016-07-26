class RostersController < ApplicationController

  def create
    @roster = Roster.new(roster_params)
    @roster.user = current_user
    if @roster.save
      @team = @roster.team
      redirect_to team_path(@team)
    else
      redirect_to root_path
    end
  #   @team = Team.new(team_params)
  #
  #   if @team.update_attributes(team_params)
  #     Roster.create(team_id: @team.id, user_id: current_user.id, is_owner: true)
  #     redirect_to user_path(current_user)
  #   else
  #     render :edit
  #   end
  end

private
def roster_params
  params.require(:roster).permit(:team_id, :user_id, :is_owner)
end

  # def new
  #   Roster.new(user: current_user, team: , is_owner: false)
  # end

  # gather variables for user_id, team_id

  # make a new roster & assign it the values of the current_user & currently viewed team
  # redirect to team_path(..this..)

end
