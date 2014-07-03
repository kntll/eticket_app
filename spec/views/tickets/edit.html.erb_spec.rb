require 'spec_helper'

describe "tickets/edit" do
  before(:each) do
    @ticket = assign(:ticket, stub_model(Ticket,
      :pdf => "MyString",
      :price => 1.5,
      :user_id => 1,
      :event_id => 1
    ))
  end

  it "renders the edit ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do
      assert_select "input#ticket_pdf[name=?]", "ticket[pdf]"
      assert_select "input#ticket_price[name=?]", "ticket[price]"
      assert_select "input#ticket_user_id[name=?]", "ticket[user_id]"
      assert_select "input#ticket_event_id[name=?]", "ticket[event_id]"
    end
  end
end
