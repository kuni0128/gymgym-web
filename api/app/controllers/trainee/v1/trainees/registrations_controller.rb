# frozen_string_literal: true

module V1
  module Trainees
    class RegistrationsController < DeviseTokenAuth::RegistrationsController
      wrap_parameters format: []

      private

      def sign_up_params
        params.permit(*params_for_resource(:sign_up), :confirm_success_url)
      end
    end
  end
end
