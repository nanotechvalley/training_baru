class AddAttachmentArticlePictureToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :article_picture
    end
  end

  def self.down
    drop_attached_file :articles, :article_picture
  end
end
