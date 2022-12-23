class Comment < ApplicationRecord

    belongs_to :topic
    # Rails generator automatically adds a "belongs_to" statement in the model
    #  This will help us later work with associated records.
    belongs_to :user
    belongs_to :game
    

end
