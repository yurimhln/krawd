class CreateFacebookdata < ActiveRecord::Migration
  def change
    create_table :facebookdata do |t|

      t.timestamps
    end
  end
end
