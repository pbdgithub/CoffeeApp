//
//  DetailViewController.swift
//  CoffeeApp
//
//  Created by KSNALabs on 2/3/19.
//  Copyright © 2019 KSNALabs. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var coffeeDetail = CoffeeModel()
    
    @IBOutlet weak var coffeeImage: UIImageView!
    @IBOutlet weak var coffeeName: UILabel!
    @IBOutlet weak var coffeeDescription: UILabel!
    @IBOutlet weak var coffeePrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeName.text = coffeeDetail.coffeeName
        coffeeDescription.text = coffeeDetail.coffeeDescription
        coffeePrice.text = coffeeDetail.price
        coffeeImage.image = UIImage(named: coffeeDetail.coffeeImage!)
    }
    
    @IBAction func backAction(_ sender: Any){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func orderAction(_ sender: Any){
        let alertController = UIAlertController(title: "Coffee!", message: "Your order is successfully. Thank you", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { UIAlertAction in self.dismiss(animated: true, completion: nil)
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
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
