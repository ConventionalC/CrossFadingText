import UIKit
import CrossFadingText

class ViewController: UIViewController
{
    @IBOutlet var label1:CrossFadingLabel!
    
    var count:Int = 0 {
        didSet {
            label1.text = "\(count)"
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

