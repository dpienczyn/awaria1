json.extract! klient, :id, :nazwa, :nip, :kod_pocztowy, :poczta, :adres, :telefon, :email, :created_at, :updated_at
json.url klient_url(klient, format: :json)