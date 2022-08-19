import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { CategoryService } from 'src/app/modules/user/services/category.service';
import { ProductService } from 'src/app/modules/user/services/product.service';

@Component({
  selector: 'app-add-products',
  templateUrl: './add-products.component.html',
  styleUrls: ['./add-products.component.css']
})
export class AddProductsComponent implements OnInit {

  data: any
  formAddProduct = this.fb.group({
    productId: ['', Validators.required],
    productName: ['', Validators.required],
    price:['', Validators.required],
    productImage: ['', Validators.required],
    description: ['', Validators.required],
    exprity: ['', Validators.required],
    madeIn: ['', Validators.required],
    quantity: ['', Validators.required],
    status: ['', Validators.required],
    category: ['', Validators.required],
  });

  constructor(private fb:FormBuilder,
    private route: ActivatedRoute,
    private productAdminServices: ProductService ,
    private categoryServices: CategoryService,
    private router: Router,
    private http: HttpClient
  ) { }
  submitted = false;
  ngOnInit(): void {
    let id = this.route.snapshot.params['productId'];
    this.productAdminServices.findById(id).subscribe(res => console.log(res));
    this.loadCategories();
  }


  addProduct(){
    this.productAdminServices.add(this.formAddProduct.value).subscribe(res=>{
      console.log(res);
      this.router.navigateByUrl('/admin/listproduct')
    })
  }

  // Hàm gọi danh sách category
  categories: Array<any> = [];
  loadCategories(){
    this.categoryServices.get().subscribe(res0 =>{
      this.categories = res0;
      console.log(this.categories);
    })
  }


}
