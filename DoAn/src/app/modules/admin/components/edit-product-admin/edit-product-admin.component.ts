import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { CategoryService } from 'src/app/modules/user/services/category.service';
import { ProductService } from 'src/app/modules/user/services/product.service';

@Component({
  selector: 'app-edit-product-admin',
  templateUrl: './edit-product-admin.component.html',
  styleUrls: ['./edit-product-admin.component.css']
})
export class EditProductAdminComponent implements OnInit {

  formEditProduct = this.fb.group({
    productId: [''],
    productName: ['', Validators.required],
    price:['', Validators.required],
    productImage: ['', Validators.required],
    description: ['', Validators.required],
    exprity: ['', Validators.required],
    madeIn: ['', Validators.required],
    quantity: ['', Validators.required],
    status: ['', Validators.required],
    categoryId: ['', Validators.required],

  })
  submitted = false;
  constructor(private categoryAdminServices: CategoryService,
      private productAdminServices: ProductService,
      private route: ActivatedRoute,
      private fb: FormBuilder,
      private router: Router,
      private http: HttpClient

    ) { }


  data: any = [];

  ngOnInit(): void {
    let productId = this.route.snapshot.params['productId'];
    console.log(this.data);
    console.log(productId);
    this.productAdminServices.findById(productId).subscribe(res =>{
      this.data = res;
      console.log(this.data);
      this.formEditProduct.get('productId')?.setValue(this.data.productId);
      this.formEditProduct.get('productName')?.setValue(this.data.productName);
      this.formEditProduct.get('price')?.setValue(this.data.price);
      this.formEditProduct.get('productImage')?.setValue(this.data.productImage);
      this.formEditProduct.get('description')?.setValue(this.data.description);
      this.formEditProduct.get('exprity')?.setValue(this.data.exprity);
      this.formEditProduct.get('madeIn')?.setValue(this.data.madeIn);
      this.formEditProduct.get('quantity')?.setValue(this.data.quantity);
      this.formEditProduct.get('status')?.setValue(this.data.status);
      this.formEditProduct.get('categoryId')?.setValue(this.data.categoryid);
    });
  }

  editProduct(){
    this.productAdminServices.edit(this.data.productId, this.formEditProduct.value).subscribe(res =>{
      this.router.navigateByUrl('/admin/listproduct');
      console.log(res);
    })
  }

}
