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

  def show
    @fruit = Fruit.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @fruit = Fruit.find_by(id: params[:id])
    @fruit.name = params[:name] || @fruit.name
    @fruit.tastiness = params[:tastiness] || @fruit.tastiness
    @fruit.color = params[:color] || @fruit.color
    @fruit.save
    render "show.json.jb"
  end

  def destroy
    @fruit = Fruit.find_by(id: params[:id])
    @fruit.destroy
    render json: { message: "Fruit succesfully removed" }
  end
end
