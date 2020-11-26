import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-member-card-home',
  templateUrl: './member-card-home.component.html',
  styleUrls: ['./member-card-home.component.css']
})
export class MemberCardHomeComponent implements OnInit {
@Input() name = "";
@Input() job1 = "";
@Input() job2 = "";

  constructor() { }

  ngOnInit(): void {
  }

}
