class IngratitudesController < ApplicationController
    before_action :set_ingratitude
    skip_before_action :set_ingratitude, only: [:new, :create]
    
    def index
    end

    def new
        @ingratitude = current_user.ingratitudes.build
        3.times {@ingratitude.children.build}
    end

    def create
        ingratitude = Ingratitude.create(ingratitude_params)
        redirect_to ingratitude_path
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def ingratitude_params
        params.require(:ingratitude).permit(:notes, :parent_id, :post_id, children_attributes: [:name, :age, :gender])
    end

    def set_ingratitude
        @ingratitude = Ingratitude.find_by(id: params[:id])
    end
end
