module Api
  class RespondersController < Api::BaseController

    private

      def responder_params
        params.require(:responder).permit(:type, :name, :capacity, :on_duty)
      end

      def query_params
        params.permit(:type, :name, :capacity, :on_duty)
      end

  end
end
