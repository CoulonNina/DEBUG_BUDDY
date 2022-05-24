class BuddiesController < ApplicationController
  before_action :set_buddy, only: [:show, :edit, :update, :destroy]


def index
  @buddies = Buddy.all
end

def new
  @buddy = Buddy.new # Needed to instantiate the form_for
end

def show
  @buddy = Buddy.find(params[:id])
end

def create
  @buddy = Buddy.new(buddy_params)
  if @buddy.save
    redirect_to buddy_path(@buddy)
  else
    render :new, status: :unprocessable_entity
  end
end

def update
  @buddy = Buddy.find(params[:id])
  @buddy.update(buddy_params)
  redirect_to buddy_path(@buddy)
end

def destroy
  @buddy = Buddy.find(params[:id])
  @buddy.destroy
  redirect_to buddies_path, status: :see_other
end

private

def buddy_params
  params.require(:buddy).permit(:skills, :description)
end

def set_buddy
  @buddy = Buddy.find(params[:id])
end
end
