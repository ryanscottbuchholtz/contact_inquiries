class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :email_address
      t.string :subject
      t.text :description
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
