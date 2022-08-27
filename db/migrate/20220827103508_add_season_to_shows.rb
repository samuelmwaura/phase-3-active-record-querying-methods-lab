class AddSeasonToShows < ActiveRecord::Migration[6.1]
  def change
    add_column(:shows,:season,:string)   #ORM method to add a column to the db.This is irreversible
  end
end
