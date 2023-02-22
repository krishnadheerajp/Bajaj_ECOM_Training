import { Component,OnInit } from '@angular/core';
import { MovieService } from '../services/movie.service';

@Component({
  selector: 'app-lat-mov',
  templateUrl: './lat-mov.component.html',
  styleUrls: ['./lat-mov.component.css']
})
export class LatMovComponent  implements OnInit {
  movies:any;
  constructor(private movieService:MovieService){}
  ngOnInit(){
    this.movieService.getMovies().subscribe((response)=>{
      console.log(response);
      this.movies=response;
      });
  }
}
