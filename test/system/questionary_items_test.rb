require "application_system_test_case"

class QuestionaryItemsTest < ApplicationSystemTestCase
  setup do
    @questionary_item = questionary_items(:one)
  end

  test "visiting the index" do
    visit questionary_items_url
    assert_selector "h1", text: "Questionary Items"
  end

  test "creating a Questionary item" do
    visit questionary_items_url
    click_on "New Questionary Item"

    fill_in "Content", with: @questionary_item.content
    fill_in "Questionary", with: @questionary_item.questionary_id
    click_on "Create Questionary item"

    assert_text "Questionary item was successfully created"
    click_on "Back"
  end

  test "updating a Questionary item" do
    visit questionary_items_url
    click_on "Edit", match: :first

    fill_in "Content", with: @questionary_item.content
    fill_in "Questionary", with: @questionary_item.questionary_id
    click_on "Update Questionary item"

    assert_text "Questionary item was successfully updated"
    click_on "Back"
  end

  test "destroying a Questionary item" do
    visit questionary_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Questionary item was successfully destroyed"
  end
end
