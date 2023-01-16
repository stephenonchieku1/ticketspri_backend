class SelectedseatsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /selectedseats
  def index
    selectedseats = Selectedseat.all
    render json: selectedseats
  end

  # GET /selectedseats/1
  def show
    selectedseat = find_selectedseat
    render json: selectedseat
  end

  def create
    selectedseat = SelectedSeat.create(selectedseat_params)
    render json: selectedseat, status: :created
  end

  # DELETE /selectedseats/1
  def destroy
    selectedseat = find_selectedseat
    selectedseat.destroy
    head :no_content
  end



  private
    def find_selectedseat
      Selectedseat.find(params[:id])
    end

    def selectedseat_params
      params.permit(:selectedseat_no, :status)
    end

    def render_not_found_response
        render json: {error: "selectedseat not found"}
    end
end

