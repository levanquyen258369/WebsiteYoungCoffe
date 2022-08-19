import { Component, OnInit } from '@angular/core';
import { LazyloadService } from 'src/app/services/lazyload.service';
import { ProductDetailsComponent } from '../product-details/product-details.component';
import { ShopComponent } from '../shop/shop.component';

@Component({
  selector: 'app-userdasboard',
  templateUrl: './userdasboard.component.html',
  styleUrls: ['./userdasboard.component.css']
})
export class UserdasboardComponent implements OnInit {
  number: number = 0;
  data!: any[];
  data1!: any[];
  constructor(private lazyLoad: LazyloadService) { }

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
    this.lazyLoad.loadScript('assets/dist/js/demo.js').subscribe(_ => {
    });
    this.onActive;
  }



  onActive(componentRef: any) {
    if (componentRef instanceof ShopComponent ) {
    console.log(componentRef);
    componentRef.addToCart.subscribe(() => {
      this.data = localStorage.getItem('carts') ? JSON.parse(localStorage.getItem('carts')!) : [];
      this.number++;
      console.log("CLicked!");

    });
  }

  }

  onActive2(componentRef: any){
    if (componentRef instanceof ProductDetailsComponent ) {
      console.log(componentRef);
      componentRef.addToCart1.subscribe(() => {
        this.data = localStorage.getItem('carts') ? JSON.parse(localStorage.getItem('carts')!) : [];
        this.number++;
        console.log("CLicked!");
      });
    }
  }
}
