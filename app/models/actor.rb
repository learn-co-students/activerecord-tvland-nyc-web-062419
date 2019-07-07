class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.map do |character_instances|
      "#{character_instances.name} - #{character_instances.show.name}" 
    end
  end

end

