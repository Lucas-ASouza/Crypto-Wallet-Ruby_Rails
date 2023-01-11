require "application_system_test_case"

class MiningtypesTest < ApplicationSystemTestCase
  setup do
    @miningtype = miningtypes(:one)
  end

  test "visiting the index" do
    visit miningtypes_url
    assert_selector "h1", text: "Miningtypes"
  end

  test "creating a Miningtype" do
    visit miningtypes_url
    click_on "New Miningtype"

    fill_in "Acronym", with: @miningtype.acronym
    fill_in "Description", with: @miningtype.description
    fill_in "String", with: @miningtype.string
    click_on "Create Miningtype"

    assert_text "Miningtype was successfully created"
    click_on "Back"
  end

  test "updating a Miningtype" do
    visit miningtypes_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @miningtype.acronym
    fill_in "Description", with: @miningtype.description
    fill_in "String", with: @miningtype.string
    click_on "Update Miningtype"

    assert_text "Miningtype was successfully updated"
    click_on "Back"
  end

  test "destroying a Miningtype" do
    visit miningtypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Miningtype was successfully destroyed"
  end
end
