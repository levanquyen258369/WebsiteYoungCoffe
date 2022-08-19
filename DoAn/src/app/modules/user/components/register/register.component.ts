import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { CustomerService } from '../../services/customer.service';
import { UserservicesService } from '../../services/userservices.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  constructor(
    private fb: FormBuilder,
    private route: ActivatedRoute,
    private userService: UserservicesService,
    private customerService: CustomerService,
    private router: Router,
    private http: HttpClient
  ) { }

  formRegister = this.fb.group({
    fullName: ['', Validators.required],
    email: ['', Validators.required],
    phone: ['', Validators.required],
     address: ['', Validators.required],
     avatar: ['aaa', Validators.required],
    userName: ['', Validators.required],
    password: ['', Validators.required],
    status: [true],
    isAdmin: [true],
});
  ngOnInit(): void {

    let id = this.route.snapshot.params['customerId'];
    this.customerService.findById(id).subscribe(resA => console.log(resA));
    this.loadCustomer();
    this.loadUser();
  }


  dataUser: Array<any> =[]
  loadUser(){
      this.userService.get().subscribe(res =>{
        this.dataUser = res;
        console.log(res);
      })
  }

  dataCustomer: Array<any> =[]
  loadCustomer(){
      this.customerService.get().subscribe(resA =>{
        this.dataCustomer = resA;
        console.log(resA);
      })
  }


  customerAdded: any = null;
  customerOnlyId: any = null;
  userAdded: any = null;
  addRegister(){
        this.customerService.add(this.formRegister.value).subscribe(res0 =>{
          this.customerAdded = res0;
          this.customerOnlyId = {customerId: this.customerAdded.customerId};
          console.log(res0);
          //l
          this.userService.add(this.formRegister.value).subscribe(res1 =>{

            console.log(res1);
          })
          alert('Bạn đã đăng ký thành công!')
        })
  }
}
