class PathExtractor {
    static func extract(name: String) -> String? {
        let components = name.components(separatedBy: ".")
        let containsType = components.count == 2
        guard containsType else { return nil }
        guard let resource = components.first,
            let type = components.last,
            let path = Bundle.main.path(forResource: resource, ofType: type) else {
                return nil
        }
        return path
    }
}
