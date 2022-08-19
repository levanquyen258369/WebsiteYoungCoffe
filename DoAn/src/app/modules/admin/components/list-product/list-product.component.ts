import { Component, OnInit } from '@angular/core';
import { ProductService } from 'src/app/modules/user/services/product.service';

@Component({
  selector: 'app-list-product',
  templateUrl: './list-product.component.html',
  styleUrls: ['./list-product.component.css']
})
export class ListProductComponent implements OnInit {

  constructor(private productService: ProductService) { }

  ngOnInit(): void {
    this.loadProducts();

  }

  listProduct: Array<any> = [];
  loadProducts(){
        this.productService.get().subscribe(res =>{
          this.listProduct = res;
          console.log(this.listProduct);
        })
  }

  deleteProduct(index: any){
    this.productService.remove(index).subscribe(res3 =>{
      this.listProduct.splice(index, 1);
      console.log(this.listProduct);
      this.loadProducts();
    })
}
  disable(id:any){
    this.productService.findById(id).subscribe(res0 => {
      if(res0.status == true){
        res0.status = false;
      }
      this.productService.edit(id, res0).subscribe(res1 => {
        this.loadProducts();
      })
    })
  }
  enable(id:any){
    this.productService.findById(id).subscribe(res2 =>{
      if(res2.status == false){
        res2.status = true;
      }
      this.productService.edit(id, res2).subscribe(res2 =>{
        this.loadProducts();
      })
    })
  }

  keyword: any ='';

  loadSearching(key: any){

      this.productService.get().subscribe(res3 =>{
       this.listProduct = [];
        console.log(res3)
        for(let p of res3){
          if(key.toLowerCase() == (p.productId.toLowerCase() || (p.productName.toString.toLowerCase()).includes(key.toLowerCase()))){
              this.listProduct.push(p);
              console.log(p)
          }
        }
        return this.listProduct;
          console.log(this.listProduct);



      })
  }


}
