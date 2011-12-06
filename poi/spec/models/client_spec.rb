require 'spec_helper'

describe Client do

 context "Adding a Client" do
   it "should have an email" do
     client = Factory(:client, :email => "test@test.com")
     client.email.should == "test@test.com"
   end
   it 'should have 20 clients' do
     clients = []
     20.times{|i| clients << Factory(:client)}
       clients.count.should == 20
   end
   it 'should require an email'do 
     client = Factory(:client)
     client.valid?.should be true
     client.email = nil
     client.save.should be false
     

   end
   it 'should require a billing contact' do
      client = Factory(:client)
      client.valid?.should be true
      client.contact = nil
      client.save.should be false
   end

   
  end
 context "Removing a Client" do
   it "should never delete permantly"
   it "should go into the archives"
 end
 context "Billing a Client" do
   it "should require a PO"
   it "should require a unique invoice"
 end
end
