//
//  AddEditViewController.swift
//  MyGym
//
//  Created by Thaylon Miller on 16/05/22.
//

import UIKit
import Foundation
import CoreData

class AddEditViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfObservacao: UITextField!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btImagem: UIButton!
    @IBOutlet weak var ivExercicio: UIImageView!
    
    var exercicio: Exercicio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    @IBAction func addEditImagem(_ sender: UIButton) {
        
    }
    @IBAction func addEdit(_ sender: UIButton) {
        if exercicio == nil {
            exercicio = Exercicio(context: context)
        }
        exercicio.nome = tfNome.text
        exercicio.observacao = tfObservacao.text
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
        navigationController?.popViewController(animated: true)
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
