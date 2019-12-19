import Foundation

public enum ArgsParserError: Error {
    case unknownKey(key: String)
}

public final class ArgsParser {
    private var _raws: [String]
    private var _exe: String = ""
    private var _args: [ArgKey: [String]] = [:]
    public var exe: String { _exe }
    public var args: [ArgKey: [String]] { return _args }

    public init(args: [String]) {
        _raws = args
    }

    public func parse() throws {
        _exe = ""
        _args = [:]

        guard _raws.count > 0 else {
            return
        }

        _exe = _raws.removeFirst()

        var idx = 0
        var arg: String = ""
        var key: ArgKey?
        var value: [String] = []
        while idx < _raws.count {
            arg = _raws[idx]
            if arg.hasPrefix("--") { // start new arg also end previous arg
                if key != nil {
                    _args[key!] = value
                }
                key = nil
                value = []
                let raw = String(arg.dropFirst(2))
                key = ArgKey(rawValue: raw)
                if key == nil {
                    throw ArgsParserError.unknownKey(key: raw)
                }
            } else {
                value.append(arg)
            }
            idx += 1
            if idx >= _raws.count { // last arg
                _args[key!] = value
            }
        }
    }
}
