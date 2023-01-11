puts "🌱 Seeding spices..."

Item.destroy_all
Project.destroy_all
Customer.destroy_all

Item.create(item_name: "Ceiling Fan Small", item_cost: 100, project_id: 0, project_category: "Ceiling Fan")
Item.create(item_name: "Ceiling Fan Large", item_cost: 300, project_id: 0, project_category: "Ceiling Fan")
Item.create(item_name: "Ceiling Fan Owner Bought", item_cost: 0, project_id: 0, project_category: "Ceiling Fan")
Item.create(item_name: "Ceiling Fan Small", item_cost: 100, project_id: 0, project_category: "Ceiling Fan2")
Item.create(item_name: "Ceiling Fan Large", item_cost: 300, project_id: 0, project_category: "Ceiling Fan2")
Item.create(item_name: "Ceiling Fan Owner Bought", item_cost: 0, project_id: 0, project_category: "Ceiling Fan2")

Project.create(project_name: "Ceiling Fan", project_description: "Hangs Ceiling Fan", labor_cost: 200, customer_id: 1)
Project.create(project_name: "Ceiling Fan2", project_description: "Hangs Ceiling Fan", labor_cost: 200, customer_id: 1)
Project.create(project_name: "no id Ceiling Fan", project_description: "Hangs Ceiling Fan", labor_cost: 200, customer_id: 0)
Project.create(project_name: "no id Ceiling Fan 2", project_description: "Hangs Ceiling Fan", labor_cost: 200, customer_id: 0)

Customer.create([
    {
        full_name: "Kurt Vermillion",
        email: "Kurtv0727@gmail.com",
        phone_number: "3333333333",
        customer_id: 3333
    },
    {
        full_name: "Kevin Vermillion",
        email: "Kurtv1923@gmail.com",
        phone_number: "2222222222",
        customer_id: 2222
    },
    {
        full_name: "Kyle Vermillion",
        email: "Kurtv6118@gmail.com",
        phone_number: "1111111111",
        customer_id: 1111
    }
])
puts "✅ Done seeding!"
