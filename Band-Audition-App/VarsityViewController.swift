//
//  VarsityViewController.swift
//  Band-Audition-App
//
//  Created by ECCLES, JUSTIN on 12/7/16.
//  Copyright © 2016 Copy Pasta Coding. All rights reserved.
//

import UIKit

class VarsityViewController: UIViewController
{

    //MARK Properties
    @IBOutlet var leftSwipe: UISwipeGestureRecognizer!
    @IBOutlet var rightSwipe: UISwipeGestureRecognizer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK Actions
    @IBAction func segueNext(_ sender: UISwipeGestureRecognizer)
    {
        if((tabBarController?.selectedIndex)! < 3)
        {
            tabBarController?.selectedIndex += 1
        }
    }
    
    @IBAction func seguePrevious(_ sender: UISwipeGestureRecognizer)
    {
        if((tabBarController?.selectedIndex)! > 0)
        {
            tabBarController?.selectedIndex -= 1
        }
    }
    
    
    @IBAction func segueToVPAudition(_ sender: UIButton)
    {
        instrumentType = sender.titleLabel!.text!
        //Following three lines "presents" the FPAuditionViewController programatically.
        let newVCName = "VPAudition"
        let viewController = storyboard?.instantiateViewController(withIdentifier: newVCName)
        present(viewController!, animated: true, completion: nil)
    }

    @IBAction func recieveVPUnwindSegue(unwindSegue: UIStoryboardSegue)
    {
        //No code should go here.
    }

}
