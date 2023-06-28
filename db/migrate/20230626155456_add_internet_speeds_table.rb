class AddInternetSpeedsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :internet_speeds, id: :uuid do |t|
      t.references :place, null: false, foreign_key: true, index: true, type: :uuid
      t.string :download_units, null: false #25.5
      t.decimal :download_speed, null: false, scale: 2, precision: 6

      # this adds created_dt and updated_dt by default
      t.timestamps
    end
  end
end
