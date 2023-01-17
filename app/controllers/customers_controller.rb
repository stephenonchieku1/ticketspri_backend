class CustomersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        customer=Customer.all
        render json: customer, status: :ok
    end        
    
    def show
        customer = Customer.find_by(id: params[:id])
        if customer             
        render json: customer, status: :created
        else
        render json: {error: "Not authorized"}, status: :unauthorized
        end   
    end   
    
    def create 
        customer= Customer.create(customer_params) 
    if customer.valid?          
        session[:customer_id] = customer.id
        render json: customer, status: :created 
    else  
        render json: {errors: customer.errors.full_messages}, status: :unprocessable_entity
    end
end

def update
        customer = find_customer
        customer.update!(customer_params)
        render json:customer,status: :ok        
      end
  end

  def destroy
        customer = find_customer
        customer.destroy
        head :no_content
      end

  

    private 
    
    def customer_params
    params.permit(:name, :email, :password, :ID_no, :phone_no)
    end

    def find_customer
      Customer.find(params[:id])
    end

    def render_not_found_response
       render json: {error:"Customer not found!"}, status: :not_found
    end 

