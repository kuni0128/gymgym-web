# frozen_string_literal: true

module V1
  module Trainees
    class RegistrationsController < DeviseTokenAuth::RegistrationsController

      private

      def sign_up_params
        params.permit(*params_for_resource(:sign_up))
      end
    end
  end
end
