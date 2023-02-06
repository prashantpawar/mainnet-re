open Promise
Js.log("Hello, World!")

open Mainnet
let _ =
  testNetWallet
  ->newRandom()
  ->thenResolve(wallet => {
    testNetWallet->watchOnly(wallet.address)
  })
  ->thenResolve(watchOnlyWallet => {
    Js.log(watchOnlyWallet)
  })
