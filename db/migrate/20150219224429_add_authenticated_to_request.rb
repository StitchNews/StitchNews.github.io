class AddAuthenticatedToRequest < ActiveRecord::Migration
  def change
  	add_column :requests, :link_sent?, :boolean
  end
end
