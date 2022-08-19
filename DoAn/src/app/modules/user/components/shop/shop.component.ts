import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { LazyloadService } from 'src/app/services/lazyload.service';
import { CategoryService } from '../../services/category.service';

import { ProductService } from '../../services/product.service';
@Component({
  selector: 'app-shop',
  templateUrl: './shop.component.html',
  styleUrls: ['./shop.component.css']
})
export class ShopComponent implements OnInit {

  @Output() addToCart: EventEmitter<any> = new EventEmitter<any>();



  [x: string]: any;

  constructor(private lazyLoad: LazyloadService,
     private productservices : ProductService,
     private categoryServices: CategoryService,
     ) { }

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
    this.lazyLoad.loadScript('assets/dist/js/jquery-main.js').subscribe(_ => {
    });
    this.loadProducts();
    this.loadCategory();
    this.buy;
    this.getProductByCategoryId;
    // this.sapXepthap();
  }

  shop_product: Array<any> = [];
  categories: Array<any> = [];
  status: any


  loadProducts(){
    this.productservices.get().subscribe(res =>{
          for(let p of res){
              if(p.status == true){
                this.shop_product.push(p);

                // this.newProduct[i].price = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(this.newProduct[i].price);
              }
          }
      console.log(this.shop_product);
    })
  }

  loadCategory(){
      this.categoryServices.get().subscribe(resB =>{
        this.categories = resB;
        console.log(this.categories);
      })
  }
  buy(shop_product: any){

    //lấy dữ liệu giỏ hàng trong strorage

    let carts = localStorage.getItem('carts') ? JSON.parse(localStorage.getItem('carts')!) : [];
    const itemCart = {
      shop_product: shop_product,
      quantity: 1,

    };
    //Kiểm tra xem sản phẩm có trong giỏ chưa
    let flag = false;
    carts = carts.map((x: any) => {
          if(x.shop_product.productId == shop_product.productId){
              x.quantity += 1;
             flag = true;
        }
      return x;
    });

    if (!flag) {
          carts.push(itemCart);
    }
    //lưu giỏ hàng vào storage
    localStorage.setItem('carts', JSON.stringify(carts));
    this.addToCart.emit();


  }


  getProductByCategoryId(categoryId :any){
    this.shop_product = [];
    this.productservices.get().subscribe(res =>{
      for(let p of res){
        if(p.category.categoryId == categoryId){
          console.log(p.category.categoryId);
          this.shop_product.push(p);
        }
      }
      return this.shop_product;
    })
  }


  ascProduct(){
    this.productservices.asc().subscribe(res =>{
      this.shop_product =res;
      console.log(res);
      return this.shop_product;

    })
  }

  descProduct(){
    this.productservices.desc().subscribe(res =>{
      this.shop_product =res;
      console.log(res);
      return this.shop_product;
    })
  }
}
