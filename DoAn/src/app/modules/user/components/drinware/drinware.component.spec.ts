import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DrinwareComponent } from './drinware.component';

describe('DrinwareComponent', () => {
  let component: DrinwareComponent;
  let fixture: ComponentFixture<DrinwareComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DrinwareComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DrinwareComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
