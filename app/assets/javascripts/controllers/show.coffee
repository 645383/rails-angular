app.controller 'show', [ '$scope', 'Product', '$stateParams', '$location',
  ($scope, Product, $stateParams, $location) ->
    Product.get({id: $stateParams.id}).then((product)->
      $scope.product = product).catch((error) ->
        $location.path('/')
    )
]
