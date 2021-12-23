
import UIKit

class QuotesViewController: UIViewController {
    
    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var ivPhotoBg: UIImageView!
    @IBOutlet weak var lbQuotes: UILabel!
    @IBOutlet weak var lbAuthor: UILabel!
    @IBOutlet weak var lcTop: NSLayoutConstraint!
    
    let quotesManager = QuotesManager()
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepateQuote()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        prepateQuote()
    }
    
    func prepateQuote(){
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 8.0, repeats: true) { (timer) in
            self.showRandomQuote()
        }
        showRandomQuote()
    }
    
    func showRandomQuote(){
        let quote = quotesManager.getRandomQuote()
        lbQuotes.text = quote.quote
        lbAuthor.text = quote.author
        ivPhoto.image = UIImage(named: quote.image)
        ivPhotoBg.image = UIImage(named: quote.image)
        
        lbQuotes.alpha = 0.0
        lbAuthor.alpha = 0.0
        ivPhoto.alpha = 0.0
        ivPhotoBg.alpha = 0.0
        lcTop.constant = 50
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 2.6) {
            self.lbQuotes.alpha = 1.0
            self.lbAuthor.alpha = 1.0
            self.ivPhoto.alpha = 1.0
            self.ivPhotoBg.alpha = 0.25
            self.lcTop.constant = 10
            self.view.layoutIfNeeded()
        }
        
    }

}
