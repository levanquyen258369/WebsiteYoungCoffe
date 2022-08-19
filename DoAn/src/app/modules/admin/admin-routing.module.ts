import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AdminDasboardComponent } from './components/admin-dasboard/admin-dasboard.component';
import { CategoriesComponent } from './components/categories/categories.component';
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


const routes: Routes = [

  {path: '', component: AdminDasboardComponent,
    children: [
      {path: 'home', component: HomeComponent},
      {path: 'categories', component: CategoriesComponent},
      {path: 'cart', component: CartComponent},
      {path: 'promotion', component: PromotionComponent},
      {path: 'checkout', component: CheckOutComponent},
      {path: 'addcustomeradmin', component: AddCustomerAdminComponent},
      {path: 'addproducts', component: AddProductsComponent},
      {path:  'addstaff', component: AddStaffComponent},
      {path: 'editcategory/:categoryId', component: EditCategoryAdminComponent},
      {path: 'editcustomerprofile', component: EditCustomerProfileComponent},
      {path: 'editpromotion', component: EditPromotionAdminComponent},
      {path: 'editstaff', component: EditStaffComponent},
      {path: 'editcustomeradmin', component: EditCustomerAdminComponent},
      {path: 'editprodcutadmin/:productId', component: EditProductAdminComponent},
      {path: 'login', component: LoginComponent},
      {path: 'changepassword', component: ChangePasswordComponent},
      {path: 'forgotpassword', component: ForgotPasswordComponent},
      {path: 'registeradmin', component: RegisterAdminComponent},
      {path: 'listcategory', component: ListcategoryComponent},
      {path: 'listprotionadmin', component: ListpromotionComponent},
      {path: 'listcustomeradmin', component: ListcustomerComponent},
      {path: 'listorderadmin', component: ListorderComponent},
      {path: 'listoerder-revenue', component: ListorderrevenueComponent},
      {path: 'listproduct', component: ListProductComponent},
      {path: 'liststaff', component: ListStaffComponent},
      {path: 'order-details', component: OrderDetailsComponent},
      {path: 'order-details-ad/:orderId', component: OrderDetailsAdminComponent},
      {path: 'product-details', component: ProductDetailsComponent},
      {path: 'revenue-admin', component : RevenueAdminComponent},

      {path: '', redirectTo: '/admin/home', pathMatch: 'full'},
    ]
}
];

@NgModule({

  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AdminRoutingModule { }
