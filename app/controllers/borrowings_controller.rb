class BorrowingsController < ApplicationController
  before_action :set_borrowing, only: [:show, :edit, :update, :destroy]

  # GET /borrowings
  # GET /borrowings.json
  def index
    if current_user.has_role? :admin
      if params[:search]
        @borrowings = Borrowing.search(params[:search])
      else
        @borrowings = Borrowing.all.order('due_date ASC')
      end
    else
      @borrowings = Borrowing.where(:user_id => current_user.id).order('due_date ASC')
    end
  end

  # GET /borrowings/1
  # GET /borrowings/1.json
  def show
  end

  # GET /borrowings/new
  def new
    @borrowing = Borrowing.new
  end

  # GET /borrowings/1/edit
  def edit
  end

  # POST /borrowings
  # POST /borrowings.json
  def create
    @borrowing = Borrowing.new(borrowing_params)

    unless book_free?

      respond_to do |format|
        format.html { redirect_to @borrowing, notice: 'Borrowing was unsuccessfull. Book is already borrowed.' }
        format.json { render :show, status: :created, location: @borrowing }
      end
      return
    end

    respond_to do |format|
      if @borrowing.save
        format.html { redirect_to @borrowing, notice: 'Borrowing was successfully created.' }
        format.json { render :show, status: :created, location: @borrowing }
      else
        format.html { render :new }
        format.json { render json: @borrowing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrowings/1
  # PATCH/PUT /borrowings/1.json
  def update
    respond_to do |format|
      if @borrowing.update(borrowing_params)
        format.html { redirect_to @borrowing, notice: 'Borrowing was successfully updated.' }
        format.json { render :show, status: :ok, location: @borrowing }
      else
        format.html { render :edit }
        format.json { render json: @borrowing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrowings/1
  # DELETE /borrowings/1.json
  def destroy
    @borrowing.destroy
    respond_to do |format|
      format.html { redirect_to borrowings_url, notice: 'Borrowing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def book_free?
      Borrowing.all.each do |b|
        if b.book == @borrowing.book
          return false
        end
      end
      true
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_borrowing
      @borrowing = Borrowing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def borrowing_params
      params.require(:borrowing).permit(:user_id, :book_id, :due_date)
    end
end
