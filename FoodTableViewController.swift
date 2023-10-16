//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by shark boy on 10/16/23.
//

import UIKit

class FoodTableViewController: UITableViewController {

    
    
    var meals: [Meal] {
        [ Meal(name: "breakfast", food: [Food(name: "salisbury steak" ),
                                         Food(name: "sirloin steak" ),
                                         Food(name: "steak and eggs" )]),
          Meal(name: "lunch", food: [Food(name: "venison steak" ),
                                           Food(name: "stonk"),
                                           Food(name: "yorkeshire pudding")]),

          Meal(name: "dinner", food: [Food(name: "egg" ),
                                           Food(name: "egg" ),
                                           Food(name: "egg" )]),

        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let meal = meals[section]
        
        
        return meal.food.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section]
        let name = meal.name // kinda silly man...
        return name
        
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
            let food = meal.food[indexPath.row] // gotta be able to pseudocode this...
        
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        
        // Configure the cell...
        cell.contentConfiguration = content // necessary to do lol oops
        
        return cell
    }

    

}
