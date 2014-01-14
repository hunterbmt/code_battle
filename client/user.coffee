app.controller 'UserCtr',['$scope','$rootScope','$meteor',($scope,$rootScope,$meteor)->
    Deps.autorun () ->
         if(Meteor.user())
            console.log JSON.stringify(Meteor.user())
            $rootScope.user = Meteor.user()
            $rootScope.apply()
    
   
    $scope.createUser = (user) ->
        Accounts.createUser user,(error)->
            if(error)
                showErrorNotify("Can't create your account",error.reason)
    $scope.loginUser = (user) ->
        Meteor.loginWithPassword user.username,user.password,(error)->
            if(error)
                 showErrorNotify("Can't login",error.reason)

    $scope.logout = ->
        Meteor.logout () ->
            $rootScope.user = null;
            $rootScope.apply()

]