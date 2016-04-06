require 'rails_helper'

describe "Viewing the individual project" do 

  it "shows the project's details" do 
    project = Project.create(name: "Jistlist",
                              description: "A social network and meetup app for jiu-jitsu practitioners",
                              target_pledge_amount: 100000.00,
                              pledging_ends_on: 40.days.from_now,
                              website: "http://www.jitslist.com")

    visit project_url(project)

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description)
    expect(page).to have_text("$100,000.00")
    expect(page).to have_text(project.pledging_ends_on)
    expect(page).to have_text(project.website)

  end

end