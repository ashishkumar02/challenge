from functools import reduce

def tree_get(object, keys, default=None):
    
    return reduce(lambda find_val, key: find_val.get(key, default) 
                  if isinstance(find_val, dict)
                  else default, keys.split("/"), object)


object= {"a":{"b":{"c":"d"}}}
keys= 'a'
tree_get(object,keys)