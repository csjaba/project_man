class TesksController < ApplicationController
	def create
	@post = Post.find(params[:post_id])
    @tesk = @post.tesks.create(params[:tesk])
    redirect_to post_path(@post)
end

def destroy
    @post = Post.find(params[:post_id])
    @tesk = @post.tesks.find(params[:id])
    @tesk.destroy
    redirect_to post_path(@post)
end

def edit
    @tesk = Tesk.find(params[:id])
end

def show
    @tesk = Tesk.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tesk }
    end
  end


end
