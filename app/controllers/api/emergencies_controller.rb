module Api
  class EmergenciesController < Api::BaseController

    private

      def emergencies_params
        params.require(:emergency).permit(:code, :fire_severity, :police_severity, :medical_severity, :resolved_at)
      end

      def query_params
        # this assumes that a responder belongs to an emergency and has an :emergency_id
        # allowing us to filter by this
        params.permit(:responder_id)
      end

  end
end
