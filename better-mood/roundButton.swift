import UIKit

@IBDesignable
class roundButton: UIButton {
    
    @IBInspectable var fillColor: UIColor = UIColor.red
    @IBInspectable var isAddButton: Bool = true
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        
    }
    
}
