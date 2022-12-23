class RentalsController < ApplicationController

 # ===============CALLBACKS====================
 before_action :find_rental, only: [:edit, :update, :show, :destroy]


# ===============CREATE========================
def new
  
    @rental = Rental.new
end


# =====READ============
def index
    
    @rentals = Rental.order(created_at: :desc)
    
end

def show
end



private

def find_rental
    @rental = Rental.find params[:id]
end


end
