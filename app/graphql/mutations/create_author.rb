module Mutations
  class CreateAuthor < GraphQL::Schema::Mutation
    # TODO: define return fields
    # field :create_author, Types::AuthorType,
    null true

    # TODO: define arguments
    argument :first_name, String, {required: false, camelize: false}
    argument :last_name, String, {required: false, camelize: false}
    argument :birth_year, Int, required: false
    argument :is_alive, Boolean, {required: false, camelize: false}

    # TODO: define resolve method
    def resolve(first_name:,last_name:,birth_year:,is_alive:)
      Author.create(first_name: first_name,last_name: last_name,birth_year: birth_year,is_alive: is_alive)
    end
  end
end
