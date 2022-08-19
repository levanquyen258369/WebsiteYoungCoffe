import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListorderrevenueComponent } from './listorderrevenue.component';

describe('ListorderrevenueComponent', () => {
  let component: ListorderrevenueComponent;
  let fixture: ComponentFixture<ListorderrevenueComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListorderrevenueComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListorderrevenueComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
