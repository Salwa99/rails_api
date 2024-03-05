# JSON:API Rails API Project Documentation

## Introduction

This documentation provides an overview and guide for a Ruby on Rails API project that utilizes the JSON:API standard and the JSONAPI::Resources (JR) gem. The application consists of two models: Restaurant and Dish, with associated migrations, seed data, and controllers.

## 1. Models and Migrations

Models in Rails represent database tables. This project includes two models:

- Restaurant
- Dish

Migrations, located in the `db/migrate` directory, define changes to the database schema. Use the `rails generate` command to create migration files, and apply changes with `rails db:migrate`.

## 2. Associations

In the Dish model, a foreign key relationship is set up using `references :restaurant`, indicating that a dish belongs to a restaurant. Additionally, `belongs_to :restaurant` in the Dish model establishes the association from the other side, indicating that a dish belongs to a specific restaurant.

## 3. Seeding Data

The `db/seeds.rb` file populates the database with sample data. Execute `rails db:seed` to create records for restaurants and dishes.

## 4. JSONAPI::Resources

Add JSONAPI::Resources (JR) to the project by including it in the Gemfile and running `bundle install`. Resources in JR (e.g., RestaurantResource, DishResource) define how models are exposed via the API.

## 5. Resource Configuration

Within resource classes, explicitly specify attributes and relationships for exposure in the API response. Configuration involves defining attributes (e.g., name, address) and relationships (e.g., dishes) to include in the API response.

## 6. Controllers

JR provides a generator to create resource controllers (e.g., RestaurantController, DishController) inheriting from `JSONAPI::ResourceController`. Controllers handle HTTP requests for resources, and consider adjusting Rails security features for API use.

## 7. Routes

Configure routes in `config/routes.rb`. JR provides helpers to set up routes compatible with JSON:API standards. Standard CRUD routes (GET, POST, PATCH/PUT, DELETE) are created for both Restaurant and Dish resources.

## 8. JSON:API Response

Accessing a resource endpoint (e.g., `/restaurants/1`) responds with JSON formatted according to the JSON:API specification. The response includes data, id, type, attributes, and relationships components, providing information about the requested resource.

## 10. Running the Server

Start the server with the `rails server` command, and access the API at `http://localhost:3000`.

**Note:** Keep the gem versions and dependencies updated for security and compatibility reasons.
