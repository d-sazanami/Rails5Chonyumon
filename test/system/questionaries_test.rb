require "application_system_test_case"

class QuestionariesTest < ApplicationSystemTestCase
  setup do
    @questionary = questionaries(:one)
  end

  test "visiting the index" do
    visit questionaries_url
    assert_selector "h1", text: "Questionaries"
  end

  test "creating a Questionary" do
    visit questionaries_url
    click_on "New Questionary"

    fill_in "Deadline", with: @questionary.deadline
    fill_in "Description", with: @questionary.description
    fill_in "Title", with: @questionary.title
    click_on "Create Questionary"

    assert_text "Questionary was successfully created"
    click_on "Back"
  end

  test "updating a Questionary" do
    visit questionaries_url
    click_on "Edit", match: :first

    fill_in "Deadline", with: @questionary.deadline
    fill_in "Description", with: @questionary.description
    fill_in "Title", with: @questionary.title
    click_on "Update Questionary"

    assert_text "Questionary was successfully updated"
    click_on "Back"
  end

  test "destroying a Questionary" do
    visit questionaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Questionary was successfully destroyed"
  end
end
