class TopicsController < ApplicationController
 # ===============CALLBACKS====================
 before_action :find_topic, only: [:edit, :update, :show, :destroy]


    

# ===============CREATE========================
def new
  
    @topic = Topic.new
end


# =====READ============
def index
    @comment = Comment.new
    @topics = Topic.order(created_at: :desc)

end


def show
    @comments = @topic.comments.order(created_at: :desc)
   
    @comment = Comment.new
  
    
end


private

def find_topic
    @topic = Topic.find params[:id]
end




end
