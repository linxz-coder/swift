func greeting3(name: String) -> Bool {
    if name == "Jack" || name == "Lin" {
        return true
    } else {
        return false
    }
}

var doorShouldOpen = greeting3(name: "Lin")
print(doorShouldOpen)
