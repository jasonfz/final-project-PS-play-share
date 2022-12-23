class Topic < ApplicationRecord

    belongs_to :user
    belongs_to :game
    has_many :comments, dependent: :destroy
  

    validates :title, presence: true
    # validates :reserve_price, presence: true



    validates :title, presence: { message: "Title must be provided"} , uniqueness: {scope: :body}, length: { minimum: 2, maximum: 200, too_short: "Title must be 2 characters minimum" }




    validates :body, presence: { message: "Body must be provided" }

    validates :view_count, numericality: { greater_or_equal_to: 0 }



    def set_defaults
        #self.view_count = 0 if self.view_count.nil?
        self.view_count ||= 0
    end

    def capitalize_title
        self.title.capitalize!
    end
end
