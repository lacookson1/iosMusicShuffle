
import UIKit
import MediaPlayer

class genreButtonScreen: UIViewController
{
    
    var musicPlayer = MPMusicPlayerController.applicationMusicPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func genreButtonTapped(_ sender: UIButton) {
        
        
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    @IBAction func nextButtonTapped(_ sender: UIButton) {
    }
    
    func playGenre(genre: String) {
        musicPlayer.stop()
        
        let query = MPMediaQuery()
        let predicate = MPMediaPropertyPredicate(value: genre, forProperty: MPMediaItemPropertyGenre)
        
        query.addFilterPredicate(predicate)
        
        musicPlayer.setQueue(with: query)
        musicPlayer.shuffleMode = .songs
        musicPlayer.play()
        
    }
}
