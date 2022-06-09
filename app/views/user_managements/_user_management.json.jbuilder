json.extract! user_management, :id, :first_name, :last_name, :address, :policy_type, :company, :phone, :email, :policy_effective, :expiration_date, :premium, :status, :created_at, :updated_at
json.url user_management_url(user_management, format: :json)
