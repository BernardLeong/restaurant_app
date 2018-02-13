class Admin::RestaurantsController < ApplicationController
    before_action :authenticate_user!
    before_action :authenticate_admin
    before_action :set_restaurant, only: [:show, :edit]

    def update
        if @restaurant.update(restaurant_params)
            flash[:notice] = "Restaurant was successfully updated"
            redirect_to admin_restaurants_path(@restaurant)
        else
            flash.now[:alert] = "Restaurant has failed to update"
            render :edit
        end
    end

    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
            flash[:notice] = "Restaurant was successfully created"
            redirect_to admin_restaurants_path
        else
            flash.now[:alert] = "Restaurant was failed to create"
            render :new
        end
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end
    
    def edit

    end
        private
    
    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
        
    def restaurant_params
            params.require(:restaurant).permit(:name , :opening_hours , :tel , :address , :description)
    end
end