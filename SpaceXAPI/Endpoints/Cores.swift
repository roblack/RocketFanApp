import Foundation

public enum Cores {
    case all
    case one(String)
    case upcoming
    case past
}

extension Cores: Endpoint {
    public var path: String {
        switch self {
        case .all:
            return "/cores"
        case .one(let coreSerial):
            return "/cores/\(coreSerial)"
        case .upcoming:
            return "/cores/upcoming"
        case .past:
            return "/cores/past"
        }
    }
}
