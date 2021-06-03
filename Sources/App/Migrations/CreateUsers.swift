import Fluent

struct CreateUsers: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("Users")
            .id()
            .field("name", .string, .required)
            .field("user_name", .string, .required)
            .field("password", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Users.schema).delete()
    }
}