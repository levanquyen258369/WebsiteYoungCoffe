import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AdminRoutingModule } from './admin-routing.module';
import { AdminDasboardComponent } from './components/admin-dasboard/admin-dasboard.component';
import { CategoriesComponent } from './components/categories/categories.component';
import { SidebarComponent } from './components/sidebar/sidebar.component';
import { HomeComponent } from './components/home/home.component';
import { CartComponent } from './components/cart/cart.component';
import { PromotionComponent } from './components/promotion/promotion.component';
import { ChangePasswordComponent } from './components/change-password/change-password.component';
import { CheckOutComponent } from './components/check-out/check-out.component';
import { AddCustomerAdminComponent } from './components/add-customer-admin/add-customer-admin.component';
import { AddProductsComponent } from './components/add-products/add-products.component';
import { EditCategoryAdminComponent } from './components/edit-category-admin/edit-category-admin.component';
import { EditCustomerProfileComponent } from './components/edit-customer-profile/edit-customer-profile.component';
import { EditPromotionAdminComponent } from './components/edit-promotion-admin/edit-promotion-admin.component';
import { EditStaffComponent } from './components/edit-staff/edit-staff.component';
import { EditCustomerAdminComponent } from './components/edit-customer-admin/edit-customer-admin.component';
import { EditProductAdminComponent } from './components/edit-product-admin/edit-product-admin.component';
import { LoginComponent } from './components/login-admin/login.component';
import { ForgotPasswordComponent } from './components/forgot-password/forgot-password.component';
import { RegisterAdminComponent } from './components/register-admin/register-admin.component';
import { ListcategoryComponent } from './components/listcategory/listcategory.component';
import { ListpromotionComponent } from './components/listpromotion/listpromotion.component';
import { ListcustomerComponent } from './components/listcustomer/listcustomer.component';
import { ListorderComponent } from './components/listorder/listorder.component';
import { ListorderrevenueComponent } from './components/listorderrevenue/listorderrevenue.component';
import { ListProductComponent } from './components/list-product/list-product.component';
import { ListStaffComponent } from './components/list-staff/list-staff.component';
import { AddStaffComponent } from './components/add-staff/add-staff.component';
import { OrderDetailsComponent } from './components/order-details/order-details.component';
import { OrderDetailsAdminComponent } from './components/order-details-admin/order-details-admin.component';
import { ProductDetailsComponent } from './components/product-details/product-details.component';
import { RevenueAdminComponent } from './components/revenue-admin/revenue-admin.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';



@NgModule({
  declarations: [
    AdminDasboardComponent,
    CategoriesComponent,
    SidebarComponent,
    HomeComponent,
    CartComponent,
    PromotionComponent,
    ChangePasswordComponent,
    CheckOutComponent,
    AddCustomerAdminComponent,
    AddProductsComponent,
    EditCategoryAdminComponent,
    EditCustomerProfileComponent,
    EditPromotionAdminComponent,
    EditStaffComponent,
    EditCustomerAdminComponent,
    EditProductAdminComponent,
    LoginComponent,
    ForgotPasswordComponent,
    RegisterAdminComponent,
    ListcategoryComponent,
    ListpromotionComponent,
    ListcustomerComponent,
    ListorderComponent,
    ListorderrevenueComponent,
    ListProductComponent,
    ListStaffComponent,
    AddStaffComponent,
    OrderDetailsComponent,
    OrderDetailsAdminComponent,
    ProductDetailsComponent,
    RevenueAdminComponent,

  ],
  imports: [
    CommonModule,
    AdminRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    RouterModule
  ]
})
export class AdminModule { }
