require 'test_helper'

class DeliveryNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_note = delivery_notes(:one)
  end

  test "should get index" do
    get delivery_notes_url, as: :json
    assert_response :success
  end

  test "should create delivery_note" do
    assert_difference('DeliveryNote.count') do
      post delivery_notes_url, params: { delivery_note: { customer_id: @delivery_note.customer_id, delivery_number: @delivery_note.delivery_number, water_id: @delivery_note.water_id } }, as: :json
    end

    assert_response 201
  end

  test "should show delivery_note" do
    get delivery_note_url(@delivery_note), as: :json
    assert_response :success
  end

  test "should update delivery_note" do
    patch delivery_note_url(@delivery_note), params: { delivery_note: { customer_id: @delivery_note.customer_id, delivery_number: @delivery_note.delivery_number, water_id: @delivery_note.water_id } }, as: :json
    assert_response 200
  end

  test "should destroy delivery_note" do
    assert_difference('DeliveryNote.count', -1) do
      delete delivery_note_url(@delivery_note), as: :json
    end

    assert_response 204
  end
end
