class ChildrenController < ApplicationController
    before_action :set_child
    skip_before_action :set_child, only: [:index, :new, :create]
    
    def index
        @children = Child.all
    end

    def new
        @child = current_user.children.build
    end

    def create
        @child = current_user.children.create(child_params)
        redirect_to @child
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

    def child_params
        params.require(:child).permit(:name, :age, :gender, :parent_id)
    end

    def set_child
        @child = Child.find_by(id: params[:id])
    end
end
