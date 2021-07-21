class ApplicationController < ActionController::Base
    
    before_action :authenticate_user!, :except => [:index]

    
    # before_action :set_listing, only: [:show, :edit, :update, :destroy]
end
