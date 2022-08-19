import { Component, OnInit } from '@angular/core';
import { CustomerService } from 'src/app/modules/user/services/customer.service';
import { OrderdetailsService } from 'src/app/modules/user/services/orderdetails.service';
import { OrderService } from 'src/app/modules/user/services/orderservice.service';
import { ProductService } from 'src/app/modules/user/services/product.service';

@Component({
  selector: 'app-order-details-admin',
  templateUrl: './order-details-admin.component.html',
  styleUrls: ['./order-details-admin.component.css']
})
export class OrderDetailsAdminComponent implements OnInit {

  constructor(private orderDetailsServices: OrderdetailsService,
      private productServices: ProductService,
      private customerServices: CustomerService,
      private orderServices: OrderService
  ) { }

  ngOnInit(): void {
    this.loadOrderDetails();
    // this.loadOrder();
    // this.loadCustomer();
    // this.loadProduct();
    // this.loadCustomer();
    // this.loadProduct();
  }

  data: any
  data1: any
  data2: any
  listOrder: Array<any> = [];
  listProduct: Array<any> = [];
  listCustomer: Array<any> = [];
  loadOrderDetails(){
      this.orderDetailsServices.get().subscribe(res =>{
        this.data = res;
        console.log(this.data)

      })
  }
  loadOrder(){
    this.orderServices.get().subscribe(res =>{
      this.listOrder = res;
      console.log(this.listOrder);
    })
  }

  loadCustomer(){
    this.customerServices.get().subscribe(res0 =>{
      this.listCustomer = res0;
      console.log(this.listCustomer);
    })
  }

  loadProduct(){
    this.productServices.get().subscribe(res1 =>{
      this.listProduct  = res1;
      console.log(this.listProduct);
    })
  }

  // loadCustomer(){
  //   this.customerServices.get().subscribe(res =>{
  //     this.data2 = res;
  //     console.log(this.data2)

  //   })
  //   }
  //   loadProduct(){
  //     this.productServices.get().subscribe(res =>{
  //       this.data1 = res;
  //       console.log(this.data1)

  //     })
  // }



}
