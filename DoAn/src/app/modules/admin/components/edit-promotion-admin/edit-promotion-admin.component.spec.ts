import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EditPromotionAdminComponent } from './edit-promotion-admin.component';

describe('EditPromotionAdminComponent', () => {
  let component: EditPromotionAdminComponent;
  let fixture: ComponentFixture<EditPromotionAdminComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EditPromotionAdminComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EditPromotionAdminComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
