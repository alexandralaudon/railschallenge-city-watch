class EmergenciesController < ActionController::Base

  def create
    @emergency = Emergency.new
    if @emergency.save
      flash[:notice]
      redirect_to emergencies_path
    else
      flash[:message] = "umm.. this is awkward.  You suck."
      # this is a placeholder in case the message does not get sent through the model... ?
      render :new
    end
  end



end
