
import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {// for editing keyboard\\


    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var searchTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    

    @IBAction func searchButtonPressed(_ sender: UIButton) {
        
        
    
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.endEditing(true) // If search button pressed keyboard closes
        print(searchTextField.text)
        return true
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        //This functions runs when user dismisses the keyboard
        
        if textField.text != ""{
            return true
            
        }  else{
            
            textField.placeholder = "Please enter a City Name"
            return false
            
        }
        
     
    
    
    
    
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {//after editing text rest to empty text
        //use searchField.text to get weather for the city
        searchTextField.text = ""
    }
    
    
}

