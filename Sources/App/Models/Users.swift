import Vapor
import Fluent
import FluentMySQLDriver

final class Users: Model {
    // Name of the table or collection.
    static let schema = "Users"

    // Unique identifier for the user.
    @ID(key: .id)
    var id: UUID?

    // The User's name.
    @Field(key: "name")
    var name: String

    // User's username

    @Field(key: "user_name")
    var user_name: String

    // User's password

    @Field(key: "password")
    var password: String

    // Creates a new, empty User.
    init() { }

    // Creates a new User with all properties set.
    init(id: UUID? = nil, name: String, user_name: String, password: String) {
        self.id = id
        self.name = name
        self.user_name = user_name
        self.password = password
    }
}
