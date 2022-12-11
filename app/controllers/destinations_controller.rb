class DestinationsController < ApplicationController
    # error handling
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /destinations
    def index 
        destinations = Destination.all 
        render json: destinations, status: :ok
    end

    # GET /destinations/:id
    def show
        destination = Destination.find(params[:id])
        render json: destination, status: :ok
    end

    # POST /destinations
    def create
        destination = Destination.create!(destination_params)
        render json: destination, status: :created
    end

    # PATCH /destinations/:id
    def update
        destination = Destination.find(params[:id])
        destination.update!(destination_params)
        render json: destination, status: :created
    end

    # DELETE /destinations/:id
    def destroy
        destination = Destination.find(params[:id])
        destination.destroy
        head :no_content
    end

    # private
    private 
    def destination_params
        params.permit(:destination, :meals, :activities, :price, :image_url)
    end

    def render_not_found_response
        render json: { error: "Destination not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
