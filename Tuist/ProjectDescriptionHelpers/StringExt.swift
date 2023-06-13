extension String {
    var capitalizingFirstLetter: String {
        return prefix(1).uppercased() + dropFirst()
    }
}
