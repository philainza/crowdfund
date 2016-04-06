def project_attributes(overrides = {})
  {
    name: "Jistlist",
    description: "A social network and meetup app for jiu-jitsu practitioners",
    target_pledge_amount: 100000.00,
    pledging_ends_on: 40.days.from_now,
    website: "http://www.jitslist.com"
  }.merge(overrides)
end