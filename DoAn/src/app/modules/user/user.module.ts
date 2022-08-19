import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { UserRoutingModule } from './user-routing.module';
import { UserdasboardComponent } from './components/userdasboard/userdasboard.component';

import { UserFooterComponent } from './components/user-footer/user-footer.component';
import { UserHeaderComponent } from './components/user-header/user-header.component';
import { UserSidebarComponent } from './components/user-sidebar/user-sidebar.component';
import { UserHomeComponent } from './components/user-home/user-home.component';
import { NotFoundComponent } from './components/not-found/not-found.component';
import { ContactUserComponent } from './components/contact-user/contact-user.component';
import { CoffeeComponent } from './components/coffee/coffee.component';
import { TeaComponent } from './components/tea/tea.component';
import { EquimentComponent } from './components/equiment/equiment.component';
import { DrinwareComponent } from './components/drinware/drinware.component';
import { GiftsComponent } from './components/gifts/gifts.component';
import { SaleComponent } from './components/sale/sale.component';
import { HttpClientModule } from '@angular/common/http';
import { ShopComponent } from './components/shop/shop.component';
import { CartComponent } from './components/cart/cart.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ProductDetailsComponent } from './components/product-details/product-details.component';
import { LoginComponent } from './components/login/login.component';
import { ForgotPasswordComponent } from './components/forgot-password/forgot-password.component';
import { RegisterComponent } from './components/register/register.component';
import { RouterModule } from '@angular/router';
import { ThongtinComponent } from './components/thongtin/thongtin.component';
import { CheckOrderComponent } from './components/check-order/check-order.component';



@NgModule({
  declarations: [
    UserdasboardComponent,
    ThongtinComponent,
    UserFooterComponent,
    UserHeaderComponent,
    UserSidebarComponent,
    UserHomeComponent,
    NotFoundComponent,
    ContactUserComponent,
    CoffeeComponent,
    TeaComponent,
    EquimentComponent,
    DrinwareComponent,
    GiftsComponent,
    SaleComponent,
    ShopComponent,
    CartComponent,
    ProductDetailsComponent,
    LoginComponent,
    ForgotPasswordComponent,
    RegisterComponent,
    CheckOrderComponent,

  ],
  imports: [
    CommonModule,
    UserRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    RouterModule
  ]
})
export class UserModule { }
