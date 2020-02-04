//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        
        print("## Hello, loadview start!")
        
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(headLabel())
        view.addSubview(label)
        
        self.view = view
        
        //FIXME
        var coffeeInfo = ("Americano", 4)
//        printf(coffeeInfo.1) //Americano
//        printf(coffeeInfo.2) //4
    }
    
    func headLabel() -> UILabel {
        let headLabel = UILabel()
        headLabel.frame = CGRect(x:50, y:100, width: 200, height:30)
        headLabel.text = "This is head..."
        return headLabel
    }
  
    
}

//FIXME
//Class, struct Test
class Dog {
    var name: String?
    var age: Int?
}
struct Coffee {
    var name: String?
    var size: String?
}

//protocol = interface
protocol Sendable {
    var from: String? { get }
    var to: String { get }
    
    func send()
}

struct Mail: Sendable {
    var from: String?
    var to: String
    func send() {
        print("Send a mail from \(self.from)")
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
