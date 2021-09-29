let trafficLight = "green"
if trafficLight == "green" {
    print("Go!")
} else if trafficLight == "yellow" {
    print("Prepare to stop")
} else if trafficLight == "red" {
    print("Stop")
} else {
    print("Invalid state")
}

switch trafficLight {
case "green":
    print("Go!")
case "yellow":
    print("Prepare to stop")
case "red":
    print("Stop")
default:
    print("Invalid state")
}
