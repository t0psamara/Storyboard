//
//  ViewController.swift
//  Storyboard
//
//  Created by Nikita Petrenkov on 05/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    /// Счётчик нажатий на кнопку
    var counter: Int = 0

    /// Наша кнопка
    @IBOutlet weak var someButton: UIButton!
    
    /// Наш переключатель
    @IBOutlet weak var someSwitch: UISwitch!
    
    /// Наш лейбл
    @IBOutlet weak var someLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someButton.setTitle("Наша кнопка", for: .normal)
        someButton.layer.cornerRadius = 20
        
    }

    
    /// Обработка нажатия на переключатель
    /// - Parameter sender: Собственно сам компонент
    @IBAction func changeValueOfSwitch(_ sender: UISwitch) {
                
    }
    
    
    /// Обрабатываем нажатие на нашу кнопку
    @IBAction func buttonPressed() {
        
        // Меняем значение нашего переключателя
        someSwitch.isOn.toggle()
        
        // Увеличиваем количество нажатий на единицу
        counter += 1
        
        // Задаем информацию о состоянии переключателя
        let switchText: String = someSwitch.isOn ? "Переключатель включён" : "Переключатель выключен"
        
        // Задаём информацию о количестве нажатий
        let counterText: String = String(counter)
        
        // Вспомогательная надпись для счётчика
        let supportedText: String = "Количество нажатий:"
        
        // Складываем все текстовки в один текст
        let result: String = switchText + " " + supportedText + " " + counterText
        
        // Присваиваем нашему лейблу текст
        someLabel.text = result
    }
}

