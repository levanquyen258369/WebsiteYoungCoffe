import { HttpClient } from '@angular/common/http';

import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { OrderdetailsService } from 'src/app/modules/user/services/orderdetails.service';
import { OrderService } from 'src/app/modules/user/services/orderservice.service';
import { PromotionservicesService } from 'src/app/modules/user/services/promotionservices.service';

@Component({
  selector: 'app-listorder',
  templateUrl: './listorder.component.html',
  styleUrls: ['./listorder.component.css']
})
export class ListorderComponent implements OnInit {

  constructor(private orderServices: OrderService,
    private orderDetailsServices: OrderdetailsService,
    private promotionServices: PromotionservicesService,
    private route: ActivatedRoute,
    private fb: FormBuilder,
    private router: Router,
    private http: HttpClient
    ) { }

  ngOnInit(): void {

    this.loadOrdersDetails();
    this.loadPromotion();
  }

  listOrdersdetails: Array<any> = [];
  loadOrdersDetails(){
    this.orderDetailsServices.get().subscribe(res =>{
      this.listOrdersdetails = res;
      console.log(res)

    })
  }
  keyword: any = '';
  loadSearching(key: any){
    this.listOrdersdetails = [];
    this.orderDetailsServices.get().subscribe(res =>{
      for(let p of res){
        if(key == p.orderDetailId){
          this.listOrdersdetails.push(p);
        }
      }
      console.log(this.listOrdersdetails);
      return this.listOrdersdetails;
    })
  }

  deleteOrderDetails(index: any){
      this.orderDetailsServices.remove(index).subscribe(res0 =>{
        this.listOrdersdetails.splice(index, 1);
        console.log(this.listOrdersdetails);
        this.loadOrdersDetails();
      })
  }
  listPromotion: Array<any> = [];
  loadPromotion(){
    this.promotionServices.get().subscribe(res =>{
      this.listPromotion = res;
      console.log(res);
    })
  }

  reloadCurrentPage() {
    window.location.reload();
   }
}
