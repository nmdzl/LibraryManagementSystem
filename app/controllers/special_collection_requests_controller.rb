class SpecialCollectionRequestsController < ApplicationController
  before_action :set_special_collection_request, only: [:approve, :decline]

  def approve
    @book = Book.find(@special_collection_request.book_id)
    @student = Student.find(@special_collection_request.student_id)
    if !@book.nil? and !@student.nil?
      if @book.is_borrowed
        flash.now[:danger] = "Uable to approve, because the book is currently checked out."
        render 'index'
      else
        @book.is_borrowed = true
        @book.student_id = @special_collection_request.student_id
        if @book.save!
          create_book_history @book.id, session
          @special_collection_request.destroy
          flash.now[:notice] = @student.name+"'s request for "+@book.name+" has been approved."
          render 'index', status: :ok
        else
          render json: @book.errors, status: :unprocessable_entity
        end
      end
    else
      @specail_collection_request.destroy
      flash.now[:danger] = "This request has been out of date, thus automatically removed."
      rener 'index'
    end
  end

  def decline
    @special_collection_request.destroy
    flash.now[:notice] = @student.name+"'s request for "+@book.name+" has been declined."
    render 'index'
  end

  # GET /special_collection_requests
  # GET /special_collection_requests.json
  def index
    @special_collection_requests = SpecialCollectionRequest.all
  end

  # GET /special_collection_requests/1
  # GET /special_collection_requests/1.json
  def show
  end

  # GET /special_collection_requests/new
  def new
    @special_collection_request = SpecialCollectionRequest.new
  end

  # GET /special_collection_requests/1/edit
  def edit
  end

  # POST /special_collection_requests
  # POST /special_collection_requests.json
  def create
    @special_collection_request = SpecialCollectionRequest.new(special_collection_request_params)

    respond_to do |format|
      if @special_collection_request.save
        format.html { redirect_to @special_collection_request, notice: 'Special collection request was successfully created.' }
        format.json { render :show, status: :created, location: @special_collection_request }
      else
        format.html { render :new }
        format.json { render json: @special_collection_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_collection_requests/1
  # PATCH/PUT /special_collection_requests/1.json
  def update
    respond_to do |format|
      if @special_collection_request.update(special_collection_request_params)
        format.html { redirect_to @special_collection_request, notice: 'Special collection request was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_collection_request }
      else
        format.html { render :edit }
        format.json { render json: @special_collection_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_collection_requests/1
  # DELETE /special_collection_requests/1.json
  def destroy
    @special_collection_request.destroy
    respond_to do |format|
      format.html { redirect_to special_collection_requests_url, notice: 'Special collection request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_collection_request
      @special_collection_request = SpecialCollectionRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_collection_request_params
      params.require(:special_collection_request).permit(:student_id, :book_id)
    end
end
