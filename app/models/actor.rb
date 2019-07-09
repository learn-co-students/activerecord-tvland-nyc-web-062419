class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        first_last = []
        first_last << self.first_name
        first_last << self.last_name
        first_last.join(" ")
    end

    def list_roles
        self.characters.map {|char| "#{char.name} - #{char.show.name}"}
    end
end