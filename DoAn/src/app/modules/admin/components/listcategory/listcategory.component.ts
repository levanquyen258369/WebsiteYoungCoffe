import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { ActivatedRoute, Route, Router } from '@angular/router';
import { CategoryService } from 'src/app/modules/user/services/category.service';
import { LazyloadService } from 'src/app/services/lazyload.service';
import { CategoriesComponent } from '../categories/categories.component';

@Component({
  selector: 'app-listcategory',
  templateUrl: './listcategory.component.html',
  styleUrls: ['./listcategory.component.css']
})
export class ListcategoryComponent implements OnInit {


  constructor(private lazyLoad: LazyloadService,
    private categoryService: CategoryService,
    private route: ActivatedRoute,
    private fb: FormBuilder,
    private router: Router,
    private http: HttpClient
    ) { }

  ngOnInit(): void {

    this.loadCateory();


}

data:  Array<any> = [];
loadCateory(){
  this.categoryService.get().subscribe((res: any[]) =>{
    this.data = res;
    console.log(res);

  })
}

deleteCate(index: any){
    this.categoryService.remove(index).subscribe(res0 =>{
      this.data.splice(index, 1);
      console.log(res0);
      this.loadCateory();
    })
}

// editcate(edit: any){
//   this.categoryService.get().subscribe(res =>{
//     this.router.navigateByUrl('/admin/editcategory/');
//   })
// }

keyword: any = '';
  loadSearching(key: any){
    this.data = [];
    this.categoryService.get().subscribe(res =>{
      for(let p of res){
        if(key.toLowerCase() == p.categoryId || (p.categoryName.toLowerCase().includes(key.toLowerCase())) || key.toLowerCase() == p.status.toString().toLowerCase() ) {
          this.data.push(p);
        }
      }
      console.log(this.data);
      return this.data;
    })
  }
}
