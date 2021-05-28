require "application_system_test_case"

class QuestionaryResultsTest < ApplicationSystemTestCase
  setup do
    @questionary_result = questionary_results(:one)
  end

  test "visiting the index" do
    visit questionary_results_url
    assert_selector "h1", text: "Questionary Results"
  end

  test "creating a Questionary result" do
    visit questionary_results_url
    click_on "New Questionary Result"

    fill_in "Questionary", with: @questionary_result.questionary_id
    fill_in "Result", with: @questionary_result.result
    click_on "Create Questionary result"

    assert_text "Questionary result was successfully created"
    click_on "Back"
  end

  test "updating a Questionary result" do
    visit questionary_results_url
    click_on "Edit", match: :first

    fill_in "Questionary", with: @questionary_result.questionary_id
    fill_in "Result", with: @questionary_result.result
    click_on "Update Questionary result"

    assert_text "Questionary result was successfully updated"
    click_on "Back"
  end

  test "destroying a Questionary result" do
    visit questionary_results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Questionary result was successfully destroyed"
  end
end
