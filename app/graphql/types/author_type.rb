module Types
  class AuthorInputType < GraphQL::Schema::InputObject
    graphql_name "AuthorInputType"
    description "All the attribute for creating an author"

    argument :first_name, String,required: false,camelize: false
    argument :last_name, String,required: false,camelize: false
    argument :birth_year, Int,required: false
    argument :is_alive, Boolean,required: false,camelize: false
  end

  class AuthorType < Types::BaseObject
    description "An author"

    field :id, ID,null: false
    field :first_name, String,null: true,camelize: false
    field :last_name, String,null: true,camelize: false
    field :birth_year, Int,null: false
    field :is_alive, Boolean,null: true,camelize: false
    field :full_name, String,null: true,camelize: false

    def full_name
      ([object.first_name,object.last_name].compact).join
    end

    field :coordinates, Types::CoordinatesType, null: false

    field :publication_year, [Int],null: false
  end
end
