import UIKit
import CrossFadingText

class ViewController: UIViewController
{
    @IBOutlet var newLabel:CrossFadingLabel!
    @IBOutlet var oldLabel:CrossFadingLabel!
    @IBOutlet var newButton:UIButton!
    @IBOutlet var oldButton:UIButton!
    
    var count:Int = 0 {
        didSet {
            newLabel.text = "CrossFadingLabel \(count)"
            oldLabel.text = "UILabel \(count)"
            newButton.setTitle("CrossFadeButton \(count)", forState: UIControlState.Normal)
            oldButton.setTitle("UIButton \(count)", forState: UIControlState.Normal)
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

