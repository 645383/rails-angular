app.controller 'index', [ '$scope', 'Product', ($scope, Product) ->
  Product.get().then (products)->
    $scope.products = products
]
