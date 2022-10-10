defmodule FoodDiaryWeb.Schema.Types.User do
  use Absinthe.Schema.Notation

  @desc "Logic user representation"
  object :user do
    field :id, non_null(:id), description: "User's id. Must be an integer."
    field :name, non_null(:string), description: "User's name. Must be a string."
    field :email, non_null(:string), description: "User's e-mail. Must be a string."
    field :meals, list_of(:meal)
  end

  input_object :create_user_input do
    field :name, non_null(:string), description: "User's name. Must be a string."
    field :email, non_null(:string), description: "User's e-mail. Must be a string."
  end
end
