//
//  ViewController.swift
//  end
//
//  Created by 20141105055ljm on 16/6/29.
//  Copyright © 2016年 20141105055ljm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var flag=0
    var temp=0.0
    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBAction func one(sender: AnyObject) {
        x.text=x.text!+"1"
    }
    @IBAction func two(sender: AnyObject) {
        x.text=x.text!+"2"
    }
    @IBAction func three(sender: AnyObject) {
       x.text=x.text!+"3"
    }
    @IBAction func four(sender: AnyObject) {
        x.text=x.text!+"4"
    }
    @IBAction func five(sender: AnyObject) {
        x.text=x.text!+"5"
    }
    @IBAction func six(sender: AnyObject) {
        x.text=x.text!+"6"
    }
 
    @IBAction func seven(sender: AnyObject) {
        x.text=x.text!+"7"
    }
    @IBAction func eight(sender: AnyObject) {
        x.text=x.text!+"8"
    }
    @IBAction func nine(sender: AnyObject) {
        x.text=x.text!+"9"
    }
    @IBAction func zero(sender: AnyObject) {
        x.text=x.text!+"0"
    }
    @IBAction func add(sender: AnyObject) {
        if flag==0{
            temp=(Double)(x.text!)!
            x.text=""
            flag=1
        }
        flag=1
    }
    @IBAction func sub(sender: AnyObject) {
        if flag==0{
            temp=(Double)(x.text!)!
            x.text=""
            flag=2
        }
        flag=2
        
    }
    @IBAction func mul(sender: AnyObject) {
        if flag==0{
            temp=(Double)(x.text!)!
            x.text=""
            flag=3
        }
        flag=3
    }
    @IBAction func div(sender: AnyObject) {
        if flag==0{
            temp=(Double)(x.text!)!
            x.text=""
            flag=4
        }
        flag=4
    }
    @IBAction func AC(sender: AnyObject) {
        x.text=""
        y.text=""
    }
    @IBAction func delet(sender: AnyObject) {
    }
    @IBAction func calculation(sender: AnyObject) {
        switch flag{
        case 1:
            temp=temp+(Double)(x.text!)!
            x.text=""
            y.text="\(temp)"
          //  y.text=x.text
            break
        case 2:
            temp=temp-(Double)(x.text!)!
            x.text=""
            y.text="\(temp)"
           // y.text=x.text
            break
        case 3:
            temp=temp*(Double)(x.text!)!
            x.text=""
            y.text="\(temp)"
            //y.text=x.text
            break
        case 4:
            if (Double)(x.text!)==0{
                let alertView=UIAlertView()
                alertView.title="noise"
                alertView.message="0不可以做除数"
                alertView.addButtonWithTitle("确认")
                alertView.show()
            }
            temp=temp/(Double)(x.text!)!
            x.text=""
            y.text="\(temp)"
           // y.text=x.text
            break
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

