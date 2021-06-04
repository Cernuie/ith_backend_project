import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }

    app.get("markers") {req in 
        return ([
          {
              position: { lat: 43.6532, lng: -79.3832 },
              infoText:'Marker 1'
          },
          {
              position:{ lat: 43.6532, lng: -79.4832 },
              infoText:'Marker 2'
          },
          {
              position:{ lat: 43.7532, lng: -79.5832 },
              infoText:'Marker 3'
          }
      ])
    }
}
