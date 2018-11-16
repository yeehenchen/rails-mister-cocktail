class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :redirect]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(val_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def filter
    @keyword = params[:query]
    @cocktails = Cocktail.where("name LIKE '%#{@keyword}%'")
    redirect_to cocktails_path, notice: "You searched for #{@keyword}. No matched result found." if @cocktails.empty?
  end

  def redirect
    redirect_to cocktail_path(@cocktail)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def val_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
