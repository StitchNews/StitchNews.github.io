class AddLinkSentToRequest < ActiveRecord::Migration
  def change
  	remove_column :requests, :link_sent?, :boolean
  	add_column :requests, :link_sent, :boolean
  end
end
