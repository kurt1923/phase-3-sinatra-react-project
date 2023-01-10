class CustomersController < ApplicationController
    
    get '/customers' do
        Customer.order(:full_name).limit(1).to_json
    end

    get '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.to_json
    end
end