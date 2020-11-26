import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class PartyService {
  party = null;

  constructor(private http: HttpClient) { }

  getParty() {
    return this.http.get("/api/party");
  }
}
