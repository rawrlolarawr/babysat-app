class ChildrenController < ApplicationController
    def index

    end

    def new
    end

    def create
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
        params.require(:child).permit(:name, :age, :gender)
    end

    def set_child
        @child = Child.find_by(id: params[:id])
    end
end
