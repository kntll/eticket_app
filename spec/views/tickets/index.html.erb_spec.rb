require 'spec_helper'

describe "tickets/index" do
  before(:each) do
    assign(:tickets, [
      stub_model(Ticket,
        :pdf => "Pdf",
        :price => 1.5,
        :user_id => 1,
        :event_id => 2
      ),
      stub_model(Ticket,
        :pdf => "Pdf",
        :price => 1.5,
        :user_id => 1,
        :event_id => 2
      )
    ])
  end

  it "renders a list of tickets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pdf".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
