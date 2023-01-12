class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
  get '/projects' do
    Project.all.to_json
  end

  get '/customers' do
    Customer.all.to_json(include: {projects: {include: :items}})
  end

  get '/customers/:id' do
    Customer.find(params[:id]).to_json(include: :projects)   
  end

  get '/customers/:id/projects' do
    customer = Customer.find(params[:id])
    customer.projects.to_json
  end

  get '/projects/:id' do
    Project.find(params[:id]).to_json
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
    project = Project.create(
      project_name: params[:project_name],
      project_description: params[:project_description],
      labor_cost: params[:labor_cost],
      customer_id: params[:customer_id]
    )
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
    project.to_json
  end

  delete '/customers/:id' do
    customer = Customer.find(params[:id])
    customer.destroy
    customer.to_json
  end

end
