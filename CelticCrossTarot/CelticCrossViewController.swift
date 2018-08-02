//
//  CelticCrossViewController.swift
//  CelticCrossTarot
//
//  Created by Greenybox on 2018/8/1.
//  Copyright © 2018年 Greenybox. All rights reserved.
//

import UIKit

extension UIImage {
    func rotate(radians: CGFloat) -> UIImage {
        let rotatedSize = CGRect(origin: .zero, size: size)
            .applying(CGAffineTransform(rotationAngle: CGFloat(radians)))
            .integral.size
        UIGraphicsBeginImageContext(rotatedSize)
        if let context = UIGraphicsGetCurrentContext() {
            let origin = CGPoint(x: rotatedSize.width / 2.0,
                                 y: rotatedSize.height / 2.0)
            context.translateBy(x: origin.x, y: origin.y)
            context.rotate(by: radians)
            draw(in: CGRect(x: -origin.x, y: -origin.y,
                            width: size.width, height: size.height))
            let rotatedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return rotatedImage ?? self
        }
        
        return self
    }
   
    
}


class CelticCrossViewController: UIViewController {

    @IBAction func drawCardAction(_ sender: Any) {
        let angle =  CGFloat(Double.pi / 2)
        let tr = CGAffineTransform.identity.rotated(by: angle)
        CardView02.transform = tr
        var drawCardShuffle = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","74","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77"]
        drawCardShuffle.shuffle()
        CardView01.image = UIImage(named: "\(drawCardShuffle[0])")
        let View01 = Int.random(in: 0...1)
        if View01 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView01.transform = tr
        }
        CardView02.image = UIImage(named: "\(drawCardShuffle[1])")
        let View02 = Int.random(in: 0...1)
        if View02 == 0 {
            let angle =  CGFloat(3*Double.pi / 2)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView02.transform = tr
        }
        CardView03.image = UIImage(named: "\(drawCardShuffle[2])")
        let View03 = Int.random(in: 0...1)
        if View03 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView03.transform = tr
        }
        CardView04.image = UIImage(named: "\(drawCardShuffle[3])")
        let View04 = Int.random(in: 0...1)
        if View04 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView04.transform = tr
        }
        CardView05.image = UIImage(named: "\(drawCardShuffle[4])")
        let View05 = Int.random(in: 0...1)
        if View05 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView05.transform = tr
        }
        CardView06.image = UIImage(named: "\(drawCardShuffle[5])")
        let View06 = Int.random(in: 0...1)
        if View06 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView06.transform = tr
        }
        CardView07.image = UIImage(named: "\(drawCardShuffle[6])")
        let View07 = Int.random(in: 0...1)
        if View07 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView07.transform = tr
        }
        CardView08.image = UIImage(named: "\(drawCardShuffle[7])")
        let View08 = Int.random(in: 0...1)
        if View08 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView08.transform = tr
        }
        CardView09.image = UIImage(named: "\(drawCardShuffle[8])")
        let View09 = Int.random(in: 0...1)
        if View09 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView09.transform = tr
        }
        CardView10.image = UIImage(named: "\(drawCardShuffle[9])")
        let View10 = Int.random(in: 0...1)
        if View10 == 0 {
            let angle =  CGFloat(Double.pi / 1)
            let tr = CGAffineTransform.identity.rotated(by: angle)
            CardView10.transform = tr
        }
        drawAction.isHidden = true
        drawAgain.isHidden = false
        for imageAll in allCardView{
            imageAll.isHidden = false
        }
        for buttonAll in allCardBut{
            buttonAll.isHidden = false
        }
        CardImage.isHidden = true
        exitButton.isHidden = true

            }
            
    
    @IBAction func ViewCard01(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView01.image
        exitButton.isHidden = false
    }
    
    @IBAction func ViewCard02(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView02.image
        exitButton.isHidden = false
    }
    @IBAction func ViewCard04(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView04.image
        exitButton.isHidden = false
    }
    @IBAction func ViewCard03(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView03.image
        exitButton.isHidden = false
    }
    @IBAction func ViewCard05(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView05.image
        exitButton.isHidden = false
    }
    @IBAction func ViewCard06(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView06.image
        exitButton.isHidden = false
    }
    @IBAction func ViewCard07(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView07.image
        exitButton.isHidden = false
    }
    @IBAction func ViewCard08(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView08.image
        exitButton.isHidden = false
    }
    
    @IBAction func ViewCard09(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView09.image
        exitButton.isHidden = false
    }
    
    @IBAction func ViewCard10(_ sender: UIButton) {
        CardImage.isHidden = false
        CardImage.image = CardView10.image
        exitButton.isHidden = false
    }
    
    @IBAction func drawAgain(_ sender: UIButton) {
        drawAction.isHidden = false
        drawAgain.isHidden = true
        CardImage.isHidden = false
        CardImage.image = UIImage(named: "bc")
        exitButton.isHidden = true
        for imageAll in allCardView{
            imageAll.isHidden = true
        }
        for buttonAll in allCardBut{
            buttonAll.isHidden = true
        }
      }
    
    @IBAction func exitButton(_ sender: UIButton) {
        CardImage.isHidden = true
        exitButton.isHidden = true
    }
    
    @IBOutlet var allCardView: [UIImageView]!
    @IBOutlet var allCardBut: [UIButton]!
    @IBOutlet weak var CardImage: UIImageView!
    @IBOutlet weak var drawAction: UIButton!
    @IBOutlet weak var drawAgain: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var CardView01: UIImageView!
    @IBOutlet weak var CardView02: UIImageView!
    @IBOutlet weak var CardView03: UIImageView!
    @IBOutlet weak var CardView04: UIImageView!
    @IBOutlet weak var CardView05: UIImageView!
    @IBOutlet weak var CardView06: UIImageView!
    @IBOutlet weak var CardView07: UIImageView!
    @IBOutlet weak var CardView08: UIImageView!
    @IBOutlet weak var CardView09: UIImageView!
    @IBOutlet weak var CardView10: UIImageView!
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
