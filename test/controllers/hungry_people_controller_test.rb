require 'test_helper'

class HungryPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hungry_person = hungry_people(:one)
  end

  test "should get index" do
    get hungry_people_url
    assert_response :success
  end

  test "should get new" do
    get new_hungry_person_url
    assert_response :success
  end

  test "should create hungry_person" do
    assert_difference('HungryPerson.count') do
      post hungry_people_url, params: { hungry_person: { name: @hungry_person.name } }
    end

    assert_redirected_to hungry_person_path(HungryPerson.last)
  end

  test "should show hungry_person" do
    get hungry_person_url(@hungry_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_hungry_person_url(@hungry_person)
    assert_response :success
  end

  test "should update hungry_person" do
    patch hungry_person_url(@hungry_person), params: { hungry_person: { name: @hungry_person.name } }
    assert_redirected_to hungry_person_path(@hungry_person)
  end

  test "should destroy hungry_person" do
    assert_difference('HungryPerson.count', -1) do
      delete hungry_person_url(@hungry_person)
    end

    assert_redirected_to hungry_people_path
  end
end
