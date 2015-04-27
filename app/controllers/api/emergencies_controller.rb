module Api
  class EmergenciesController < Api::BaseController

    def create
      emergency_params = params.require(:emergency).permit(:code, :fire_severity, :police_severity, :medical_severity, :resolved_at)
      @emergency = Emergency.create!(emergency_params)
      render json: @emergency, status: :created
      # ex status: unprocessable_entity => 422
    end
    private

      def emergencies_params
        params.require(:emergency).permit(:code, :fire_severity, :police_severity, :medical_severity, :resolved_at)
      end

      def query_params
        # this assumes that a responder belongs to an emergency and has an :emergency_id
        # allowing us to filter by this
        params.permit(:code, :fire_severity, :police_severity, :medical_severity, :resolved_at)
      end

  end
end
