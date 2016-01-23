class OfficesController < ApplicationController
  before_action :set_office, only: [:show, :edit, :update, :destroy]

  # GET /offices
  # GET /offices.json
  def index
    @offices = Office.all
  end

  # GET /offices/1
  # GET /offices/1.json
  def show
  end

  # GET /offices/new
  def new
    @office = Office.new
  end

  # GET /offices/1/edit
  def edit
  end

  # POST /offices
  # POST /offices.json
  def create
    @office = Office.new(office_params)

    respond_to do |format|
      if @office.save
        format.html { redirect_to @office, notice: 'Office was successfully created.' }
        format.json { render :show, status: :created, location: @office }
      else
        format.html { render :new }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offices/1
  # PATCH/PUT /offices/1.json
  def update
    respond_to do |format|
      if @office.update(office_params)
        format.html { redirect_to @office, notice: 'Office was successfully updated.' }
        format.json { render :show, status: :ok, location: @office }
      else
        format.html { render :edit }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offices/1
  # DELETE /offices/1.json
  def destroy
    unless borrowings_of_office.empty?
      respond_to do |format|
        format.html { redirect_to authors_url, notice: 'Office can\'t be destroyed due to existing borrowings.' }
        format.json { head :no_content }
      end
      return
    end

    books_of_office.each do |b|
      b.destroy
    end

    @office.destroy
    respond_to do |format|
      format.html { redirect_to offices_url, notice: 'Office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def books_of_office
    books = Set.new
    Book.all.each do |b|
      if b.office == @office
        books.add(b)
      end
    end
    books
  end

  def borrowings_of_office
    borrowings = Set.new
    Borrowing.all.each do |b|
      if b.book.office == @office
        borrowings.add(b)
      end
    end
    borrowings
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_office
      @office = Office.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_params
      params.require(:office).permit(:name, :address, :contact)
    end
end
