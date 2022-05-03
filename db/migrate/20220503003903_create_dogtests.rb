class CreateDogtests < ActiveRecord::Migration[6.1]
  def change
    create_table :dogtests do |t|

      t.timestamps
    end
  end
end
