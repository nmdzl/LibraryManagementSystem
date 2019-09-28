 class SearchesController < ApplicationController

  # GET /searches
  # GET /searches.json
  # GET /searches/1
  # GET /searches/1.json
  def show
     @search=Search.find(params[:id])
  end
  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(search_params)
    redirect_to @search
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json


  # DELETE /searches/1
  # DELETE /searches/1.json


  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:isbn, :published, :title, :subject, :author)
    end
end
