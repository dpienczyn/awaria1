json.extract! pracownik, :id, :stanowisko_id, :dzial_id, :nazwa, :stanowisko, :telefon, :email, :created_at, :updated_at
json.url pracownik_url(pracownik, format: :json)