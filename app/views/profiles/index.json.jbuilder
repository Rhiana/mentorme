json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :mentor, :mentee, :post_code, :email, :tag_line, :meet_up, :catagory, :short_biography, :what_do_you_want_to_achieve
  json.url profile_url(profile, format: :json)
end
