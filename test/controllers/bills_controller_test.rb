require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post :create, bill: { by_akbar: @bill.by_akbar, by_amar: @bill.by_amar, by_anthony: @bill.by_anthony, date: @bill.date, event: @bill.event, had_to_give_by_akbar: @bill.had_to_give_by_akbar, had_to_give_by_amar: @bill.had_to_give_by_amar, had_to_give_by_anthony: @bill.had_to_give_by_anthony, location: @bill.location, total_amount: @bill.total_amount }
    end

    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should show bill" do
    get :show, id: @bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill
    assert_response :success
  end

  test "should update bill" do
    patch :update, id: @bill, bill: { by_akbar: @bill.by_akbar, by_amar: @bill.by_amar, by_anthony: @bill.by_anthony, date: @bill.date, event: @bill.event, had_to_give_by_akbar: @bill.had_to_give_by_akbar, had_to_give_by_amar: @bill.had_to_give_by_amar, had_to_give_by_anthony: @bill.had_to_give_by_anthony, location: @bill.location, total_amount: @bill.total_amount }
    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete :destroy, id: @bill
    end

    assert_redirected_to bills_path
  end
end
