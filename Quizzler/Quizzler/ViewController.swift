import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber += 1
        
        updateUI()
        
    }
    
    
    func updateUI() {
        
        scoreLabel.text = "Skorunuz: \(score)"
        
        progressLabel.text = "\(questionNumber) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
        
        nextQuestion()
        
    }
    

    func nextQuestion() {
        
        if questionNumber <= 12 {
            
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
        }
        else {
            
            playSoundMp3(soundFileName: "endofquiz")
            
            let alert = UIAlertController(title: "Harika!", message: "Tüm soruları tamamladınız, skorunuz \(questionNumber) soruda \(score) doğru, tekrar yapmak ister misiniz?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Yeniden Başla", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            ProgressHUD.showSuccess("Doğru Cevap!")
            
            playSoundWav(soundFileName: "correct")
            
            score += 1
            
            //print("Doğru!")
            
        }
            
        else {
            
            ProgressHUD.showError("Yanlış Cevap!")
            
            playSoundMp3(soundFileName: "incorrect")
            
            //print("Yanlış!")
            
        }
        
    }
    
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        updateUI()
        
    }
    
    func playSoundWav(soundFileName : String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
        
    }
    
    func playSoundMp3(soundFileName : String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
        
    }
    
}
