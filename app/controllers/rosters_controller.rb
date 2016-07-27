class RostersController < ApplicationController
   before_action :set_team, except: [:update_roster] 

   def show
    #  @roster = Roster.find(params[:id])
    @team = Team.find(params[:id])
    @my_roster = @team.rosters.find_by(user_id: current_user)
   end

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

  def update_roster
    @new_roster = Roster.find(params[:id])
    @team = @new_roster.team
    @old_roster = @team.rosters.where(is_owner: true).first
    @old_roster.update(is_owner: false)
    @new_roster.update(is_owner: true)
    if @new_roster.save && @old_roster.save
      redirect_to team_path(@team)
    end

  end

  def destroy
    @my_roster = @team.rosters.find_by(user_id: current_user)
    @my_roster.destroy
    # redirect_to teams_path
    redirect_to :back
  end

private
def roster_params
  params.require(:roster).permit(:team_id, :user_id, :is_owner)
end

def set_team
  @team = Team.find(params[:team_id])
end

  # def new
  #   Roster.new(user: current_user, team: , is_owner: false)
  # end

  # gather variables for user_id, team_id

  # make a new roster & assign it the values of the current_user & currently viewed team
  # redirect to team_path(..this..)

end
