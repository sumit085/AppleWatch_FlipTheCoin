//
//  InterfaceController.swift
//  FlipTheCoin WatchKit Extension
//
//  Created by Admin on 01/05/20.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var lbl: WKInterfaceLabel!
   
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    @IBAction func onTapFlipTheCoin() {
        lbl.setText("Flipping the coin.")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){ [weak self] in
            self?.lbl.setText("Flipping the coin..")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){ [weak self] in
                self?.lbl.setText("Flipping the coin...")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){ [weak self] in
                    let result = Bool.random()
                    if (result){
                        self?.lbl.setText("it is heads")
                    }else{
                        self?.lbl.setText("it is tails")
                    }
                }
            }
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
