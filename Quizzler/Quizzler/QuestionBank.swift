//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Serkan Ok on 29.09.2019.

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        list.append(Question(text: "Türkiye\'nin başkenti Ankara\'dır.", correctAnswer: true))
        
        list.append(Question(text: "Çocuklar dışarıda annelerinin/babalarının ellerini bırakmamalıdır.", correctAnswer: true))
        
        list.append(Question(text: "Beynimiz kafatasımızın, kalbimiz göğüs kafesimizin içinde yer alır.", correctAnswer: true))
        
        list.append(Question(text: "Teneffüslerde okul bahçesinden dışarıya çıkmamalıyız.", correctAnswer: true))
        
        list.append(Question(text: "Sağlıklı yaşam için sağlıklı beslenmeli ve zararlı alışkanlıklardan kaçınmalıyız.", correctAnswer: true))
        
        list.append(Question(text: "Kalbin görevi düşünmek, beynin görevi kan pompalamaktır.", correctAnswer: false))
        
        list.append(Question(text: "Derslerimizi dinler ve ödevlerimizi yaparsak okulda başarılı oluruz.", correctAnswer: true))
        
        list.append(Question(text: "Cips, kola, çikolata ve şeker sağlıklı yiyeceklerdir.", correctAnswer: false))
        
        list.append(Question(text: "Kümeleri birleştirerek, sayı doğrusu ile veya parmaklarımızı sayarak toplama işlemi yapabiliriz.", correctAnswer: true))
        
        list.append(Question(text: "Sesli harfler A, E, I, İ, O, Ö, U ve Ü\'dür.", correctAnswer: true))
        
        list.append(Question(text: "Büyüklerimize saygılı davranmamıza gerek yoktur.", correctAnswer: false))
        
        list.append(Question(text: "\'Kırmızı\'nın İngilizcesi \'Blue\', \'Mavi\'nin İngilizcesi \'Red\'dir.", correctAnswer: false))
        
        list.append(Question(text: "Üçgenin üç, dikdörtgenin dört kenarı vardır. 4 kenarı aynı uzunlukta olan dikdörtgene \"kare\" denir.", correctAnswer: true))
    }
}
