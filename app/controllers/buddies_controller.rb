class BuddiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  #before_action :set_buddy, only: [:show, :edit, :update, :destroy]

  def index
    @buddies = policy_scope(Buddy)
  end

  def new
    @user = current_user
    #@buddy.user = current_user
    @buddy = Buddy.new
    authorize @buddy
  end

  def show
    @buddy = Buddy.find(params[:id])
    authorize @buddy
    @booking = Booking.new
  end

  def create
    @buddy = Buddy.new(buddy_params)
    @buddy.user = current_user
    authorize @buddy
    if @buddy.save
      redirect_to buddy_path(@buddy)
    else
      render :new, status: :unprocessable_entity
    end
  end

  #def update
  #  authorize @buddy
  #  @buddy = Buddy.find(params[:id])
  #  @buddy.update(buddy_params)
  #  redirect_to buddy_path(@buddy)
  #end

  def edit
    @buddy = Buddy.find(params[:id])
    authorize @buddy
    #@buddy = Buddy.find(params[:id])
  end

  def update
    @buddy = Buddy.find(params[:id])
    @buddy.user = current_user
    authorize @buddy
    if @buddy.update(buddy_params)
      redirect_to buddy_path(@buddy)
    else
      render :edit
    end
  end

  def destroy
    authorize @buddy
    @buddy = Buddy.find(params[:id])
    @buddy.destroy
    redirect_to buddies_path, status: :see_other
  end

  private

  def buddy_params
    params.require(:buddy).permit(:skills, :description, :photo)
  end

  def set_buddy
    @buddy = Buddy.find(params[:id])
  end
end
