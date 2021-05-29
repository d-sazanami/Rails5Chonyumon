require "application_system_test_case"

class QuestionaryChoicesTest < ApplicationSystemTestCase
  setup do
    @questionary_choice = questionary_choices(:one)
  end

  test "visiting the index" do
    visit questionary_choices_url
    assert_selector "h1", text: "Questionary Choices"
  end

  test "creating a Questionary choice" do
    visit questionary_choices_url
    click_on "New Questionary Choice"

    fill_in "Content", with: @questionary_choice.content
    fill_in "Questionary item", with: @questionary_choice.questionary_item_id
    fill_in "Value", with: @questionary_choice.value
    click_on "Create Questionary choice"

    assert_text "Questionary choice was successfully created"
    click_on "Back"
  end

  test "updating a Questionary choice" do
    visit questionary_choices_url
    click_on "Edit", match: :first

    fill_in "Content", with: @questionary_choice.content
    fill_in "Questionary item", with: @questionary_choice.questionary_item_id
    fill_in "Value", with: @questionary_choice.value
    click_on "Update Questionary choice"

    assert_text "Questionary choice was successfully updated"
    click_on "Back"
  end

  test "destroying a Questionary choice" do
    visit questionary_choices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Questionary choice was successfully destroyed"
  end
end
