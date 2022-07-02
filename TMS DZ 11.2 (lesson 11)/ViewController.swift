

import UIKit

class ViewController: UIViewController {
//MARK: - IBOutlets
    @IBOutlet var firstImageView: UIImageView!
    
    
//MARK: - let / var
    
    var secondImageView = UIImageView()
    var arrayImage = ["basket","Foto", "photo3", "photo4"]
    var countOfArray = 1
    
//MARK: - life sycle Func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.secondImageView.frame = CGRect(x: self.view.frame.width, y: self.firstImageView.frame.origin.y, width: self.firstImageView.frame.width, height: self.firstImageView.frame.height)
        self.view.addSubview(secondImageView)
        
    }

//MARK: - IBAction
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        let image = UIImage(named: arrayImage[countOfArray])
        self.secondImageView.image = image
        UIView.animate(withDuration: 0.3) {
            self.secondImageView.frame.origin.x = 0
        }
    }
    
  
    
}

