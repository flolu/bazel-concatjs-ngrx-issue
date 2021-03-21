import {HttpClientModule} from '@angular/common/http'
import {NgModule} from '@angular/core'
import {BrowserModule} from '@angular/platform-browser'

import {AppRoutingModule} from './app-routing.module'
import {AppComponent} from './app.component'

@NgModule({
  imports: [
    HttpClientModule,
    BrowserModule.withServerTransition({appId: 'bazel-concatjs-ngrx-issue'}),
    AppRoutingModule,
  ],
  declarations: [AppComponent],
})
export class AppBaseModule {}
