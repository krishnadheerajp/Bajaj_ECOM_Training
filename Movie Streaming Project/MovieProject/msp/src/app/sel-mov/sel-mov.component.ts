import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MovieService } from '../services/movie.service';

@Component({
  selector: 'app-sel-mov',
  templateUrl: './sel-mov.component.html',
  styleUrls: ['./sel-mov.component.css']
})
export class SelMovComponent implements OnInit {
  id:any;
  movie:any;
  reviews:any;
  message:any;
  rating:number=0;
  averageRating:number=0;
  constructor(private route:ActivatedRoute,private movieService:MovieService){}
  ngOnInit(){
    this.id=this.route.snapshot.paramMap.get("id");
    // console.log(this.id);
    this.movieService.getMovie(this.id).subscribe((response:any)=>{
      this.movie=response.movie;
      this.reviews=response.reviews;
      // console.log(response);
      this.calculateAverage(this.reviews);
    })
  }
  onSubmit(reviewForm:any)
  {
    let review=reviewForm.value;

    review.mid=Number(this.id);
    
    this.movieService.createReview(review).subscribe((response:any)=>{
      this.message=response.message;
      this.calculateAverage(this.reviews);
    })
    this.reviews.unshift(review);
  }
  calculateAverage(reviews:any[])
  {
    let totalRating=0;

    reviews.forEach((review)=>{
      totalRating+=review.rating;
    })

    let average=totalRating/reviews.length;

    if(Number.isNaN(average)) this.averageRating=0;
    else     this.averageRating=average*20;
    console.log("rating",totalRating,average,this.averageRating);

  }

}
