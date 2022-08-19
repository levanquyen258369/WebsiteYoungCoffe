import { HttpClient } from '@angular/common/http';
import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, NgForm, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { UserservicesService } from '../../services/userservices.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  @ViewChild('loginForm')
  loginForm!: NgForm;

  formLogin = this.fb.group({
      userName: ['', Validators.required],
      password: ['', Validators.required],
      status: [true],
      isAdmin: [true],
  });
  submitted = false;
  constructor(

    private fb: FormBuilder,
    private route: ActivatedRoute,
    private userService: UserservicesService,
    private router: Router,
    private http: HttpClient
  ) { }

  ngOnInit(): void {
      this.loadUser();
      // let id = this.route.snapshot.params['userId'];
      // this.userService.findById(id).subscribe(resA => console.log(resA));
  }



  data: Array<any> =[]
  loadUser(){
      this.userService.get().subscribe(res =>{
        this.data = res;
        console.log(res);
      })
  }

  onSubmit(){
    for(let p of this.data){
      console.log(p)
      if ( p.userName == this.formLogin.get('userName')?.value && p.password == this.formLogin.get('password')?.value ){
        localStorage.setItem('userName', JSON.stringify(p.userName));
        localStorage.setItem('password', JSON.stringify(p.password));
          this.router.navigateByUrl('/user/home');

      }else if(!this.formLogin.valid) {
        alert('Dữ liệu không hợp lệ!');
        return;
      }
      location.assign('/user/home');
    }

    // console.log(this.formLogin.value);
    // console.log(this.formLogin.get('userName'));
  }


}
