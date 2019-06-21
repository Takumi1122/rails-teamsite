require 'test_helper'

class EntryImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get entry_images_index_url
    assert_response :success
  end

  test "should get new" do
    get entry_images_new_url
    assert_response :success
  end

  test "should get edit" do
    get entry_images_edit_url
    assert_response :success
  end

end
