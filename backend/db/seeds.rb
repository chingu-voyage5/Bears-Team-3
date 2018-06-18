# t.string :name
# t.string :address_1
# t.string :address_2
# t.string :city
# t.string :state
# t.string :zip
# t.string :phone
# t.string :blurb
# t.string :url
# t.string :donate_url
# t.string :info_email

Organization.create(
  name: "Save - A Friend to Homeless Animals",
  address_1: "1010 Route 601",
  address_2: "",
  city: "Skillman",
  state: "NJ",
  zip: "08558",
  phone: "609-309-5214",
  blurb: "Founded in 1941, SAVE is an independent non-profit animal shelter dedicated to protecting the health and welfare of homeless companion animals in the greater Princeton area. Through six core programs of Rescue, Shelter, Health and Welfare, Spay/Neuter, Adoption, and Humane Education, SAVE focuses on the rehabilitation and successful placement of treatable and adoptable animals. SAVE endeavors to build, foster, and strengthen the human-animal bond.",
  url: "https://savehomelessanimals.org/",
  donate_url: "https://savehomelessanimals.org/donate/",
  info_email: "save@savehomelessanimals.org"
)

Organization.create(
  name: "Big Brothers Big Sisters",
  address_1: "2502 N. Rocky Point Drive",
  address_2: "Suite 550",
  city: "Tampa",
  state: "Florida",
  zip: "33607",
  phone: "813-720-8778",
  blurb: "Big Brothers Big Sisters helps children realize their potential and build their futures. We nurture children and strengthen communities. And we couldn't do any of it without you.",
  url: "http://www.bbbs.org/",
  donate_url: "https://secured.bbbs.org/ea-action/action?ea.campaign.id=57589&ea.client.id=2000&_ga=2.110321989.1929660107.1529339387-829018715.1529339387",
  info_email: "donations@bbbs.org"
)




# Organization.create (
#   name: "",
#   address_1: "",
#   address_2: "",
#   city: "",
#   state: "",
#   zip: "",
#   phone: "",
#   blurb: "",
#   url: "",
#   donate_url: "",
#   info_email: "",
# )
