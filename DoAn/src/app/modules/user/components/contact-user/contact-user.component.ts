import { Component, OnInit } from '@angular/core';
import { LazyloadService } from 'src/app/services/lazyload.service';

@Component({
  selector: 'app-contact-user',
  templateUrl: './contact-user.component.html',
  styleUrls: ['./contact-user.component.css']
})
export class ContactUserComponent implements OnInit {

  constructor(private lazyLoad: LazyloadService) { }

  ngOnInit(): void {
    
    this.lazyLoad.loadScript('assets/js/jquery-main.js').subscribe(_ => {
    });
  }

}
