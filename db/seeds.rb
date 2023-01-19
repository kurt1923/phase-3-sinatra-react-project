puts "🌱  spices..."

Item.destroy_all
Project.destroy_all
Customer.destroy_all

Customer.create([
    {
        full_name: "admin",
        email: "admin",
        phone_number: "3",
        customer_id: 1111
    },
    {
        full_name: "Kurt Vermillion",
        email: "Kurtv0727@gmail.com",
        phone_number: "3333333333",
        customer_id: 3333
    },
    {
        full_name: "Kyle Vermillion",
        email: "Kurtv6118@gmail.com",
        phone_number: "1111111111",
        customer_id: 1111
    }
])

Project.create(project_name: "Add Ceiling Fan", project_description: "Adds fan/light and new switches. Price does not include fan itself.", labor_cost: 145, customer_id: 0)
Project.create(project_name: "Change Fan/Light", project_description: "Replace existing fan/light and switches. Price does not include fan itself.", labor_cost: 145, customer_id: 0)
Project.create(project_name: "Receptacle", project_description: "Adds receptacle in location provided.", labor_cost: 145, customer_id: 0)
Project.create(project_name: "Devices", project_description: "Replace receptacles, switches, dimmers, GFCI, outside covers.", labor_cost: 145, customer_id: 0)
Project.create(project_name: "GFCI", project_description: "Replace customer GFCI.", labor_cost: 145, customer_id: 0)
Project.create(project_name: "Wafer Lights", project_description: "Add recessed wafer lights in customer location.", labor_cost: 145, customer_id: 0)
Project.create(project_name: "Flood Lights", project_description: "Change out customers flood lights.", labor_cost: 145, customer_id: 0)
Project.create(project_name: "Replace Breaker", project_description: "Replaces homeowners existing breaker. Single breaker, double breaker, AFCI/GFCI.", labor_cost: 145, customer_id: 0)
Project.create(project_name: "Home Surge Protection", project_description: "Hangs Ceiling Fan", labor_cost: 145, customer_id: 0)
Project.create(project_name: "Exterior Receptacle", project_description: "Add exterior receptacles.", labor_cost: 145, customer_id: 0)

# Add Ceiling Fan
Item.create(item_name: "Box", item_cost: 8, project_id: 1, project_category: "Add Ceiling Fan", quantity: 0)
Item.create(item_name: "Switches", item_cost: 11, project_id: 1, project_category: "Add Ceiling Fan", quantity: 0)
Item.create(item_name: "Plates", item_cost: 4.75, project_id: 1, project_category: "Add Ceiling Fan", quantity: 0)
Item.create(item_name: "Wire is .35 per/f", item_cost: 0.35, project_id: 1, project_category: "Add Ceiling Fan", quantity: 0)
Item.create(item_name: "Additional Fans (Fans added after the first one).", item_cost: 75, project_id: 1, project_category: "Add Ceiling Fan", quantity: 0)
Item.create(item_name: "Fans Needed Hung With Above 10' Ceiling", item_cost: 100, project_id: 1, project_category: "Add Ceiling Fan", quantity: 0)
Item.create(item_name: "Ceiling Fans disposed of", item_cost: 25, project_id: 1, project_category: "Add Ceiling Fan", quantity: 0)


# Change Fan/Light
Item.create(item_name: "Total Fans", item_cost: 75, project_id: 2, project_category: "Change Fan/Light", quantity: 0)
Item.create(item_name: "Total Fans Needed Hung With Above 10' Ceiling", item_cost: 100, project_id: 2, project_category: "Change Fan/Light", quantity: 0)
Item.create(item_name: "Ceiling Fans disposed of", item_cost: 25, project_id: 2, project_category: "Change Fan/Light", quantity: 0)

# Receptacle
Item.create(item_name: "Receptacle", item_cost: 2.75, project_id: 3, project_category: "Receptacle", quantity: 0)
Item.create(item_name: "Box", item_cost: 6, project_id: 3, project_category: "Receptacle", quantity: 0)
Item.create(item_name: "Plate", item_cost: 2.50, project_id: 3, project_category: "Receptacle", quantity: 0)
Item.create(item_name: "Wire is .75 per/f", item_cost: 0.75, project_id: 3, project_category: "Receptacle", quantity: 0)

# Devices
Item.create(item_name: "Receptacle", item_cost: 2.75, project_id: 4, project_category: "Devices", quantity: 0)
Item.create(item_name: "Switches", item_cost: 2.50, project_id: 4, project_category: "Devices", quantity: 0)
Item.create(item_name: "Dimmers", item_cost: 35, project_id: 4, project_category: "Devices", quantity: 0)
Item.create(item_name: "GFCI", item_cost: 30, project_id: 4, project_category: "Devices", quantity: 0)
Item.create(item_name: "Outside Covers", item_cost: 12, project_id: 4, project_category: "Devices", quantity: 0)
Item.create(item_name: "Total Devices", item_cost: 75, project_id: 4, project_category: "Devices", quantity: 0)

# GFCI
Item.create(item_name: "Total GFCI amount", item_cost: 35, project_id: 5, project_category: "GFCI", quantity: 0)

# Wafer Lights
Item.create(item_name: "Total Wafer Lights", item_cost: 35, project_id: 6, project_category: "Wafer Lights", quantity: 0)
Item.create(item_name: "Box", item_cost: 6, project_id: 6, project_category: "Wafer Lights", quantity: 0)
Item.create(item_name: "Plate", item_cost: 4.75, project_id: 6, project_category: "Wafer Lights", quantity: 0)
Item.create(item_name: "Wire is .75 per/f", item_cost: 0.75, project_id: 6, project_category: "Wafer Lights", quantity: 0)

# Flood Light
Item.create(item_name: "Flood Lights Total", item_cost: 35, project_id: 7, project_category: "Flood Lights", quantity: 0)
Item.create(item_name: "Flood Lights Above 12'", item_cost: 100, project_id: 7, project_category: "Flood Lights", quantity: 0)

# Breaker
Item.create(item_name: "Single Breaker", item_cost: 15, project_id: 8, project_category: "Replace Breaker", quantity: 0)
Item.create(item_name: "Double Breaker", item_cost: 30, project_id: 8, project_category: "Replace Breaker", quantity: 0)
Item.create(item_name: "AFCI/GFCI Breaker", item_cost: 65, project_id: 8, project_category: "Replace Breaker", quantity: 0)

# Home Surge Protection
Item.create(item_name: "Total Panels", item_cost: 150, project_id: 9, project_category: "Home Surge Protection", quantity: 0)
Item.create(item_name: "Space Available in Panel", item_cost: 165, project_id: 9, project_category: "Home Surge Protection", quantity: 0)

# Exterior Receptacle
Item.create(item_name: "Outside Box", item_cost: 10, project_id: 10, project_category: "Exterior Receptacle", quantity: 0)
Item.create(item_name: "Bubble Cover", item_cost: 12, project_id: 10, project_category: "Exterior Receptacle", quantity: 0)
Item.create(item_name: "GFCI", item_cost: 30, project_id: 10, project_category: "Exterior Receptacle", quantity: 0)
Item.create(item_name: "Wire is .95 per/f", item_cost: 0.95, project_id: 10, project_category: "Exterior Receptacle", quantity: 0)




puts "✅ Done seeding!"
