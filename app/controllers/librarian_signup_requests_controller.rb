class LibrarianSignupRequestsController < ApplicationController

  def approve
    @librarian_signup_request = LibrarianSignupRequest.find(params[:id])
    @librarian = Librarian.find(@librarian_signup_request.librarian_id)
    begin
      @librarian_signup_request.destroy
      @librarian.is_approved = true
      @librarian.save!
      flash.now[:notice] = 'You have successfully approved this signup request.'
      render 'index'
    rescue
      flash.now[:notice] = 'This request has already been approved.'
      render 'index'
    end
  end

  def decline
    @librarian_signup_request = LibrarianSignupRequest.find(params[:id])
    @librarian_signup_request.destroy
    @librarian.destroy
    flash.now[:notice] = 'This request has been successfully declined.'
    render 'index'
  end

  # GET /librarian_signup_requests
  # GET /librarian_signup_requests.json
  def index
    @librarian_signup_requests = LibrarianSignupRequest.all
  end

  # GET /librarian_signup_requests/1
  # GET /librarian_signup_requests/1.json
  def show
  end

  # GET /librarian_signup_requests/new
  def new
    @librarian_signup_request = LibrarianSignupRequest.new
  end

  # GET /librarian_signup_requests/1/edit
  def edit
  end

  # POST /librarian_signup_requests
  # POST /librarian_signup_requests.json
  def create
    @librarian_signup_request = LibrarianSignupRequest.new(librarian_signup_request_params)

    respond_to do |format|
      if @librarian_signup_request.save
        format.html { redirect_to @librarian_signup_request, notice: 'Librarian signup request was successfully created.' }
        format.json { render :show, status: :created, location: @librarian_signup_request }
      else
        format.html { render :new }
        format.json { render json: @librarian_signup_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /librarian_signup_requests/1
  # PATCH/PUT /librarian_signup_requests/1.json
  def update
    respond_to do |format|
      if @librarian_signup_request.update(librarian_signup_request_params)
        format.html { redirect_to @librarian_signup_request, notice: 'Librarian signup request was successfully updated.' }
        format.json { render :show, status: :ok, location: @librarian_signup_request }
      else
        format.html { render :edit }
        format.json { render json: @librarian_signup_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /librarian_signup_requests/1
  # DELETE /librarian_signup_requests/1.json
  def destroy
    @librarian_signup_request.destroy
    respond_to do |format|
      format.html { redirect_to librarian_signup_requests_url, notice: 'Librarian signup request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_librarian_signup_request
      @librarian_signup_request = LibrarianSignupRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def librarian_signup_request_params
      params.require(:librarian_signup_request).permit(:librarian_id)
    end
end
