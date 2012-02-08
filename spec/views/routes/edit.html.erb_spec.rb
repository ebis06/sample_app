require 'spec_helper'

describe "routes/edit.html.erb" do
  before(:each) do
    @route = assign(:route, stub_model(Route,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :trace => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => routes_path(@route), :method => "post" do
      assert_select "input#route_title", :name => "route[title]"
      assert_select "textarea#route_description", :name => "route[description]"
      assert_select "input#route_image_url", :name => "route[image_url]"
      assert_select "input#route_trace", :name => "route[trace]"
      assert_select "input#route_price", :name => "route[price]"
    end
  end
end
