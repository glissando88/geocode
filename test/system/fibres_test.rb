require "application_system_test_case"

class FibresTest < ApplicationSystemTestCase
  setup do
    @fibre = fibres(:one)
  end

  test "visiting the index" do
    visit fibres_url
    assert_selector "h1", text: "Fibres"
  end

  test "creating a Fibre" do
    visit fibres_url
    click_on "New Fibre"

    fill_in "Address", with: @fibre.address
    fill_in "Serviceid", with: @fibre.serviceid
    click_on "Create Fibre"

    assert_text "Fibre was successfully created"
    click_on "Back"
  end

  test "updating a Fibre" do
    visit fibres_url
    click_on "Edit", match: :first

    fill_in "Address", with: @fibre.address
    fill_in "Serviceid", with: @fibre.serviceid
    click_on "Update Fibre"

    assert_text "Fibre was successfully updated"
    click_on "Back"
  end

  test "destroying a Fibre" do
    visit fibres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fibre was successfully destroyed"
  end
end
