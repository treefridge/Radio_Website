class Band < ActiveRecord::Base
<<<<<<< HEAD

self.primary_key= :band_id

has_many :songs, inverse_of: :band

 searchable do 
 	text :band_name
 	string :band_id
 	string :nationality 
 	integer :start_year
 end

=======
	has_many :song_inventories
>>>>>>> FETCH_HEAD
end