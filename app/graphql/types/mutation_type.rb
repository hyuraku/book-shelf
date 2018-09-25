module Types
  class MutationType < Types::BaseObject

    field :create_author, AuthorType,null: true,description: "Create an author" do
      field :first_name, String,required: true,camelize: false
      field :last_name, String,required: true,camelize: false
      field :birth_year, Int,required: false
      field :is_alive, Boolean,required: true,camelize: false
    end

    def create_author(first_name: ,last_name:,birth_year:,is_alive:)
      Author.create(first_name: first_name,last_name: last_name,birth_year: birth_year,is_alive: is_alive)
    end


  end
end
