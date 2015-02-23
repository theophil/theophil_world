class Article2Controller < ApplicationController
  
  def index
    @articles = Article2.alphabetical.paginate(:page => params[:page]).per_page(10)
  end


  def show
    @article = Article2.find(params[:id])
  end


  def new
    @article = Article2.new
  end


  def edit
    @article = Article2.find(params[:id])
  end


  def create
    @article = Article2.new(params[:article2])
    if @article.save
      flash[:notice] = 'Article2 was successfully created.'
      redirect_to article_path(@article)
    else
      render :action => "new"
    end
  end


  def update
    @article = Article2.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:notice] = 'Article2 was successfully updated.'
      redirect_to article_path(@article)
    else
      render :action => "edit"
    end
  end


  def destroy
    @article = Article2.find(params[:id])
    @article.destroy
    redirect_to article2_path
  end
end
