json.extract! contact_detail, :id, :contact_id, :contact_detail_info, :contact_detail_type, :created_at, :updated_at
json.url contact_detail_url(contact_detail, format: :json)
