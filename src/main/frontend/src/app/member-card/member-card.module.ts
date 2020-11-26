import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MemberCardHomeComponent } from './member-card-home/member-card-home.component';



@NgModule({
  declarations: [MemberCardHomeComponent],
  imports: [
    CommonModule
  ],
  exports: [
    MemberCardHomeComponent
  ]
})
export class MemberCardModule { }
