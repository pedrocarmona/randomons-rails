class Api::V1::CreaturesController < Api::BaseController
  def index
    @creatures = current_user.creatures.order('name ASC')
    respond_with(@creature)
  end

  def show
    @creature = current_user.creatures.find(params[:id])
    respond_with(@creature)
  end

  def create
    @creature = current_user.creatures.create(params[:creature])
    respond_with(@creature, :location => api_v1_creature_path(@creature))
  end

  def update
    @creature = current_user.creatures.find(params[:id])
    @creature.update_attributes(params[:creature])
    respond_with(@creature)
  end

  def destroy
    @creature = current_user.creatures.find(params[:id])
    @creature.destroy
    respond_with(@creature)
  end
end
