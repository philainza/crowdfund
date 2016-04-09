require 'rails_helper'

describe "Viewing the individual project" do 

  it "shows the project's details" do 
    project = Project.create(project_attributes)

    visit project_url(project)

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description)
    expect(page).to have_text("$100,000.00")
    expect(page).to have_text(project.pledging_ends_on)
    expect(page).to have_text(project.website)

  end

  it "shows the number of days remaining if the pledging end date is in the future" do 
    allow(Time).to receive(:now).and_return(Time.parse("00:00:00"))

    project = Project.create(project_attributes(pledging_ends_on: 1.day.from_now))

    visit project_url(project)

    expect(page).to have_text("1 day remaining")
  end

  it "shows 'All Done!' if the pledging end date is in the past" do 
    project = Project.create(project_attributes(pledging_ends_on: 2.days.ago))

    visit project_url(project)

    expect(page).to have_text("All Done!")
  end

end