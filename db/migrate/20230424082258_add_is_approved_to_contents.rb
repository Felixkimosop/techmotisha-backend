class AddIsApprovedToContents < ActiveRecord::Migration[7.0]
  def change
    add_column :contents, :is_approved, :boolean
  end
end
