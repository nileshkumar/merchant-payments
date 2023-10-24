json.extract! merchant, :id, :reference, :email, :live_on, :disbursement_frequency, :minimum_monthly, :created_at, :updated_at
json.url merchant_url(merchant, format: :json)
