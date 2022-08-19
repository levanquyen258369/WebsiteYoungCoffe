import { Component, OnInit, } from '@angular/core';
import { LazyloadService } from 'src/app/services/lazyload.service';
import { FormBuilder, FormsModule, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';

import { HttpClient } from '@angular/common/http';

import { CategoryService } from '../../services/category.service';
import { CustomerService } from '../../services/customer.service';
import { OrderdetailsService } from '../../services/orderdetails.service';
import { ProductService } from '../../services/product.service';
import { OrderService } from '../../services/orderservice.service';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})


export class CartComponent implements OnInit {

  data: any[] = [];
  datachange: any[] = [];
  subtotal: any = 0;
  subtotalAll: any = 0;
  customerInfo: any = null;

  orderAdded: any = null;

  orderDetailAdded: any[] = [];
  shop_product: any;

  customerAdded: any = null;
  customerOnlyId: any = null;
  promotionCode: any = null;
  orderDetailsAdd: any = null;
  details: any = 0;


  constructor(private lazyLoad: LazyloadService,
    private fb: FormBuilder,
    private route: ActivatedRoute,
    private orderService: OrderService,
    private customerService: CustomerService,
    private orderDetailsService: OrderdetailsService,
    private proDuctService: ProductService,
    private router: Router,
   private http: HttpClient) { }

  formAddCustomer = this.fb.group({
    fullName: ['', Validators.required],
    password: ['123456', Validators.required],
    phone: ['', Validators.required],
    address: ['', Validators.required],
    email: ['', Validators.required],
    status: [true],
    avatar: ['aaa', Validators.required],
  });
  submitted = false;
  ngOnInit(): void {
    this.lazyLoad.loadScript('assets/js/wow.min.js').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/css/animate.mod.min.css').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/css/animate.mod.min.css').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/css/bootstrap.css').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/css/style.css').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/dist/js/thuvien.js').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/dist/js/cart.js').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/dist/js/popup.js').subscribe(_ => {
    });

    this.loadCart();
    this.tongtien();
    this.tongTienCoThue();
    this.loadCustomer();
    this.addCustomer();

    let id = this.route.snapshot.params['customerId'];
    this.customerService.findById(id).subscribe(resA => console.log(resA));

  }


  addCustomer(){
        this.customerService.add(this.formAddCustomer.value).subscribe(res0 =>{
          this.customerAdded = res0;
          this.customerOnlyId = {customerId: this.customerAdded.customerId};
          // console.log(res0);
          ///
          let orderRaw = this.formAddCustomer.value;
          orderRaw.customer= this.customerOnlyId;
          orderRaw.fullName= this.customerAdded.fullName;
          orderRaw.phone = this.customerAdded.phone;
          orderRaw.address = this.customerAdded.address;
          orderRaw.email = this.customerAdded.email;
          orderRaw.promotion = {promotionId : 1};
          orderRaw.total= this.subtotalAll;
          orderRaw.status = 1;
          // console.log(orderRaw);
          this.orderService.add(orderRaw).subscribe(res1 =>{
            this.orderAdded = res1;
            console.log(res1);
            //  this.details = res1.orderId;

            for(let c of this.data){
              let p = c.shop_product;
              this.orderDetailsService.add(
              {
                  orders: {orderId: this.orderAdded.orderId},
                  product: {productId: p.productId},
                  quantity: c.quantity,
                  price: p.price
                }
              ).subscribe(res2 =>{
                this.orderDetailAdded = res2;
                console.log(res2);
              })
            }
          })
        })

  }
  thanhtoan(){
    // alert('Thanh Toán Thành Công!')
    this.router.navigateByUrl('/user/success')
  }
  currentCustomer:any = null;
  loadCustomer(){
        this.customerService.get().subscribe(
          res =>{
            for (let p of res){
              if (p.userName == localStorage.getItem('userName')){
                  this.currentCustomer = p;
                  break;
              }
            }
            this.formAddCustomer.get('fullName')?.setValue(this.currentCustomer.fullName);
            this.formAddCustomer.get('phone')?.setValue(this.currentCustomer.phone);
            this.formAddCustomer.get('address')?.setValue(this.currentCustomer.address);
            this.formAddCustomer.get('email')?.setValue(this.currentCustomer.email);
            this.formAddCustomer.get('avatar')?.setValue(this.currentCustomer.avatar);
            this.formAddCustomer.get('password')?.setValue(this.currentCustomer.password);
            this.formAddCustomer.get('status')?.setValue(this.currentCustomer.status);
          }
        )
  }


  loadCart(){
    this.data = localStorage.getItem('carts') ? JSON.parse(localStorage.getItem('carts')!) :[];
    console.log(this.data);
  }

  updateCart(){
    localStorage.setItem('carts', JSON.stringify(this.data));
  }

  reloadCurrentPage() {
    window.location.reload();
   }
  deleteCart(index: any){
      this.data.splice(index, 1);
      localStorage.setItem('carts', JSON.stringify(this.data));
  }

  loadTotal(){
    this.subtotal = 0;
    for(let c of this.data){
      this.subtotal += c.product.price * c.quantity;
    }
    console.log(this.subtotal)
  }

  tongtien(){
    this.subtotal = 0;
    for(let c of this.data){
      this.subtotal += c.shop_product.price * c.quantity;
    }
  }

  tongTienCoThue(){
    this.subtotalAll = 0;
    for(let c of this.data){
      this.subtotalAll += ((c.shop_product.price * c.quantity) + (c.shop_product.price * c.quantity * 0.0299));

    }
    console.log(this.subtotalAll)
  }




}

