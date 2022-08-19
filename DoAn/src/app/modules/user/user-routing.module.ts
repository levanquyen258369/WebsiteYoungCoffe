import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { UserFooterComponent } from './components/user-footer/user-footer.component';
import { UserHeaderComponent } from './components/user-header/user-header.component';
import { UserHomeComponent } from './components/user-home/user-home.component';
import { UserdasboardComponent } from './components/userdasboard/userdasboard.component';
import { NotFoundComponent } from './components/not-found/not-found.component';
import { ContactUserComponent } from './components/contact-user/contact-user.component';
import { LoginComponent } from '../user/components/login/login.component';
import { CoffeeComponent } from './components/coffee/coffee.component';
import { TeaComponent } from './components/tea/tea.component';
import { EquimentComponent } from './components/equiment/equiment.component';
import { GiftsComponent } from './components/gifts/gifts.component';
import { SaleComponent } from './components/sale/sale.component';
import { DrinwareComponent } from './components/drinware/drinware.component';
import { ShopComponent } from './components/shop/shop.component';
import { CartComponent } from './components/cart/cart.component';
import { ProductDetailsComponent } from './components/product-details/product-details.component';
import { ForgotPasswordComponent } from './components/forgot-password/forgot-password.component';
import { RegisterComponent } from './components/register/register.component';
import { ThongtinComponent } from './components/thongtin/thongtin.component';
import { CheckOrderComponent } from './components/check-order/check-order.component';
import { SuccessComponent } from './components/success/success.component';
// import { SuccessComponent } from './components/success/success.component';


const routes: Routes = [
  {path: '', component: UserdasboardComponent,
  children: [
    {path: 'home', component: UserHomeComponent},
    {path: 'header', component: UserHeaderComponent},
    {path: 'footer', component: UserFooterComponent},
    {path: 'contact', component: ContactUserComponent},
    {path: 'login', component: LoginComponent},
    {path: 'coffee', component: CoffeeComponent},
    {path: 'tea', component: TeaComponent},
    {path: 'equiment', component: EquimentComponent},
    {path: 'drinkware', component: DrinwareComponent},
    {path: 'gifts', component: GiftsComponent},
    {path: 'sale', component: SaleComponent},
     {path: 'shop', component: ShopComponent},
    {path: 'cart', component: CartComponent},
    {path: 'product-details/:productId', component: ProductDetailsComponent},
    {path: 'login', component: LoginComponent},
    {path: 'forgot-password', component: ForgotPasswordComponent},
    {path: 'register', component: RegisterComponent},
    {path: 'thongtin/:customerId', component: ThongtinComponent},
    {path: 'check-order', component: CheckOrderComponent},
    {path: 'success', component: SuccessComponent},
    {path: '', redirectTo: '/user/qqhome', pathMatch: 'full'},
  ]
}

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class UserRoutingModule { }
