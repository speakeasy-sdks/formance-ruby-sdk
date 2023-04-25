<!-- Start SDK Example Usage -->
```ruby
require_relative sdk

s = sdk::SDK.new
s.config_security(
  security=Shared::Security(
    authorization="Bearer YOUR_ACCESS_TOKEN_HERE",
  )
)

    
res = s::get_server_info()

if ! res.server_info.nil?
    # handle response

```

<!-- End SDK Example Usage -->