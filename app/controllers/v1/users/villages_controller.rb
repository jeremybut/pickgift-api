# frozen_string_literal: true

module V1
  class VillagesController < ApplicationController
    def index
      render json: current_user.villages
    end
  end
end
