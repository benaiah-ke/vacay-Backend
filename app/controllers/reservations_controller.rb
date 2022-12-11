class ReservationsController < ApplicationController
    # Error Handling
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    
    # GET /reservations
    def index
        reservations = Reservation.all 
        render json: reservations, status: :ok
    end

    # POST /reservations 
    def create 
       reservation = Reservation.create!(reservation_params)
        render json: reservation, status: :created
    end

    # DELETE /reservations/:id
    def destroy
       reservation = Reservation.find(params[:id])
       reservation.destroy
       head :no_content
    end

    # Private methods 
    private 
    def reservation_params
       params.permit(:adults, :kids, :start_date, :end_date, :user_id, :destination_id )
    end

    def render_not_found_response 
        render json: {error: "Reservation not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
