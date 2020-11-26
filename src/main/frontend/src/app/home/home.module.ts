import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { HomeRoutingModule } from './home-routing.module';
import { HomeHomeComponent } from './home-home/home-home.component';
import { MemberCardModule } from '../member-card/member-card.module';


@NgModule({
  declarations: [HomeHomeComponent],
  imports: [
    CommonModule,
    HomeRoutingModule,
    MemberCardModule
  ]
})
export class HomeModule { }
