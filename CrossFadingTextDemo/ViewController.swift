import UIKit
import CrossFadingText

class ViewController: UIViewController
{
    @IBOutlet var newLabel:CrossFadingLabel!
    @IBOutlet var oldLabel:CrossFadingLabel!
    @IBOutlet var newButton:UIButton!
    @IBOutlet var oldButton:UIButton!
    @IBOutlet var newTextField:UITextField!
    @IBOutlet var oldTextField:UITextField!
    @IBOutlet var newTextView:UITextView!
    @IBOutlet var oldTextView:UITextView!
    
    var count:Int = 0 {
        didSet {
            newLabel.text = "CrossFadingLabel \(count)"
            oldLabel.text = "UILabel \(count)"
            newButton.setTitle("CrossFadeButton \(count)", forState: UIControlState.Normal)
            oldButton.setTitle("UIButton \(count)", forState: UIControlState.Normal)
            newTextField.text = "CrossFadingTextField \(count)"
            oldTextField.text = "UITextField \(count)"
            newTextView.text = "CrossFadingTextView \(count)"
            oldTextView.text = "UITextView \(count)"
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "timerDidFire:", userInfo: nil, repeats: true)
    }
    var timer:NSTimer!
    
    func timerDidFire(timer:NSTimer!)
    {
        count++
    }
}

