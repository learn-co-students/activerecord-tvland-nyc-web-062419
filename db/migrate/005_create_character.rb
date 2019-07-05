class CreateCharacter < ActiveRecord::Migration[4.2]

    attr_accessor :name, :show_id

    def change
        create_table :characters do |t|
            t.string :name
            t.integer :show_id
        end
    end
end