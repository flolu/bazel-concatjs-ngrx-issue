import {NgModule} from '@angular/core'
import {BrowserAnimationsModule} from '@angular/platform-browser/animations'
import {StoreDevtoolsModule} from '@ngrx/store-devtools'

import {RootStoreModule} from '@client/store'

import {AppBaseModule} from './app-base.module'
import {AppComponent} from './app.component'

@NgModule({
  imports: [
    AppBaseModule,
    StoreDevtoolsModule.instrument(),
    RootStoreModule,
    BrowserAnimationsModule,
  ],
  bootstrap: [AppComponent],
})
export class AppDevModule {
  constructor() {
    console.log(`🛠️ Launching development app`)
  }
}
