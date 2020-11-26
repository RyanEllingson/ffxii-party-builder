import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MemberCardHomeComponent } from './member-card-home.component';

describe('MemberCardHomeComponent', () => {
  let component: MemberCardHomeComponent;
  let fixture: ComponentFixture<MemberCardHomeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MemberCardHomeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MemberCardHomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
