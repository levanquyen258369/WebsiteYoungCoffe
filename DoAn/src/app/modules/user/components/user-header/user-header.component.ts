import { HttpClient } from '@angular/common/http';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';
import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { LazyloadService } from 'src/app/services/lazyload.service';
import { UserservicesService } from '../../services/userservices.service';
@Component({
  selector: 'app-user-header',
  templateUrl: './user-header.component.html',
  styleUrls: ['./user-header.component.css']
})
export class UserHeaderComponent implements OnInit {
  @Input() dataNumber: number = 0;
  @Input() dataCart: any[] = [];
  @Input() dataCart1: any[] = [];
  constructor(private lazyLoad: LazyloadService,
    private route: ActivatedRoute,
    private router: Router,
    private userServices: UserservicesService,
    private http: HttpClient
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
    this.lazyLoad.loadScript('assets/css/bootstrap.min.css').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/css/style.css').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/dist/js/demo.js').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/dist/js/jquery-main.js').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/dist/js/thuvien.js').subscribe(_ => {
    });

    this.loadUser();

  }

  p: any = localStorage.getItem('userName');

  dangXuat(){
    localStorage.removeItem('userName');
    location.reload();
  }

  quanLy(){
    const setjson=JSON.stringify('admin123');
        if(this.p == '"admin123"' || this.p =='"ADMIN123"'){
          this.router.navigateByUrl('/admin/home');

        }else{
          alert("Hãy đăng nhập đúng tài khoản quản lý!")
        }


  }

  dataUsers : Array<any> =[]
  user1: any;
  loadUser(){
    this.userServices.get().subscribe(res =>{
      this.dataUsers = res;
      for(let b of this.dataUsers){
        console.log(b.userName);
        console.log(localStorage.getItem('userName'));
        if(b.userName == 'admin123'){
          console.log(b.userName);
            this.user1 = b;
            break;
        }
      }
      console.log(this.user1.isAdmin);
    })
  }
  // kiemTra(){
  //   this.
  // }





}
function obj(obj: any) {
  throw new Error('Function not implemented.');
}

