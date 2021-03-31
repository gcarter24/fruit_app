class Api::FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render "index.json.jb"
  end
end
