class HomeController < ApplicationController
  def index
    if user_signed_in?
      @user_name = current_user.email.split("@")[0]
    else
      @user_name = ""
    end
  end
  
  def register_test
    if user_signed_in?
      redirect_to "/register"
    else
      redirect_to "/users/sign_in"
    end
  end
  
  def register
    if user_signed_in?
      @user_name = current_user.email.split("@")[0]
      @user_email = current_user.email
    else
      @user_name = ""
    end
    
  end
  
  def save_book
    book = Book.new(title: params[:title], major: params[:major], college: params[:college], author: params[:author], publisher: params[:publisher],
                  coursename: params[:course], profname: params[:prof], seller_id: params[:user_email], seller_price: params[:price])
    if book.save
      redirect_to "/board"
    else
      render :text => "Error!"
    end
  end
  
  def searchbook
    if user_signed_in?
      @user_name = current_user.email.split("@")[0]
    else
      @user_name = ""
    end
    
  end
  
  def board
    @books = Book.all.order("id desc")
  end
  
end
