class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  # GET /books or /books.json
  def index
    @books = Book.all

    palette = [
      { background: "#f6a5c0", text: "#ffffff" }, # Rosa claro com texto branco
      { background: "#ff6f61", text: "#000000" }, # Vermelho com texto preto
      { background: "#6b5b95", text: "#ffffff" }, # Roxo escuro com texto branco
      { background: "#88b04b", text: "#ffffff" }, # Verde claro com texto branco
      { background: "#f7cac9", text: "#000000" }, # Rosa pálido com texto preto
      { background: "#92a8d1", text: "#000000" }, # Azul claro com texto preto
      { background: "#955251", text: "#ffffff" }  # Marrom avermelhado com texto branco
    ]
    @books.each do |book|
      book.define_singleton_method(:color_scheme) do
        palette.sample
      end
    end
  end

  # GET /books/1 or /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy!

    respond_to do |format|
      format.html { redirect_to books_path, status: :see_other, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:name, :description, :author, :genre, :publisher, :price, :quantity)
    end
end
