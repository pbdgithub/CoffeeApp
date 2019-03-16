//
//  ViewController.swift
//  CoffeeApp
//
//  Created by KSNALabs on 2/3/19.
//  Copyright © 2019 KSNALabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var logoView: UIView!
    @IBOutlet weak var tableView: UITableView!
    var dataSource = [CoffeeModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "CoffeeTableViewCell", bundle: nil), forCellReuseIdentifier: "TableCells")
        self.logoView.layer.cornerRadius = self.logoView.frame.size.width/2
        self.logoView.clipsToBounds = true
        
        let coffeeItem = CoffeeModel()
        coffeeItem.coffeeName = "Affogato"
        coffeeItem.coffeeImage = "Coffee-1"
        coffeeItem.coffeeDescription = "A roast taste that results when the beans are roasted, at too low a temperature, over too much time, or not cooled to room temperature expediently."
        coffeeItem.price = "$1"
        coffeeItem.openUntil = "Open until 6:00 PM"
        let coffeeItem2 = CoffeeModel()
        coffeeItem2.coffeeName = "Americano"
        coffeeItem2.coffeeImage = "Coffee-2"
        coffeeItem2.coffeeDescription = "Ability to taste the fruit itself with little interference from its processing. Wet processed coffees generally present cleaner profiles than Dry process coffees"
        coffeeItem2.price = "$2"
        coffeeItem2.openUntil = "Open until 7:00 PM"
        let coffeeItem3 = CoffeeModel()
        coffeeItem3.coffeeName = "Bicerin"
        coffeeItem3.coffeeImage = "Coffee-3"
        coffeeItem3.coffeeDescription = "This coffee delights the senses with the taste of ripe, chocolate-toned fruit without a hint of sharpness or acidity. Moderate aging further rounds its flavor while developing body that is deep, creamy and full."
        coffeeItem3.price = "$1.5"
        coffeeItem3.openUntil = "Open until 6:30 PM"
        let coffeeItem4 = CoffeeModel()
        coffeeItem4.coffeeName = "Breve"
        coffeeItem4.coffeeImage = "Coffee-4"
        coffeeItem4.coffeeDescription = "A fun easy to drink, flavorful decaf coffee that really does have a great taste at an affordable price. Good for both drip and espresso."
        coffeeItem4.price = "$3"
        coffeeItem4.openUntil = "Open until 8:00 PM"
        let coffeeItem5 = CoffeeModel()
        coffeeItem5.coffeeName = "Café Bombón"
        coffeeItem5.coffeeImage = "Coffee-5"
        coffeeItem5.coffeeDescription = "This coffee is so smooth you wouldn’t know it is decaffeinated! A blend of some of the best coffee growing regions of the world."
        coffeeItem5.price = "$5"
        coffeeItem5.openUntil = "Open until 6:00 PM"
        let coffeeItem6 = CoffeeModel()
        coffeeItem6.coffeeName = "Café au lait"
        coffeeItem6.coffeeImage = "Coffee-6"
        coffeeItem6.coffeeDescription = ""
        coffeeItem6.price = "$3"
        coffeeItem6.openUntil = "Open until 7:00 PM"
        let coffeeItem7 = CoffeeModel()
        coffeeItem7.coffeeName = "Caffé Corretto"
        coffeeItem7.coffeeImage = "Coffee-7"
        coffeeItem7.coffeeDescription = "This particular type is Supremo; this word is a coffee grading term in Colombia. Supremo coffee beans are slightly larger than Excelso beans. Supremo beans are a screen size of 17 and 18."
        coffeeItem7.price = "$2.5"
        coffeeItem7.openUntil = "Open until 9:00 PM"
        
        dataSource.append(coffeeItem)
        dataSource.append(coffeeItem2)
        dataSource.append(coffeeItem3)
        dataSource.append(coffeeItem4)
        dataSource.append(coffeeItem5)
        dataSource.append(coffeeItem6)
        dataSource.append(coffeeItem7)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCells") as! CoffeeTableViewCell
        cell.coffeeName.text = dataSource[indexPath.row].coffeeName
        cell.coffeePrice.text = dataSource[indexPath.row].price
        cell.imgItem.image = UIImage(named: dataSource[indexPath.row].coffeeImage!)
        
        return  cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC =  self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.coffeeDetail = dataSource[indexPath.row]
        self.present(detailVC, animated: true, completion: nil)

    }
}

