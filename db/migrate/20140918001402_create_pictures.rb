class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
