import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class MovieService {
  constructor(private httpClient:HttpClient) { }
  getMovies(){
    return this.httpClient.get("http://localhost:8888/Movies_API/movies");
  }
  getMovie(id:any){
    return this.httpClient.get(`http://localhost:8888/Movies_API/movies/${id}`);
  }
  createReview(data:any)
  {
    let headers={"Content-Type":"application/json"};
    return this.httpClient.post("http://localhost:8888/Movies_API/reviews/",data,{headers});
  }
}
