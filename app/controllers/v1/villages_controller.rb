# frozen_string_literal: true

module V1
  class VillagesController < ApplicationController
    def show
      village = current_user.villages.find(params[:id])
      render json: village
    end

    def create
      village = Village.new(village_params.except(:emails))
      if village.save
        UserVillage.create(user: current_user, admin: true, village: village)
        village.invite!(village_params[:emails], current_user)
        render json: village
      else
        errors_json(village.errors.full_messages, 422)
      end
    end

    private

    def village_params
      params.require(:village).permit(
        :display_name, :max_inscription_date, :event_date,
        emails: %i[]
      )
    end
  end
end
