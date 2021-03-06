import {isPlatformBrowser} from '@angular/common'
import {Inject, NgModule, PLATFORM_ID} from '@angular/core'

import {RootStoreModule} from '@client/store'

import {AppBaseModule} from './app-base.module'
import {AppComponent} from './app.component'

@NgModule({
  imports: [AppBaseModule, RootStoreModule],
  bootstrap: [AppComponent],
})
export class AppProdModule {
  constructor(@Inject(PLATFORM_ID) private platform: string) {
    if (isPlatformBrowser(this.platform)) {
      console.log(`🚀 Launching production app`)
    }
  }
}
