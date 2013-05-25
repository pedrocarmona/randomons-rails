class Api::V1::MovesController < Api::BaseController
  def index
    @moves = Move.order('name ASC')
  end

  def show
    @move = Move.find(params[:id])
  end
end
