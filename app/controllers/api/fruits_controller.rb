class Api::FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render "index.json.jb"
  end

  def create
    @fruit = Fruit.new(
      name: params[:name],
      tastiness: params[:tastiness],
      color: params[:color],
    )
    @fruit.save
    render "show.json.jb"
  end 
end
