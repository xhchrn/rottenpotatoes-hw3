class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :movies
  end

  def change
    add_column :movies, :director, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end

end
