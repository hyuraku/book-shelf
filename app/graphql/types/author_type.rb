module Types
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
  end
end
