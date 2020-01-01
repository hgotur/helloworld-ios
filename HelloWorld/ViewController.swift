//
//  ViewController.swift
//  HelloWorld
//
//  Created by Sai Gotur on 12/25/19.
//  Copyright © 2019 Sai Gotur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func showMessage(sender:  UIButton) {
		let dictionary: [String: String] = [
			"🐶": "Dog",
			"🦊": "Fox",
			"🦁": "Lion",
			"🐸": "Frog"]
		
		let selectedButton = sender
		
		if let emoji = selectedButton.titleLabel?.text {
			if let meaning = dictionary[emoji] {
				let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
				alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
				present(alertController, animated: true, completion: nil)
			}
			
		}
		
		
	}
}

