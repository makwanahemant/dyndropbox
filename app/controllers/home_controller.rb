class HomeController < ApplicationController
  def index
    @categories = Category.all
    @books = Book.where("category_id = ?", Category.first.id)
  end

  def show
    @book = Book.find_by("id = ?", params[:buy][:category_id])

  end

  def update_books
    @categories =  Book.where("category_id = ?", params[:category_id])
    respond_to do |format|
      format.js
    end
  end

end
