class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :website
      t.string :github

      t.timestamps
    end
  end
end
