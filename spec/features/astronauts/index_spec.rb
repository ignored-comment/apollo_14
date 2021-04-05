require 'rails_helper'

RSpec.describe 'Astronaut Index Page', type: :feature do
  it 'can see a list of astronauts with attributes' do
    buzz = Astronaut.create!(name: "Buzz Aldrin", age: 34, job: "pilot")

    visit '/astronauts'

    expect(page).to have_content("Buzz Aldrin")
    expect(page).to have_content("34")
    expect(page).to have_content("pilot")
  end
end
