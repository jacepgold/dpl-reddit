class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :destroy]

  #GET /subs
  def index
    @subs = Sub.all
  end

  #GET /subs/:id
  def show
  end

  #GET /subs/new
  def new
    @sub = Sub.new
    render partial: "form"
  end

  #GET /subs/:id/edit
  def edit
    render partial: "form"
  end
  
  #POST /subs
  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      #redirect_to "/subs/#{@sub.id}"
      #redirect_to sub_path(@sub)
      redirect_to sub_path @sub
      #redirect_to @sub
    else
      render partial: "form"
    end
  end

  #PUT /subs/:id
  def update
    if @sub.update(sub_params)
      redirect_to sub_path @sub
    else
      render partial: "form"
    end
  end

  #DELETE /subs/:id
  def destroy
    @sub.destroy
    redirect_to subs_path
  end

  private
    def set_sub
      @sub = Sub.find(params[:id])
    end

    def sub_params
      params.require(:sub).permit(:name)
    end
end
