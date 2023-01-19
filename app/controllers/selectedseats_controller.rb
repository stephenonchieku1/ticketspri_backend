class SelectedseatsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # GET /selectedseats
    def index
      selectedseats=Selectedseat.distinct.pluck(:seat_no)
      render json: selectedseats, status: :ok
    end
  
    # GET /selectedseats/1
    def show
      selectedseat = find_selectedseat
      render json: selectedseat
    end
  
    def create
      selectedseat = Selectedseat.create(selectedseat_params)
      render json: selectedseat, status: :created
    end
  
    # DELETE /selectedseats/1
    def destroy
      selectedseat = find_selectedseat
      selectedseat.destroy
      head :no_content
    end

    def destroy_all
      if Selectedseat.any?
        Selectedseat.delete_all
        render json: {message: "All selected seats have been deleted."}
      else
        render json: {error: "No selected seats found"}
      end
    end
  
  
  
    private
      def find_selectedseat
        Selectedseat.find_by(:seat_no params[:id])
      end
  
      def selectedseat_params
        params.permit(:seat_no, :status)
      end
  
      def render_not_found_response
          render json: {error: "selectedseat not found"}
      end
end
