json.extract! client, :id, :first_name, :last_name, :address, :policy_type, :company, :phone, :email, :policy_effective, :expiration_date, :premium, :status, :created_at, :updated_at
json.url client_url(client, format: :json)
