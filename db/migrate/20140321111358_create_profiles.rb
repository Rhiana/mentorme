class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.boolean :mentor
      t.boolean :mentee
      t.string :post_code
      t.string :email
      t.string :tag_line
      t.string :meet_up
      t.string :category
      t.text :short_biography
      t.text :what_do_you_want_to_achieve
      t.timestamps
    end
  end
end
