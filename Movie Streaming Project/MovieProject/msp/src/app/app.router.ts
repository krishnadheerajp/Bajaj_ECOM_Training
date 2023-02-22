import { ModuleWithProviders } from '@angular/core';
//import {RouterModule} from ‘@angular/core’;
import { Routes, RouterModule } from '@angular/router'; 
//module for implementing routing

import { AppComponent } from './app.component';
import { SearchMovComponent } from './search-mov/search-mov.component';
import { SelMovComponent } from './sel-mov/sel-mov.component';
import { UserComponent } from './user/user.component';

export const router: Routes = [
    { path: '', redirectTo: '', pathMatch: 'full' }, //default page
    // {path: '/', component: AppComponent},
    { path : 'user' ,component : UserComponent},
    // { path: 'watch-now',redirectTo: 'sel-mov',pathMatch: 'full'},
    {path: 'sel-mov/:id',component: SelMovComponent },
    {path: 'search',component: SearchMovComponent}

]; 

export const routes=RouterModule.forRoot(router);