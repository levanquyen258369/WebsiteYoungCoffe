import { Component, OnInit } from '@angular/core';
import { UserservicesService } from 'src/app/modules/user/services/userservices.service';

@Component({
  selector: 'app-list-staff',
  templateUrl: './list-staff.component.html',
  styleUrls: ['./list-staff.component.css']
})
export class ListStaffComponent implements OnInit {

  constructor(
    private userServices: UserservicesService
  ) { }

  ngOnInit(): void {
    this.loadUser();
  }

  data: any;
  loadUser(){
    this.userServices.get().subscribe(res =>{
      this.data =res;
      console.log(res);
    })
  }


deleteUser(index: any){
  this.userServices.remove(index).subscribe(res0 =>{
    this.data.splice(index, 1);
    console.log(res0);
    this.loadUser();
  })
}

keyword: any = '';
  loadSearching(key: any){
    this.data = [];
    this.userServices.get().subscribe(res =>{
      for(let p of res){
        if(key.toLowerCase() == p.userId || (p.userName.toLowerCase().includes(key.toLowerCase())) || key.toLowerCase() == p.status.toString().toLowerCase() ) {
          this.data.push(p);
        }
      }
      console.log(this.data);
      return this.data;
    })
  }
}

