//
//  CardsTableViewController.swift
//  CardWallet
//
//  Created by Grzegorz Przybyła on 09/01/2018.
//  Copyright © 2018 Ania Kulis. All rights reserved.
//

import UIKit

struct Card{
    var name: String
    var number: Int
    var photo: UIImage?


    init(name: String, number: Int, photo: UIImage){
    self.name = name
    self.number = number
    self.photo = photo
}

}

class CardsTableViewController: UITableViewController {

    
    var cards = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleCards()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    private func loadSampleCards(){
        let photo1 = UIImage(named: "logoCard")
        
        guard let card1 = Card(name:"Karta 1", number: 1, photo: photo1) else {fatalError("Unable to instantiate card1")}
        
        guard let card2 = Card(name:"Karta 2", number: 2, photo: photo1) else {fatalError("Unable to instantiate card2")}
        
        guard let card3 = Card(name:"Karta 3", number:3, photo: photo1) else {fatalError("Unable to instantiate card3")}
        
        cards += [card1, card2, card3]
    }

}
