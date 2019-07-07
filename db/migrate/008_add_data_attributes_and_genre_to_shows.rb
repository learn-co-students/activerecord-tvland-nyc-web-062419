# in this migration we are going to add three columns to our shows table

# for our data attributes
# day - string
# season - string

# for our genre column
# genre - string

# I'm not sure if the column position matters, or if the position can be moved, but for the sake of keeping somewhat organized, I'm going to order them genre, day, season

class AddDataAttributesAndGenreToShows < ActiveRecord::Migration[4.2]
    def change
        add_column :shows, :genre, :string
        add_column :shows, :day, :string
        add_column :shows, :season, :string
    end
end

