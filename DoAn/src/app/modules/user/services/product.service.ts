import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class ProductService {

  private base_url:string = 'http://localhost:8089/api/productAdmin';
  constructor(private http: HttpClient) {}
    get(): Observable<any> {
      return this.http.get(this.base_url);
    }
    findById(id:any): Observable<any>{
      return this.http.get(this.base_url + '/' + id)
    }
    add(entity:any): Observable<any>{
      return this.http.post(this.base_url+ '/product', entity);
    }
    edit(id:any, entity:any): Observable<any> {
      return this.http.put(this.base_url + '/' + id, entity);
    }
    remove(id:any): Observable<any>{
      return this.http.delete(this.base_url + '/' + id);
    }

    findId(productId: any) : Observable<any> {
        return this.http.get(this.base_url + '/' + productId);
    }
    asc(): Observable<any>{
      return this.http.get(this.base_url + '/asc');
    }
    desc(): Observable<any>{
      return this.http.get(this.base_url + '/desc');
    }
}
