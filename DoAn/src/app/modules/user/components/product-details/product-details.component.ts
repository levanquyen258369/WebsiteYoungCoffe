import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ProductService } from '../../services/product.service';

@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.css']
})
export class ProductDetailsComponent implements OnInit {
  @Output() addToCart1: EventEmitter<any> = new EventEmitter<any>();

  data : any ;
  constructor(private router: ActivatedRoute, private productServerice : ProductService) { }

  ngOnInit(): void {

    this.getProduct();
    this.buy;

  }

  getProduct(){
    const productId = this.router.snapshot.params['productId'];
    this.productServerice.findId(productId).subscribe(res => {
      this.data = res;
      console.log(this.data);
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
    this.addToCart1.emit();
  }
}

