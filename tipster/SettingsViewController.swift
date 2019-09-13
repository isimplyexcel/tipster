//
//  SettingsViewController.swift
//  tipster
//
//  Created by Paul Min on 9/9/19.
//  Copyright © 2019 Paul Min. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        //  set default tip
        let defaults = UserDefaults.standard
        let tipControlIndex = defaults.integer(forKey: "defaultTipIndex")
        defaultTipControl.selectedSegmentIndex = tipControlIndex
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setDefaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "defaultTipIndex")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
