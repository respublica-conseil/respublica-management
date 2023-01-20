require "test_helper"

class MissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mission = missions(:one)
  end

  test "should get index" do
    get missions_url
    assert_response :success
  end

  test "should get new" do
    get new_mission_url
    assert_response :success
  end

  test "should create mission" do
    assert_difference("Mission.count") do
      post missions_url, params: { mission: { mois_1_descr: @mission.mois_1_descr, mois_2_descr: @mission.mois_2_descr, mois_3_descr: @mission.mois_3_descr, mois_4_descr: @mission.mois_4_descr, ref_consultant: @mission.ref_consultant, ref_mission: @mission.ref_mission } }
    end

    assert_redirected_to mission_url(Mission.last)
  end

  test "should show mission" do
    get mission_url(@mission)
    assert_response :success
  end

  test "should get edit" do
    get edit_mission_url(@mission)
    assert_response :success
  end

  test "should update mission" do
    patch mission_url(@mission), params: { mission: { mois_1_descr: @mission.mois_1_descr, mois_2_descr: @mission.mois_2_descr, mois_3_descr: @mission.mois_3_descr, mois_4_descr: @mission.mois_4_descr, ref_consultant: @mission.ref_consultant, ref_mission: @mission.ref_mission } }
    assert_redirected_to mission_url(@mission)
  end

  test "should destroy mission" do
    assert_difference("Mission.count", -1) do
      delete mission_url(@mission)
    end

    assert_redirected_to missions_url
  end
end
