class Show < ActiveRecord::Base
#We just have access to so many inherited method in this class that enable us to manipulate db data
    def self.highest_rating #return the highest value in the ratings column.
        Show.maximum(:rating)
    end

    def self.most_popular_show #Returns the show with the highest rating.
        Show.where("rating = ?",Show.maximum(:rating))[0]  #returns an array with one element but the gets into the db twice
    end

    def self.lowest_rating  #Returns the lowest value in the ratings column.
        Show.minimum(:rating)
    end

    def self.least_popular_show #Returns the show with the lowest rating.
        Show.where("rating = ?",Show.minimum(:rating))[0]
    end

    def self.ratings_sum #Returns the sum of all of the ratings.
        Show.sum(:rating)
    end

    def self.popular_shows #Returns a list of all of the shows that have a rating greater than 5. Hint: use the .where Active Record method.
        Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order # Returns an array of all of the shows sorted in alphabetical order according to their names
        Show.order(name: :asc) #order by name in. There are other ways of writing the syntax
    end
end


#note that instead of the explicit class name in the methods, you can use the word self to refer to the class sice the method is a class method

#######USEFUL WEBSITES FOR THE RETRIEVAL METHODS###
# https://guides.rubyonrails.org/active_record_querying.html#ordering
# https://guides.rubyonrails.org/active_record_querying.html#conditions
# https://guides.rubyonrails.org/active_record_querying.html#calculations