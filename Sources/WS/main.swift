import Core

do {
    let ws = try WS()
    try ws.run()
} catch {
    print("Whoops! An error occurred: \(error)")
}
