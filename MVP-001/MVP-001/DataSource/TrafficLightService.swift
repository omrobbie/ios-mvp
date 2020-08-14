//
//  TrafficLightService.swift
//  MVP-001
//
//  Created by omrobbie on 14/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

class TrafficLightService {

    func getTrafficLight(colorName: String, callback: (TrafficLight?) -> ()) {
        let trafficLights = [
            TrafficLight(colorName: "Red", description: "Stop"),
            TrafficLight(colorName: "Green", description: "Go"),
            TrafficLight(colorName: "Yellow", description: "Be careful!")
        ]

        if let foundTraffic = trafficLights.first(where: {$0.colorName == colorName}) {
            callback(foundTraffic)
        } else {
            callback(nil)
        }
    }
}
