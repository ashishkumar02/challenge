function findProp(obj, prop) {
	var result;
	var keys = [];
	
	function recursivelyFindProp(o, keyToBeFound) {
		Object.keys(o).forEach(function (key) {
			
			if(keys.indexOf(key) == -1){
				keys.push(key);
			}
			
			if(typeof o[key] === 'object') {
				var newKey = Object.keys(o[key])[0];
				recursivelyFindProp(o[key], newKey);
			} else {
				if(key === keyToBeFound){
					result = o[key];
				}
			}
		});
	}
	
	var userInput = prop.split("/");
	userInput.forEach(k => {
		recursivelyFindProp(obj, k);
	});
	
	const found = keys.every(r => userInput.indexOf(r) >= 0);
	
	if(found == true) {
		return result;
	} else {
		return "Some or All Keys not found";
	}
}

var test = {"a" : {"b" : {"c" : "d" }}};
console.log(findProp(test, "a/b/c"));