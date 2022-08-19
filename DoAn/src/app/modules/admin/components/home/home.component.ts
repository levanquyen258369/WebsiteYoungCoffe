import { resolveSanitizationFn } from '@angular/compiler/src/render3/view/template';
import { Component, OnInit } from '@angular/core';



import { CustomerService } from 'src/app/modules/user/services/customer.service';
import { OrderdetailsService } from 'src/app/modules/user/services/orderdetails.service';
import { OrderService } from 'src/app/modules/user/services/orderservice.service';
import { LazyloadService } from 'src/app/services/lazyload.service';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  constructor(private lazyLoad: LazyloadService,
    private orderDetailsServices: OrderdetailsService,
    private orderServices: OrderService,
    private customerServices: CustomerService
    ) { }

    counter = 0;
    counter1 = 0;
    subtotalAll = 0;
  ngOnInit(): void {
    this.lazyLoad.loadScript('assets/dist/js/demo.js').subscribe(_ => {
    });
    this.loadCustomer();
    this.countCustomer();
    this.loadOrderDetail();
    this.countOrder();
    this.tongThuNhap();
    this.loadOrder();
  }


  listCustomer: Array<any> =[];
  listOrders: Array<any> =[];
  listOrderDetails: Array<any> =[];
  data: Array<any> =[];
  totalAall = 0;
  loadCustomer(){
    this.customerServices.get().subscribe(res =>{
      this.listCustomer = res;
      console.log(res)
    })
  }

  loadOrderDetail(){
    this.orderDetailsServices.get().subscribe(res =>{
      this.listOrderDetails = res;
      console.log(res)
    })
  }
  loadOrder(){
    this.orderServices.get().subscribe(res =>{
      this.listOrders = res;
      console.log(res)
      console.log(res.total)
    })
  }

  countCustomer(){
    this.customerServices.get().subscribe(res =>{
       let count = 1;
       for(let p of res){
        this.counter = count++;
       }
       console.log(this.counter);
    })
  }

  countOrder(){
    this.orderDetailsServices.get().subscribe(res =>{
       let count = 1;
       for(let p of res){
        this.counter1 = count++;
       }
       console.log(this.counter1);
    })
  }


  tongThuNhap(){
    this.subtotalAll = 0;
    this.orderServices.get().subscribe(res =>{
        for(let c of res)
           this.totalAall += this.subtotalAll  + c.total
          console.log(this.totalAall);

    })

  }
}
