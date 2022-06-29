class Post < ApplicationRecord
    validates :title, presence: true 
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction'], message: "Category must be Fiction or Non-Fiction"}

    validate :must_have_title

    def must_have_title
        unless title.match?("Won't Believe", "Secret", "Top [number]", "Guess")
            errors.add(:title, "Title must be clickbait-y")
        end 
    end 

    # def clickbait?
    #     if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
    #       errors.add(:title, "must be clickbait")
    #     end
    #   end
end
