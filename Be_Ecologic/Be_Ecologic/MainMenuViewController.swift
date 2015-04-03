//
//  MainMenuViewController.swift
//  Be_Ecologic
//
//  Created by Eric García on 23/03/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let segueID = segue.identifier {
            let destinationController = segue.destinationViewController as InfoResiduosViewController
            switch segueID {
            case "getBoteInfoPapel":
                destinationController.boteImage = "bote_papel.png"
                destinationController.depositarText = "Todos los envases de cartón y el papel que usamos se puede reciclar, como por ejemplo: Cajas de galletas, cereales, zapatos, productos congelados, papel de envolver, etc."
                destinationController.noDepositarText = "Todo aquello que no sea papel ni cartón o que aún siéndolo, esté muy manchado de grasa, aceite o restos orgánicos. Tampoco los briks, pues además de cartón tienen plástico y aluminio en su composición."
                break
            case "getBoteInfoMetal":
                destinationController.boteImage = "bote_plastico.png"
                destinationController.depositarText = "Botes de bebidas, papel aluminio, carcasas de computadoras hechas de aluminio, latas de converva, bandejas de aluminio, aerosoles, tapas y tapones metálicos."
                destinationController.noDepositarText = "Todo lo que no esté elaborado de algún tipo de metal."
                break
            case "getBoteInfoPlastico":
                destinationController.boteImage = "bote_plastico.png"
                destinationController.depositarText = "Botellas y envases de plástico. como por ejemplo: Botellas de agua, refresco, leche, envases de productos de limpieza de gel, baño, colonia, champú, etc. Envoltura de plásticos, bolsas de papagas fritas golosinas y plásticos de los supermercados."
                destinationController.noDepositarText = "Envases de cartón, papel, ni envases de vidrio. Ni todo aquello que no sea envase, como por ejemplo: Calzado, ropa, juguetes, desechos orgánicos, pequeños electrodomésticos, pañales, cubetas y CD's."
                break
            case "getBoteInfoVidrio":
                destinationController.boteImage = "bote_vidrio.png"
                destinationController.depositarText = "Envases de vidrio, botellas de vidrio, ya sean de vino, licores, frascos de perfume y colonia. Tarros de mermeladas, etc."
                destinationController.noDepositarText = "Todo lo que no sea un envase de vidrio. Bombillas, tubos fluorescentes, porcelana, cerámica, cántaros de cristal, ventanas o espejos, vasos, copas de cristal."
                break
            default:
                destinationController.boteImage = "Error"
                destinationController.depositarText = "Error"
                destinationController.noDepositarText = "Error"
                break
            }
        }
    }
}
