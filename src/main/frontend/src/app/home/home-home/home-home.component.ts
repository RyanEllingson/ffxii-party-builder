import { Component, OnInit } from '@angular/core';
import { PartyService } from '../../party.service';

@Component({
  selector: 'app-home-home',
  templateUrl: './home-home.component.html',
  styleUrls: ['./home-home.component.css']
})
export class HomeHomeComponent implements OnInit {

  constructor(public partyService: PartyService) { }

  members = [];



  ngOnInit(): void {
    this.partyService.getParty().subscribe((response: any) => {
      console.log(response);
      this.partyService.party = response;
      this.members = Object.keys(this.partyService.party.members);
    });
  }

}
