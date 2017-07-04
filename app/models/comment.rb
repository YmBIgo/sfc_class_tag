class Comment < ApplicationRecord

    # :href, :content, :x_pos, :y_pos, :category, :page_name
    # validates :href, :content, :x_pos, :y_pos, :category, :page_name, presence: true

    def category_color
        if self.category==0
            return "black"
        elsif self.category==1
            return "red"
        end
    end

    def category_icon
        if self.category==0
            return "fa-times"
        elsif self.category==1
            return "fa-circle-o"
        end
    end
end
