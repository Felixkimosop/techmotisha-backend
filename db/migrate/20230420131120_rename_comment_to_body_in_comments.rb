class RenameCommentToBodyInComments < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :comment, :body
  end
end