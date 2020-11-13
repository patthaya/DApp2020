// get
MyData.deployed().then(function(instance){return instance.get.call();}).then(function(value){return value.toNumber()});

// set
MyData.deployed().then(function(instance){return instance.set(2020);});