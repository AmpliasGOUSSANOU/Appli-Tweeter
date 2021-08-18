class PublicationsController < ApplicationController
    before_action :set_publication, only: [:show, :edit, :update, :destroy]
    def index
      @publications = Post.all
    end
    def new
      @publication = Post.new
    end
    def create
      @publication = Post.new(publication_params)
      if params[:back]
        render :new
      else
        if @publication.save
          redirect_to publications_path, notice: "Creation success！"
        else
          render :new
        end
      end
    end
    def show
    end
    def edit
    end
    def update
      if @publication.update(publication_params)
        redirect_to publications_path, notice: "Edit success"
      else
        render :edit
      end
    end
    def destroy
      @publication.destroy
      redirect_to publications_path, notice:"Delete success"
    end
    def confirm
      @publication = Post.new(publication_params)
      render :new if @publication.invalid?
    end
    private
    def publication_params
      params.require(:publication).permit(:content)
    end
    def set_publication
      @publication = Post.find(params[:id])
    end
  end