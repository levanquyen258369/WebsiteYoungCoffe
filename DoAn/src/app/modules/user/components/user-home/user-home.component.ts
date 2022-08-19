import { Component, OnInit } from '@angular/core';
import { LazyloadService } from 'src/app/services/lazyload.service';
import { ProductService } from '../../services/product.service';


@Component({
  selector: 'app-user-home',
  templateUrl: './user-home.component.html',
  styleUrls: ['./user-home.component.css']
})
export class UserHomeComponent implements OnInit {

  constructor(private lazyLoad: LazyloadService, private productservices : ProductService ) { }

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
    this.loadProducts()

}
shop_product: Array<any> = [];
loadProducts(){
  this.productservices.get().subscribe(res =>{
    this.shop_product = res;
    console.log(res);
  })
}
}
