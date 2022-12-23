class GamesController < ApplicationController
  # ===============CALLBACKS====================
  before_action :find_game, only: [:edit, :update, :show, :destroy]

# ===============CREATE========================
def new
  
    @game = Game.new
  end




# =====READ============
def index

    @games = Game.order(created_at: :desc)

end


def show
    @topics = @game.topics.order(created_at: :desc)
    @rentals = @game.rentals.order(created_at: :desc)
    
    @topic = Topic.new
    @comment = Comment.new
  
    
end


private

def find_game
    @game = Game.find params[:id]
end

#   def question_params
#     params.require(:game).permit(:title, :body, :tag_names)
end