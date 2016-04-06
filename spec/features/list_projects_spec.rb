require 'rails_helper'

describe "Viewing the list of projects" do 

  it "shows three project names" do 
    project1 = Project.create(name: "Jistlist",
                              description: "A social network and meetup app for jiu-jitsu practitioners",
                              target_pledge_amount: 100000.00,
                              pledging_ends_on: 40.days.from_now,
                              website: "http://www.jitslist.com")
                              
    project2 = Project.create(name: "Plutocracy",
                              description: "Compete against your peers and win real money in this fantasy sports style mock trading app.",
                              target_pledge_amount: 250000.00,
                              pledging_ends_on: 32.days.from_now,
                              website: "http://www.plutocracy.com")

    project3 = Project.create(name: "Paper Route",
                              description: "A modern 8-bit style remake of the classic video game, 'Paper Boy'.",
                              target_pledge_amount: 300000.00,
                              pledging_ends_on: 1.day.from_now,
                              website: "http://www.paperroute.com")

    visit projects_url

    expect(page).to have_text("3 Projects")
    expect(page).to have_text(project1.name)
    expect(page).to have_text(project2.name)
    expect(page).to have_text(project3.name)

    expect(page).to have_text(project1.description)
    expect(page).to have_text("$100,000.00")
    expect(page).to have_text(project1.pledging_ends_on)
    expect(page).to have_text(project1.website)
  end

end