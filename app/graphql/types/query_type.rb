module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator" do
      argument :name, String, required: true
      argument :age, Integer, required: true
      end
    def test_field(name:,age:)
      Rails.logger.info context[:time]
      "Hello #{name}!,I am #{age} years old "
    end

    field :author, AuthorType, null: true,description: "One author" do
      argument :id, ID, required: true
    end
    def author(id:)
      Author.where(id: id).first
    end

    field :authors, [AuthorType],null: false

    def authors
      Author.all
    end
  end
end
