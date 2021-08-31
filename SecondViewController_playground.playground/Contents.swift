import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = UIColor.red (same as the second line)
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}

// in ViewController
//@IBAction func calculatePressed(_ sender: UIButton) {
//    let height = heightSlider.value
//    let weight = weightSlider.value
//    let bmi = weight / pow(height, 2) //pow() 平方
    
    let secondVC = SecondViewController()
    secondVC.bmiValue = String(format: "%.1f", bmi)
    
    self.present(secondVC, animated: true, completion: nil)
//}
