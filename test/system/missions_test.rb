require "application_system_test_case"

class MissionsTest < ApplicationSystemTestCase
  setup do
    @mission = missions(:one)
  end

  test "visiting the index" do
    visit missions_url
    assert_selector "h1", text: "Missions"
  end

  test "should create mission" do
    visit missions_url
    click_on "New mission"

    fill_in "Mois 1 descr", with: @mission.mois_1_descr
    fill_in "Mois 2 descr", with: @mission.mois_2_descr
    fill_in "Mois 3 descr", with: @mission.mois_3_descr
    fill_in "Mois 4 descr", with: @mission.mois_4_descr
    fill_in "Ref consultant", with: @mission.ref_consultant
    fill_in "Ref mission", with: @mission.ref_mission
    click_on "Create Mission"

    assert_text "Mission was successfully created"
    click_on "Back"
  end

  test "should update Mission" do
    visit mission_url(@mission)
    click_on "Edit this mission", match: :first

    fill_in "Mois 1 descr", with: @mission.mois_1_descr
    fill_in "Mois 2 descr", with: @mission.mois_2_descr
    fill_in "Mois 3 descr", with: @mission.mois_3_descr
    fill_in "Mois 4 descr", with: @mission.mois_4_descr
    fill_in "Ref consultant", with: @mission.ref_consultant
    fill_in "Ref mission", with: @mission.ref_mission
    click_on "Update Mission"

    assert_text "Mission was successfully updated"
    click_on "Back"
  end

  test "should destroy Mission" do
    visit mission_url(@mission)
    click_on "Destroy this mission", match: :first

    assert_text "Mission was successfully destroyed"
  end
end
