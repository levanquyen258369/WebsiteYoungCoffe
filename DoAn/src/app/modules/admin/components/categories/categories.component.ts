import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { CategoryService } from 'src/app/modules/user/services/category.service';

@Component({
  selector: 'app-categories',
  templateUrl: './categories.component.html',
  styleUrls: ['./categories.component.css']
})
export class CategoriesComponent implements OnInit {
  [x: string]: any;

  formAddCategory = this.fb.group({
    categoryName: ['', Validators.required],
    status: ['', Validators.required],
  });

  constructor(private fb:FormBuilder,
    private route: ActivatedRoute,
    private categoryAdminService: CategoryService,
    private router: Router,
    private http: HttpClient
  ) { }

  ngOnInit(): void {
    let id = this.route.snapshot.params['categoryId'];
    this.categoryAdminService.findById(id).subscribe(res => console.log(res));
  }

  addCategory(){
    this.categoryAdminService.add(this.formAddCategory.value).subscribe(res =>{
      this.router.navigateByUrl('/admin/listcategory');
    })
  }
}
