//
//  MMSplashViewController.swift
//  ManagerIcare
//
//  Created by Bui Giang on 12/15/17.
//  Copyright © 2017 Bui Giang. All rights reserved.
//

import UIKit

class MMSplashViewController: MMBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let viewVC = self.storyboard?.instantiateViewController(withIdentifier: "tabbarId")
        DispatchQueue.main.async {
            self.present(viewVC!, animated: true) {
                print("present success")
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ClickButton(_ sender: Any) {

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
