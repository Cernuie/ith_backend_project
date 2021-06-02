import Vapor
import Fluent
import FluentMySQLDriver

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    // register routes
    try routes(app)
    app.databases.use(.mysql(hostname: "localhost", username: "root", password: "password", database: "itw_project"), as: .mysql)

    // try services.register(MySQLProvider())

    // let mysql = try MySQLDatabase(config: MySQLDatabaseConfig(
    //     hostname: "localhost",
    //     username: "root",
    //     password: "password",
    //     database: "ith_project"
    // ))

    // var databases = DatabasesConfig()
    // databases.add(database: mysql, as: .mysql)
    // services.register(databases)

}
