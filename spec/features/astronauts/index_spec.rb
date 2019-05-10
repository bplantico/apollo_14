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

    # (e.g. "Average Age: 34")
    it "the average age of all astronauts"
      astronaut_1 = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
      astronaut_2 = Astronaut.create!(name: "Arm Neilstrong", age: 34, job: "Assistant To The Regional Commander")
      astronaut_3 = Astronaut.create!(name: "Strong Neilarm", age: 31, job: "Regional Commander")

      visit astronauts_path

      expect(page).to have_content("Average Age: 34")
    end
  end
end
