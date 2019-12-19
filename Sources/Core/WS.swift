import Foundation

public final class WS {
    private let _args: [ArgKey: [String]]

    public init(args: [String] = CommandLine.arguments) throws {
        let parser = ArgsParser(args: args)
        try parser.parse()
        _args = parser.args
    }

    public func run() throws {
        print(_args)
    }
}
