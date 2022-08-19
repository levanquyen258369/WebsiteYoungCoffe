import { Component, OnInit } from '@angular/core';
import { LazyloadService } from 'src/app/services/lazyload.service';

@Component({
  selector: 'app-drinware',
  templateUrl: './drinware.component.html',
  styleUrls: ['./drinware.component.css']
})
export class DrinwareComponent implements OnInit {

  constructor(private lazyLoad: LazyloadService) { }

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
  }

}
