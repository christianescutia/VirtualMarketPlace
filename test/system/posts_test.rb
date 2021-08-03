require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    check "Availability" if @post.availability
    fill_in "Date posted", with: @post.date_posted
    fill_in "Item", with: @post.item
    fill_in "Listing", with: @post.listing_id
    fill_in "Posting", with: @post.posting_id
    fill_in "Price", with: @post.price
    fill_in "Quantity", with: @post.quantity
    fill_in "User", with: @post.user_id
    fill_in "Views", with: @post.views
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    check "Availability" if @post.availability
    fill_in "Date posted", with: @post.date_posted
    fill_in "Item", with: @post.item
    fill_in "Listing", with: @post.listing_id
    fill_in "Posting", with: @post.posting_id
    fill_in "Price", with: @post.price
    fill_in "Quantity", with: @post.quantity
    fill_in "User", with: @post.user_id
    fill_in "Views", with: @post.views
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
