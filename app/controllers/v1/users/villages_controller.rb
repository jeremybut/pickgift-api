# frozen_string_literal: true

module V1
  module Users
    class VillagesController < ApplicationController
      def index
        render json: current_user.villages, include: ''
      end
    end
  end
end
