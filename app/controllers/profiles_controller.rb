class ProfilesController < ApplicationController
	before_action :set_profile, only: [:show, :edit, :update, :destroy]


	def edit
		puts "fdfdfd"
	end	

  def update
    byebug
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path(@profile), notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end 	
  

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone,:avatar).permit(:city_ids)
  end

  def set_profile
  	@profile = Profile.find_by user_id: current_user.id
  end	


end
