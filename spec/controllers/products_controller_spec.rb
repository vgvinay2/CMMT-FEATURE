require 'rails_helper'

# Change this ProductsController to your project
RSpec.describe ProductsController, type: :controller do

    #login_user
    
    let(:valid_attributes) {
        { name: "Test title!", description: "This is a test description", price: 2, quantity: 2 }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            Product.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            #expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
end