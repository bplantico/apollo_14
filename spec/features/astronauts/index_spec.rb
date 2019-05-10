require 'rails_helper'

RSpec.describe "As a visitor " do

  describe "When I visit astronauts index page, " do
    # (e.g. "Name: Neil Armstrong, Age: 37, Job: Commander")
    it "I see a list of astronauts with name, age, and job for each" do
      astronaut_1 = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
      visit astronauts_path

      within "#astronaut-#{astronaut_1.id}" do
        expect(page).to have_content(astronaut_1.name)
        expect(page).to have_content(astronaut_1.age)
        expect(page).to have_content(astronaut_1.job)
      end
    end

  end
end
