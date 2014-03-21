require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { catagory: @profile.catagory, email: @profile.email, meet_up: @profile.meet_up, mentee: @profile.mentee, mentor: @profile.mentor, name: @profile.name, post_code: @profile.post_code, short_biography: @profile.short_biography, tag_line: @profile.tag_line, what_do_you_want_to_achieve: @profile.what_do_you_want_to_achieve }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { catagory: @profile.catagory, email: @profile.email, meet_up: @profile.meet_up, mentee: @profile.mentee, mentor: @profile.mentor, name: @profile.name, post_code: @profile.post_code, short_biography: @profile.short_biography, tag_line: @profile.tag_line, what_do_you_want_to_achieve: @profile.what_do_you_want_to_achieve }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
