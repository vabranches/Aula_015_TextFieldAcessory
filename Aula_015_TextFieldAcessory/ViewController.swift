import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    
    //MARK: Outlet
    @IBOutlet weak var minhaTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegate
        minhaTextField.delegate = self
        
        //Instancia do método que cria os botoes na textfield
        self.criaBotoes()
        
        
        

    }

    
    //MARK: Métodos próprios
    func criaBotoes(){
        let barra = UIToolbar()
        barra.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 40)
        
        minhaTextField.inputAccessoryView = barra
        
        let botaoAvancar = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(ViewController.clicouAvancar(_:)))
        
        let botaoVoltar = UIBarButtonItem(barButtonSystemItem: .rewind, target: self, action: #selector(ViewController.clicouVoltar(_:)))
        
        let espacamento = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let botaoDone = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ViewController.clicouDone(_:)))
        
        let arrayBotoes = [botaoVoltar, botaoAvancar, espacamento,botaoDone]
        
        barra.setItems(arrayBotoes, animated: true)
    }
    
    func clicouAvancar(_ sender : UIBarButtonItem) {
        print("Clicou avançar")
    }
    
    func clicouVoltar(_ sender : UIBarButtonItem) {
        print("Clicou voltar")
    }
    
    func clicouDone(_ sender : UIBarButtonItem) {
        print("Clicou done")
    }
    
    
    //MARK: Métodos de UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.becomeFirstResponder()
        return true
    }
    
    //MARK: Métodos de UIResponder
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.becomeFirstResponder()
    }
    
    //MARK: Actions prórios



}

