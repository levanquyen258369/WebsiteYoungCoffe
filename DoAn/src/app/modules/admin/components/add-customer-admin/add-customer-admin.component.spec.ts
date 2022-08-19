import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddCustomerAdminComponent } from './add-customer-admin.component';

describe('AddCustomerAdminComponent', () => {
  let component: AddCustomerAdminComponent;
  let fixture: ComponentFixture<AddCustomerAdminComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddCustomerAdminComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddCustomerAdminComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
