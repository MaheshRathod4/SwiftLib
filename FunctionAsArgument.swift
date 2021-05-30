func calculatePrice(price:Int,discount:Int) -> Int {
  let discount = (price * discount)/100
  return price - discount
}

func checkout(finalPrice:Any) {
  print(finalPrice)
}

checkout(finalPrice:calculatePrice(price:2000,discount:5))

//Using generic
func checkoutUsingGeneric<T>(finalPrice:T) {
  print(finalPrice)
}

checkoutUsingGeneric(finalPrice:calculatePrice(price:2000,discount:5))

//Using Closure

typealias Function = () -> Int

func checkoutUsingClosure(function:@escaping Function) {
    print(function())
}

checkoutUsingClosure { () -> Int in
    return calculatePrice(price: 2000, discount: 5)
}
