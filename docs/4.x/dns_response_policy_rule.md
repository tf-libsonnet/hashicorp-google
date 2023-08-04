---
permalink: /dns_response_policy_rule/
---

# dns_response_policy_rule

`dns_response_policy_rule` represents the `google_dns_response_policy_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDnsName()`](#fn-withdnsname)
* [`fn withLocalData()`](#fn-withlocaldata)
* [`fn withLocalDataMixin()`](#fn-withlocaldatamixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withResponsePolicy()`](#fn-withresponsepolicy)
* [`fn withRuleName()`](#fn-withrulename)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj local_data`](#obj-local_data)
  * [`fn new()`](#fn-local_datanew)
  * [`obj local_data.local_datas`](#obj-local_datalocal_datas)
    * [`fn new()`](#fn-local_datalocal_datasnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dns_response_policy_rule.new` injects a new `google_dns_response_policy_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dns_response_policy_rule.new('some_id')

You can get the reference to the `id` field of the created `google.dns_response_policy_rule` using the reference:

    $._ref.google_dns_response_policy_rule.some_id.get('id')

This is the same as directly entering `"${ google_dns_response_policy_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dns_name` (`string`): The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `response_policy` (`string`): Identifies the response policy addressed by this request.
  - `rule_name` (`string`): An identifier for this rule. Must be unique with the ResponsePolicy.
  - `local_data` (`list[obj]`): Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed. When `null`, the `local_data` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.local_data.new](#fn-local_datanew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dns_response_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `dns_response_policy_rule`
Terraform resource.

Unlike [google.dns_response_policy_rule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dns_name` (`string`): The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `response_policy` (`string`): Identifies the response policy addressed by this request.
  - `rule_name` (`string`): An identifier for this rule. Must be unique with the ResponsePolicy.
  - `local_data` (`list[obj]`): Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed. When `null`, the `local_data` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.local_data.new](#fn-local_datanew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_response_policy_rule` resource into the root Terraform configuration.


### fn withDnsName

```ts
withDnsName()
```

`google.string.withDnsName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dns_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dns_name` field.


### fn withLocalData

```ts
withLocalData()
```

`google.list[obj].withLocalData` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the local_data field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLocalDataMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `local_data` field.


### fn withLocalDataMixin

```ts
withLocalDataMixin()
```

`google.list[obj].withLocalDataMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the local_data field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLocalData](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `local_data` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withResponsePolicy

```ts
withResponsePolicy()
```

`google.string.withResponsePolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the response_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `response_policy` field.


### fn withRuleName

```ts
withRuleName()
```

`google.string.withRuleName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the rule_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `rule_name` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj local_data



### fn local_data.new

```ts
new()
```


`google.dns_response_policy_rule.local_data.new` constructs a new object with attributes and blocks configured for the `local_data`
Terraform sub block.



**Args**:
  - `local_datas` (`list[obj]`): All resource record sets for this selector, one per resource record type. The name must match the dns_name. When `null`, the `local_datas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.local_data.local_datas.new](#fn-local_datalocal_datasnew) constructor.

**Returns**:
  - An attribute object that represents the `local_data` sub block.


## obj local_data.local_datas



### fn local_data.local_datas.new

```ts
new()
```


`google.dns_response_policy_rule.local_data.local_datas.new` constructs a new object with attributes and blocks configured for the `local_datas`
Terraform sub block.



**Args**:
  - `name` (`string`): For example, www.example.com.
  - `rrdatas` (`list`): As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) When `null`, the `rrdatas` field will be omitted from the resulting object.
  - `ttl` (`number`): Number of seconds that this ResourceRecordSet can be cached by
resolvers. When `null`, the `ttl` field will be omitted from the resulting object.
  - `type` (`string`): One of valid DNS resource types. Possible values: [&#34;A&#34;, &#34;AAAA&#34;, &#34;CAA&#34;, &#34;CNAME&#34;, &#34;DNSKEY&#34;, &#34;DS&#34;, &#34;HTTPS&#34;, &#34;IPSECVPNKEY&#34;, &#34;MX&#34;, &#34;NAPTR&#34;, &#34;NS&#34;, &#34;PTR&#34;, &#34;SOA&#34;, &#34;SPF&#34;, &#34;SRV&#34;, &#34;SSHFP&#34;, &#34;SVCB&#34;, &#34;TLSA&#34;, &#34;TXT&#34;]

**Returns**:
  - An attribute object that represents the `local_datas` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dns_response_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
