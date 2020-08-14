//
//  TrafficLightPresenter.swift
//  MVP-001
//
//  Created by omrobbie on 14/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import Foundation

protocol TrafficLightViewDelegate: NSObjectProtocol {

    func displayTrafficLight(description: String)
}

class TrafficLightPresenter {

    weak private var delegate: TrafficLightViewDelegate?

    private let trafficLightService: TrafficLightService

    init(trafficLightService: TrafficLightService) {
        self.trafficLightService = trafficLightService
    }

    func setViewDelegate(delegate: TrafficLightViewDelegate) {
        self.delegate = delegate
    }

    func trafficLightColorSelected(colorName: String) {
        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] (trafficLight) in

            if let description = trafficLight?.description {
                self?.delegate?.displayTrafficLight(description: description)
            }
        }
    }
}
