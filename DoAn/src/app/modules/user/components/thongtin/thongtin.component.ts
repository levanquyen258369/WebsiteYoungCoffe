import { HttpClient } from '@angular/common/http';
import { ThrowStmt } from '@angular/compiler';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { CustomerService } from '../../services/customer.service';
import { UserservicesService } from '../../services/userservices.service';

@Component({
  selector: 'app-thongtin',
  templateUrl: './thongtin.component.html',
  styleUrls: ['./thongtin.component.css']
})
export class ThongtinComponent implements OnInit {

  formEditThongTin = this.fb.group({
    customerId: [''],
    fullName: ['', Validators.required],
    password: ['', Validators.required],
    phone: ['', Validators.required],
    address:['', Validators.required],
    email: ['', Validators.required],
    avatar: ['', Validators.required],
    status: true,


  })
  constructor(
    private fb: FormBuilder,
    private route: ActivatedRoute,
    private userService: UserservicesService,
    private router: Router,
    private customerServices: CustomerService,
    private http: HttpClient
  ) { }

  ngOnInit(): void {
    // this.loadCus();
    let customerId = this.route.snapshot.params['customerId']
    this.customerServices.findById(customerId).subscribe(res0 =>{
        this.data = res0;
        console.log(res0);
        this.formEditThongTin.get('customerId')?.setValue(this.data.customerId);
        this.formEditThongTin.get('fullName')?.setValue(this.data.fullName);
        this.formEditThongTin.get('password')?.setValue(this.data.password);
        this.formEditThongTin.get('phone')?.setValue(this.data.phone);
        this.formEditThongTin.get('address')?.setValue(this.data.address);
        this.formEditThongTin.get('email')?.setValue(this.data.email);
        this.formEditThongTin.get('avatar')?.setValue(this.data.avatar);
        this.formEditThongTin.get('status')?.setValue(this.data.status);
    });
  }

  data: any
  dataThongtin: Array<any> = [];
  editThongTin(){
      this.customerServices.edit(this.data.customerId, this.formEditThongTin.value).subscribe(res =>{
        this.data = res;
        console.log(res);
        this.router.navigateByUrl('thongtin/:customerId');
      })
  }
  p: any = localStorage.getItem('userName');
  q: any = localStorage.getItem('password');
}
