//
//  ViewController.swift
//  calculator
//
//  Created by Sofija Zolotarev on 21.8.24..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    var number: Float = 0
    var num1: Float = 0
    var num2: Float = 0
    var operation: String = ""
    var floatOrInt: Bool = false
    var numDecPlaces: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func acPressed(_ sender: UIButton) {
        number = 0
        floatOrInt = false
        numDecPlaces = 0
        num1 = 0
        num2 = 0
        operation = ""
        result.text = String(number)
    }
    
    @IBAction func minusPlusPressed(_ sender: UIButton) {
        print("broj pre /number")
        number = number - 2*number
        print("broj posle /number")
        print("/////////////////////////////")

        result.text = String(number)
    }
    
    @IBAction func percenatgePressed(_ sender: UIButton) {
        number /= 100
        result.text = String(number)
        number = 0
        floatOrInt = false
        numDecPlaces = 0
    }
    
    @IBAction func division(_ sender: UIButton) {
        operation = "/"
        floatOrInt = false
        num1 = number
        number = 0
    }
    
    @IBAction func multiplication(_ sender: UIButton) {
        operation = "*"
        floatOrInt = false
        num1 = number
        number = 0
    }
    
    @IBAction func minus(_ sender: UIButton) {
        operation = "-"
        floatOrInt = false
        num1 = number
        number = 0
    }
    
    @IBAction func plus(_ sender: UIButton) {
        operation = "+"
        floatOrInt = false
        num1 = number
        number = 0
    }
    
    @IBAction func equal(_ sender: UIButton) {
        num2 = number
        
        switch operation {
        case "+":
            number = num1 + num2
        case "-":
            number = num1 - num2
        case "*":
            number = num1 * num2
        case "/":
            number = num1 / num2
        default:
            number = number + 0
        }
        
        operation = "="
        floatOrInt = false
        num1 = 0
        num2 = 0
        
        result.text = String(number)
    }
    
    @IBAction func zero(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10
        }else{
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func one(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 1
        }else{
            
            number = number + numDecPlaces
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func two(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 2
        }else{
            number = number + numDecPlaces * 2
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func three(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 3
        }else{
            number = number + numDecPlaces * 3
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func four(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 4
        }else{
            number = number + numDecPlaces * 4
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func five(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 5
        }else{
            number = number + numDecPlaces * 5
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func six(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 6
        }else{
            number = number + numDecPlaces * 6
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func seven(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 7
        }else{
            number = number + numDecPlaces * 7
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func eight(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 8
        }else{
            number = number + numDecPlaces * 8
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func nine(_ sender: UIButton) {
        if(operation == "="){
            number = 0
            operation = ""
        }
        
        if(floatOrInt == false){
            number = number*10 + 9
        }else{
            number = number + numDecPlaces * 9
            numDecPlaces /= 10
        }
        
        result.text = String(number)
    }
    
    @IBAction func turnToFloat(_ sender: UIButton) {
        floatOrInt = true
        numDecPlaces = 0.1
    }
    
}

