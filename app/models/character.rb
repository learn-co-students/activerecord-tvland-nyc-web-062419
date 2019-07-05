class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  belongs_to :network

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  

  # malcolm.build_show(:name => "Firefly").build_network(:call_letters => "Fox")
  # show = malcolm.show
  # expect(show.name).to eq("Firefly")
  # expect(show.network.call_letters).to eq("Fox")



end