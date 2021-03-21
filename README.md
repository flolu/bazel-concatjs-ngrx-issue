### Basic Usage

- `yarn install` (Install dependencies)
- `yarn start` (Start Angular development server, http://localhost:4200)
- `yarn prod` (Start Angular production server, http://localhost:8080)

### The problem ⚠️

- `yarn upgrade-ngrx` (Upgrade NgRx from v9 to v11)
- `yarn start` (Error in the console, http://localhost:4200)

  ```
  Uncaught SyntaxError: Cannot use import statement outside a module
      at ts_scripts.js?v=32020367:12007
  ```

  at `npm/node_modules/@ngrx/store/esm2015/src/store_module.ngfactory.js`
