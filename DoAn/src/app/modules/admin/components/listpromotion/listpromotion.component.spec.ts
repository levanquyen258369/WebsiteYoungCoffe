import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListpromotionComponent } from './listpromotion.component';

describe('ListpromotionComponent', () => {
  let component: ListpromotionComponent;
  let fixture: ComponentFixture<ListpromotionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListpromotionComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListpromotionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
