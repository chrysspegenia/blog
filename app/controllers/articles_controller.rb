class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
        @articles = Article.all
        render :index
    end

    def show
        # set_article
    end

    def new
        @article = Article.new
    end
    
    def create
        # @article = Article.new
        # @article.title = params[:title]
        # @article.body = params[:body]

        @article = Article.new(article_params)

        if  @article.save
            # redirect_to '/articles'
            redirect_to articles_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        # set_article
    end

    def update
        # set_article
    
        if @article.update(article_params)
          redirect_to @article, notice: "Post was successfully updated."
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        # set_article
        @article.destroy

        redirect_to articles_path, notice: "Article #{@article.id} was successfully deleted."
    end

    private

    def article_params
        params.require(:article).permit(:title, :body)
    end

    def set_article
        @article = Article.find(params[:id])
    end
end
