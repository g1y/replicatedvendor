## Replicated Vendor API Ruby bindings

#### Example listing all of your applications

```ruby
require "replicatedvendor"

token = "my-replicated-token"
rvapi = VendorApi.new(token)

apps = rapi.apps.list()
puts apps 
```
