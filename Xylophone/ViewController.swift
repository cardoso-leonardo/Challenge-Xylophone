//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//MARK: Imports
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
//MARK: Funções
    @IBAction func keyPressed(_ sender: UIButton) {

        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5

        //Bloco de código que executa depois de um determinado tempo (deadline).
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Sobe a opacidade para 100% após 0.2 segundos.
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    

}


