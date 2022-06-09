class AddServiceIdToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :service_id, :integer
    add_index  :clients, :service_id
  end
end
