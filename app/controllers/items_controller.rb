class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  
  def index
    # @department = Department.find(params[:department_id])
    @items = @department.items
  end

  def new
    @item = @department.items.new
    render partial: 'form'
  end
  def create 
    @item = @department.items.new(item_params)
    if @item.save
      redirect_to department_item_path(@department,@item)
    else
      render :new
    end
  end 
  def show
  end

  def edit
    render partial: "form"
  end
  def update
    if @item.update(item_params)
      redirect_to [@department, @item]
    else
      render :edit
    end 
  end 

  def destroy
    @item.destroy
    redirect_to department_items_path(@department)
  end 
  
  private 
  def set_department
    @department = Department.find(params[:department_id])
  end 
  private
  def item_params
    params.require(:item).permit(:name, :quantity,:description)
  end
  private
  def set_item
    @item = Item.find(params[:id])
  end
 
end
