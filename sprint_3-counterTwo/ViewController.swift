import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var storyButtons: UITextView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minusButton.tintColor = .blue
        plusButton.tintColor = .red
        resetButton.setImage(UIImage(systemName: "restart"), for: .normal)
        storyButtons.isEditable = false
    }
    
    private func currentDate() -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd-mm-yyyy HH:mm:ss"
        let date = dateFormat.string(from: Date())
        return date
    }
    
    @IBAction private func minusTouchButton(_ sender: Any) {
        count = count - 1
        if count < 0 {
            storyButtons.text += "\n\(currentDate()): попытка уменьшить значение счётчика ниже 0»"
        } else {
            dataLabel.text = "\(count)"
            storyButtons.text += "\n\(currentDate()): значение изменено на \(count)"
        }
    }
    @IBAction private func plusTouchButton(_ sender: Any) {
        count = count + 1
        dataLabel.text = "\(count)"
        storyButtons.text += "\n\(currentDate()): значение изменено на \(count)"
    }
    @IBAction private func resetTouchButton(_ sender: Any) {
        count = 0
        dataLabel.text = "\(count)"
        storyButtons.text += "\n\(currentDate()): значение сброшено"
    }
}

