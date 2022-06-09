require "application_system_test_case"

class UserManagementsTest < ApplicationSystemTestCase
  setup do
    @user_management = user_managements(:one)
  end

  test "visiting the index" do
    visit user_managements_url
    assert_selector "h1", text: "User Managements"
  end

  test "creating a User management" do
    visit user_managements_url
    click_on "New User Management"

    fill_in "Address", with: @user_management.address
    fill_in "Company", with: @user_management.company
    fill_in "Email", with: @user_management.email
    fill_in "Expiration date", with: @user_management.expiration_date
    fill_in "First name", with: @user_management.first_name
    fill_in "Last name", with: @user_management.last_name
    fill_in "Phone", with: @user_management.phone
    fill_in "Policy effective", with: @user_management.policy_effective
    fill_in "Policy type", with: @user_management.policy_type
    fill_in "Premium", with: @user_management.premium
    fill_in "Status", with: @user_management.status
    click_on "Create User management"

    assert_text "User management was successfully created"
    click_on "Back"
  end

  test "updating a User management" do
    visit user_managements_url
    click_on "Edit", match: :first

    fill_in "Address", with: @user_management.address
    fill_in "Company", with: @user_management.company
    fill_in "Email", with: @user_management.email
    fill_in "Expiration date", with: @user_management.expiration_date
    fill_in "First name", with: @user_management.first_name
    fill_in "Last name", with: @user_management.last_name
    fill_in "Phone", with: @user_management.phone
    fill_in "Policy effective", with: @user_management.policy_effective
    fill_in "Policy type", with: @user_management.policy_type
    fill_in "Premium", with: @user_management.premium
    fill_in "Status", with: @user_management.status
    click_on "Update User management"

    assert_text "User management was successfully updated"
    click_on "Back"
  end

  test "destroying a User management" do
    visit user_managements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User management was successfully destroyed"
  end
end
