import { Component,OnInit } from '@angular/core';
import { MovieService } from '../services/movie.service';

@Component({
  selector: 'app-all-mov',
  templateUrl: './all-mov.component.html',
  styleUrls: ['./all-mov.component.css']
})
export class AllMovComponent implements OnInit{
  movies:any;
  constructor(private movieService:MovieService){}
  ngOnInit(){
    this.movieService.getMovies().subscribe((response)=>{
      console.log(response);
      this.movies=response;
      });
  }
}
