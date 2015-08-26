json.array!(@sites) do |site|
  json.extract! site, :id, :title, :subtitle, :domain, :subdomain, :level, :address, :city, :state, :zip, :phone, :headercarousel, :welcomemessage, :services, :reviews, :reservations, :styles, :backgroundcolor, :textcolor, :hightlightcolor
  json.url site_url(site, format: :json)
end
