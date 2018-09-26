module Types
  class MutationType < Types::BaseObject
    # field :create_author, mutation: Mutations::CreateAuthor

    field :create_author, AuthorType,null: true,description: "Create an author" do
      argument :author, Types::AuthorInputType,required: true
    end
    def create_author(author:)
      Author.create(author.to_h)
    end

    field :update_author, Boolean, null: false, description: "Update an author" do
      argument :author, Types::AuthorInputType, required: true
    end

    def update_author(author:)
      existing = Author.where(id: author[:id]).first
      existing&.update(author.to_h)
    end

    # field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

  end
end
