class RespondersController < ApplicationController

  private

    def responder_params
      params.require(:responder).permit(:type, :name, :capacity, :on_duty, :emergency_id)
    end

    def query_params
      params.permit(:type, :name, :capacity, :on_duty, :emergency_id)
    end

end
