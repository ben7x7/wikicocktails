class CocktailsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "cocktails.name @@ :query"
      @cocktails = Cocktail.where(sql_query, query: "%#{params[:query]}%")
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def edit
     @cocktail = Cocktail.find(params[:id])
  end

  def update
     @cocktail = Cocktail.find(params[:id])
     @cocktail.update(cocktail_params)

     redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :technique)
  end

end
