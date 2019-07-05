class CreateActor < ActiveRecord::Migration[4.2]

    attr_accessor :first_name, :last_name

    def change
        create_table :actors do |t|
            t.string :first_name
            t.string :last_name
        end
    end
end