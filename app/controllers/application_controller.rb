class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
  get '/customers' do
    Customer.all.to_json(include: {projects: {include: :items}})
  end

  get '/customers/:id' do
    Customer.find(params[:id]).to_json(include: :projects)   
  end

  get '/customers/:id/projects' do
    customer = Customer.find(params[:id])
    customer.projects.to_json(include: :items)
  end

  get '/projects' do
    Project.all.to_json(include: :items)
  end

  get '/projects/:id' do
    Project.find(params[:id]).to_json(include: :items)
  end

  get '/items' do
    Item.all.to_json
  end

  get 'items/:id' do
    Item.find(params[:id]).to_json
  end

  post '/customers' do
    customer = Customer.create(
      full_name: params[:full_name],
      email: params[:email],
      phone_number: params[:phone_number],
      customer_id: params[:customer_id]
    )
    customer.to_json
  end

  post '/projects' do
    project = Project.create(params)
    project.to_json(include: :items)
  end

  post '/items' do
    project = Item.create(params)
    project.to_json
  end

  patch '/customers/:id' do
    customer = Customer.find(params[:id])
    customer.update(
      full_name: params[:full_name],
      email: params[:email],
      phone_number: params[:phone_number],
      customer_id: params[:customer_id]
    )
    customer.to_json
  end

  delete '/projects/:id' do
    project = Project.find(params[:id])
    project.destroy
    project.to_json(include: :items)
  end

  delete '/customers/:id' do
    customer = Customer.find(params[:id])
    customer.destroy
    customer.to_json
  end

  delete '/items/:id' do
    item = Item.find(params[:id])
    item.destroy
    item.to_json
  end

  patch '/items/:id' do
    item = Item.find(params[:id])
    item.update(
      item_name: params[:item_name],
      item_cost: params[:item_cost],
      project_id: params[:project_id],
      project_category: params[:project_category],
      quantity: params[:quantity]
    )
    item.to_json
  end

end
