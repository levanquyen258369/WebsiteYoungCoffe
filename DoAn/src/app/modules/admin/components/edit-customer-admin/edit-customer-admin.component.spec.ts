import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EditCustomerAdminComponent } from './edit-customer-admin.component';

describe('EditCustomerAdminComponent', () => {
  let component: EditCustomerAdminComponent;
  let fixture: ComponentFixture<EditCustomerAdminComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EditCustomerAdminComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EditCustomerAdminComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
