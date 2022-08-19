import { Component } from '@angular/core';
import { ShopComponent } from './modules/user/components/shop/shop.component';
import { LazyloadService } from './services/lazyload.service';
// import { HomeComponent } from './modules/admin/components/home/home.component';


@Component({

  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'DoAn';
  number: number = 1;
  data!: any[];
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
    this.lazyLoad.loadScript('assets/css/style.css').subscribe(_ => {
    });
    this.lazyLoad.loadScript('assets/dist/js/demo.js').subscribe(_ => {
    });
  }

  onActive(componentRef: any) {
      if (componentRef instanceof ShopComponent) {
      console.log(componentRef);
      componentRef.addToCart.subscribe(() => {
        this.number++;
        console.log("CLicked!");
      });
    }
  }


}
