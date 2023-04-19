class RenameContentTypeToCategoryInContents < ActiveRecord::Migration[7.0]
  def change
    rename_column :contents, :content_type, :kind
  end
end
