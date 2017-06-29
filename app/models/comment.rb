class Comment < ApplicationRecord
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
