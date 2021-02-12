import SwiftUI

@main
struct ReadMeApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView().environmentObject(Library())
    }
  }
}
