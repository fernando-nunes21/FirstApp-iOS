//
//  PlanetViewController.swift
//  FirstApp-iOS-teste
//
//  Created by Fernando on 06/02/22.
//

import UIKit

class PlanetViewController: UIViewController {
    
    @IBOutlet weak var planet: UIImageView!
    @IBOutlet weak var explodePlanetEffect: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func explodePlanet(_ sender: Any) {
        UIView.animate(withDuration: 0.2) {
            self.planet.alpha = 0
        }
        
        explodePlanetEffect.animationImages = [
            UIImage(named: "explosao_15")!,
            UIImage(named: "explosao_12")!,
            UIImage(named: "explosao_9")!,
            UIImage(named: "explosao_6")!,
            UIImage(named: "explosao_3")!,
            UIImage(named: "explosao_0")!
        ]
        explodePlanetEffect.animationRepeatCount = 1
        explodePlanetEffect.startAnimating()
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
