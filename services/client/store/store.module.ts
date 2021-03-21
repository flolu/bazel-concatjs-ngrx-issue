import {NgModule} from '@angular/core'
import {routerReducer, StoreRouterConnectingModule} from '@ngrx/router-store'
import {StoreModule} from '@ngrx/store'

import {CustomSerializer} from './router'

@NgModule({
  imports: [
    StoreModule.forRoot({
      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      router: routerReducer as any,
    }),
    StoreRouterConnectingModule.forRoot({serializer: CustomSerializer}),
  ],
})
export class RootStoreModule {}
