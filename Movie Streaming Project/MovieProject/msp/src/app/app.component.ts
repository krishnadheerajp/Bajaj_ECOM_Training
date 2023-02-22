import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'msp';
  constructor(public router: Router){
  }
  // activeRoute: any;
  // constructor(private route:ActivatedRoute) {
  //   this.activeRoute = route.snapshot.url;
  // }
}
