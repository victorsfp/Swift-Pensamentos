import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var swAutoRefresh: UISwitch!
    @IBOutlet weak var slTimerInterval: UISlider!
    @IBOutlet weak var scColorScheme: UISegmentedControl!
    @IBOutlet weak var lbTimerInterval: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeAutoRefresh(_ sender: UISwitch) {
    }
   
    @IBAction func changeTimerInterval(_ sender: UISlider) {
    }
    
    @IBAction func changeColorScheme(_ sender: UISegmentedControl) {
    }
    
}
