import { Component, OnInit } from '@angular/core';
import { LazyloadService } from 'src/app/services/lazyload.service';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

  constructor(private lazyLoad: LazyloadService) { }

  ngOnInit(): void {
    this.lazyLoad.loadScript('assets/dist/js/demo.js').subscribe(_ => {
    });


  }

}
