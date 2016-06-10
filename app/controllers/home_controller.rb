class HomeController < ApplicationController
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
    file = params[:image]
    book.avatar = file
    if book.save
      uploader = AvatarUploader.new
      uploader.store!(file)
      uploader.retrieve_from_store!('file.png')

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
    if user_signed_in?
      @user_name = current_user.email.split("@")[0]
    else
      @user_name = ""
    end
    @books = Book.all.order("id desc")
    @book_num = ((Book.all.length-1) / 5) + 1
    @select_page = params[:page_id].to_i
    
    if @select_page == 0
      @select_page = 1
    else
    end
    
  end
  
  def buy_test
    @book_id = params[:book_id]
    if user_signed_in?
      redirect_to "/buy/" + @book_id
    else
      redirect_to "/users/sign_in"
    end
  end
  
  def buy
    @book_id = params[:book_id]
    @book = Book.find(@book_id)
    if user_signed_in?
      @user_name = current_user.email.split("@")[0]
      @user_email = current_user.email
    else
      @user_name = ""
    end
  end
  
  def buy_now
    @book_id = params[:book_id]
    @book = Book.find(@book_id).delete
    redirect_to ""
  end
  
  def nego
    @book_id = params[:book_id]
    buyer = Buyer.new(buyer_id: params[:user_email], buyer_price: params[:buyer_price], book_id: @book_id)
    if buyer.save
      redirect_to "/buy/" + @book_id
    else
      render :text => "Error!"
    end
  end
  
  def user_board
    redirect_to "/board"
    
  end
  
  def user_register
    redirect_to "/register"
    
  end
  
  def user_search
    redirect_to "/search"
    
  end
  
  def user_report
    redirect_to "/report"
    
  end
  
end
