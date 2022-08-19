import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { CategoryService } from 'src/app/modules/user/services/category.service';

@Component({
  selector: 'app-edit-category-admin',
  templateUrl: './edit-category-admin.component.html',
  styleUrls: ['./edit-category-admin.component.css']
})
export class EditCategoryAdminComponent implements OnInit {

  formEditCategory = this.fb.group({
      categoryId: [''],
      categoryName: ['', Validators.required],
      status: ['', Validators.required],

  });
  submitted =false;
  constructor(private categoryAdminService: CategoryService,
    private route: ActivatedRoute,
    private fb: FormBuilder,
    private router: Router,
    private http: HttpClient) { }

    data: any = [];
  ngOnInit(): void {
      let categoryId = this.route.snapshot.params['categoryId'];
      console.log(this.data);
      console.log(categoryId);
      this.categoryAdminService.findById(categoryId).subscribe(res =>{
        this.data = res;
        console.log(this.data);
        this.formEditCategory.get('categoryId')?.setValue(this.data.categoryId);
        this.formEditCategory.get('categoryName')?.setValue(this.data.categoryName);
        this.formEditCategory.get('status')?.setValue(this.data.status);
      });
  }


  editCategory(){
    this.categoryAdminService.edit(this.data.categoryId,this.formEditCategory.value).subscribe(res =>{
      this.router.navigateByUrl('/admin/listcategory');
      console.log(res);
    })
  }

}
