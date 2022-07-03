

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var firstImageView: UIImageView!
    
    
    //MARK: - let / var
    
    var secondImageView = UIImageView()
    var arrayImage = ["basket","Foto", "photo3", "photo4"]
    var countOfArray = 0
    var startPosition = true
    
    //MARK: - life sycle Func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.secondImageView.frame = CGRect(x: self.view.frame.width, y: self.firstImageView.frame.origin.y, width: self.firstImageView.frame.width, height: self.firstImageView.frame.height)
        self.view.addSubview(secondImageView)
    }
    
    //MARK: - IBAction
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        
        if countOfArray == arrayImage.count - 1 {
            countOfArray = 0
        } else {
            countOfArray += 1
        }
        
        if startPosition {
                        print("1 нажатие \n  first \(self.firstImageView.frame), second \(self.secondImageView.frame)")
            let image = UIImage(named: arrayImage[countOfArray])
            self.secondImageView.image = image
            
            UIView.animate(withDuration: 0.3) {
                self.secondImageView.frame.origin.x = 0
            } //completion: { _ in
                self.firstImageView.frame.origin.x = self.view.frame.width
//            }

            self.startPosition = !self.startPosition
                        print(" first \(self.firstImageView.frame), second \(self.secondImageView.frame)")

        }
        else {
                        print(" 2 нажатие \n first \(self.firstImageView.frame), second \(self.secondImageView.frame)")

            let image = UIImage(named: arrayImage[countOfArray])
            self.firstImageView.image = image

            UIView.animate(withDuration: 0.3) {
                self.firstImageView.frame.origin.x = 0
            } //completion: { _ in
                self.secondImageView.frame.origin.x = self.view.frame.width
//            }
            self.startPosition = !self.startPosition
            print(" first \(self.firstImageView.frame), second \(self.secondImageView.frame)")
            
        }
        
        
    }
        @IBAction func leftButtonPresed(_ sender: UIButton) {
            print(" first \(self.firstImageView.frame), second \(self.secondImageView.frame)")
    
            if countOfArray == 0 {
                countOfArray = arrayImage.count - 1
            } else {
                countOfArray -= 1
            }
    
            if startPosition {
                let image = UIImage(named: arrayImage[countOfArray])
                self.secondImageView.image = image
                self.secondImageView.frame.origin.x = 0 - self.secondImageView.frame.width
                UIView.animate(withDuration: 0.3) {
                    self.secondImageView.frame.origin.x = 0
                } //completion: { _ in
                    self.firstImageView.frame.origin.x = self.view.frame.width

//                }
                self.startPosition = !self.startPosition
            }
            else {
                let image = UIImage(named: arrayImage[countOfArray])
                self.firstImageView.image = image
                self.firstImageView.frame.origin.x = 0 - self.firstImageView.frame.width
                UIImageView.animate(withDuration: 0.3) {
                    self.firstImageView.frame.origin.x = 0
                } //completion: { _ in
                    self.secondImageView.frame.origin.x = self.view.frame.width

              //  }
                self.startPosition = !self.startPosition
    
    
            }
    
    
        }
    
}
