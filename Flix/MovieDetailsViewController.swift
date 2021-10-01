//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Yaowei on 9/29/21.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!

    @IBOutlet weak var backDropImage: UIImageView!
    
    @IBOutlet weak var posterImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(movie["original_title"]!)
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        overviewLabel.text = movie["overview"] as? String
        overviewLabel.sizeToFit()
        releaseDateLabel.text = movie["release_date"] as? String
        releaseDateLabel.sizeToFit()
        
        // Poster part
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        let backbase = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: backbase + backdropPath)
        
        posterImage.af.setImage(withURL: posterUrl!)
        backDropImage.af.setImage(withURL: backdropUrl!)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
