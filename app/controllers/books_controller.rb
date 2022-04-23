class BooksController < ApplicationController
    
    
    
    
    def new
        
        @book = Book.new 
        
    end
    
    
    def create
    
        @book = Book.new(book_params)
        if @book.save
    
        redirect_to book_path(@book.id), success: 'successfly'

        
        else
          @books = Book.all
          render :index
        end  
       
    end
    
    def index
        
        @books = Book.all
        @book = Book.new
        
        
    end
    
    
    def show
        
        @book = Book.find(params[:id])  
        
    end
    
    
    def edit
        @book = Book.find(params[:id])
        
    end
    
    
    def update
        @book = Book.find(params[:id])
       if  @book.update(book_params)
       
        redirect_to book_path, flash: {success: "登録が完了しました"}
        
        else
          @books = Book.all
          render :edit
        end  
        
    end
    
    def destroy
        book = Book.find(params[:id])  # データ（レコード）を1件取得
        book.destroy  # データ（レコード）を削除
        redirect_to '/books'  # 
    end
        
    private
      # ストロングパラメータ
      def book_params
        params.require(:book).permit(:title, :body)
      end
    
    
    
    
end
