class UpvoteDownvoteController < ApplicationController


def new
  @votes = UpvoteDownvote.new
end

def create
  @votes = UpvoteDownvote.new(vote_params)

  respond_to do |format|
    if @votes.save
      format.html { redirect_to pictures_path, notice: 'Voted' }
      format.json { render :show, status: :created, location: @votes }
    else
      format.html { render :new }
      format.json { render json: @votes.errors, status: :unprocessable_entity }
    end
  end
end


def destroy

end

# Never trust parameters from the scary internet, only allow the white list through.
def rating_params
  params.require(:post).permit(:votes, :picture_id)
end


end
