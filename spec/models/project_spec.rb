require 'rails_helper'

describe "A project" do 
  it "has expired if the pledging ends on date is in the past" do 
    project = Project.new(pledging_ends_on: 1.day.ago)

    expect(project.expired?).to eq(true)
  end

  it "has not expired if the pledging ends on date is in the future" do 
    project = Project.new(pledging_ends_on: 2.days.from_now)

    expect(project.expired?).to eq(false)
  end
end