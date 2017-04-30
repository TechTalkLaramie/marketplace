class AddSeekingHelpToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :seeking_help, :boolean
  end
end
