//
//  ViewController.swift
//  MVP-001
//
//  Created by omrobbie on 14/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDescription: UILabel!

    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightPresenter.setViewDelegate(delegate: self)
    }

    @IBAction func btnRedTapped(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }

    @IBAction func btnYellowTapped(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Yellow")
    }

    @IBAction func btnGreenTapped(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }
}

extension ViewController: TrafficLightViewDelegate {

    func displayTrafficLight(description: String) {
        lblDescription.text = description
    }
}
