//
//  DetailViewController.swift
//  SplitProject
//
//  Created by Evgeny Kuklin on 10/01/2019.
//  Copyright © 2019 Evgeny Kuklin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any addi tional setup after loading the view, typically from a nib.
        let item = UIBarButtonItem(title: "all", style: .plain, target: self, action: #selector(DetailViewController.showAll(_:)));
        navigationItem.rightBarButtonItem = item;
        configureView()
    }
    
    @objc func showAll(_ sender:Any!){
        splitViewController?.preferredDisplayMode = .allVisible;
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

