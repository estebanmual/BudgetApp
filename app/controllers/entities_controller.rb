class EntitiesController < ApplicationController

  def new
    @entity = Entity.new
  end

  def create
    @entity = current_user.entities.new(entity_params)
    if @entity.save
      redirect_to categories_path, notice: 'Entity was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :category_id)
  end
end
