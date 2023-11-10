---
permalink: /access_context_manager_service_perimeter_egress_policy/
---

# access_context_manager_service_perimeter_egress_policy

`access_context_manager_service_perimeter_egress_policy` represents the `google_access_context_manager_service_perimeter_egress_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withEgressFrom()`](#fn-withegressfrom)
* [`fn withEgressFromMixin()`](#fn-withegressfrommixin)
* [`fn withEgressTo()`](#fn-withegressto)
* [`fn withEgressToMixin()`](#fn-withegresstomixin)
* [`fn withPerimeter()`](#fn-withperimeter)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj egress_from`](#obj-egress_from)
  * [`fn new()`](#fn-egress_fromnew)
  * [`obj egress_from.sources`](#obj-egress_fromsources)
    * [`fn new()`](#fn-egress_fromsourcesnew)
* [`obj egress_to`](#obj-egress_to)
  * [`fn new()`](#fn-egress_tonew)
  * [`obj egress_to.operations`](#obj-egress_tooperations)
    * [`fn new()`](#fn-egress_tooperationsnew)
    * [`obj egress_to.operations.method_selectors`](#obj-egress_tooperationsmethod_selectors)
      * [`fn new()`](#fn-egress_tooperationsmethod_selectorsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.access_context_manager_service_perimeter_egress_policy.new` injects a new `google_access_context_manager_service_perimeter_egress_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.access_context_manager_service_perimeter_egress_policy.new('some_id')

You can get the reference to the `id` field of the created `google.access_context_manager_service_perimeter_egress_policy` using the reference:

    $._ref.google_access_context_manager_service_perimeter_egress_policy.some_id.get('id')

This is the same as directly entering `"${ google_access_context_manager_service_perimeter_egress_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `perimeter` (`string`): The name of the Service Perimeter to add this resource to.
  - `egress_from` (`list[obj]`): Defines conditions on the source of a request causing this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_from.new](#fn-egress_fromnew) constructor.
  - `egress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and destination resources that
cause this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_to.new](#fn-egress_tonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.access_context_manager_service_perimeter_egress_policy.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_service_perimeter_egress_policy`
Terraform resource.

Unlike [google.access_context_manager_service_perimeter_egress_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `perimeter` (`string`): The name of the Service Perimeter to add this resource to.
  - `egress_from` (`list[obj]`): Defines conditions on the source of a request causing this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_from.new](#fn-egress_fromnew) constructor.
  - `egress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and destination resources that
cause this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_to.new](#fn-egress_tonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_service_perimeter_egress_policy` resource into the root Terraform configuration.


### fn withEgressFrom

```ts
withEgressFrom()
```

`google.list[obj].withEgressFrom` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the egress_from field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEgressFromMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `egress_from` field.


### fn withEgressFromMixin

```ts
withEgressFromMixin()
```

`google.list[obj].withEgressFromMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the egress_from field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEgressFrom](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `egress_from` field.


### fn withEgressTo

```ts
withEgressTo()
```

`google.list[obj].withEgressTo` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the egress_to field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEgressToMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `egress_to` field.


### fn withEgressToMixin

```ts
withEgressToMixin()
```

`google.list[obj].withEgressToMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the egress_to field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEgressTo](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `egress_to` field.


### fn withPerimeter

```ts
withPerimeter()
```

`google.string.withPerimeter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the perimeter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `perimeter` field.


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


## obj egress_from



### fn egress_from.new

```ts
new()
```


`google.access_context_manager_service_perimeter_egress_policy.egress_from.new` constructs a new object with attributes and blocks configured for the `egress_from`
Terraform sub block.



**Args**:
  - `identities` (`list`): A list of identities that are allowed access through this &#39;EgressPolicy&#39;.
Should be in the format of email address. The email address should
represent individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.
  - `identity_type` (`string`): Specifies the type of identities that are allowed access to outside the
perimeter. If left unspecified, then members of &#39;identities&#39; field will
be allowed access. Possible values: [&#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.
  - `source_restriction` (`string`): Whether to enforce traffic restrictions based on &#39;sources&#39; field. If the &#39;sources&#39; field is non-empty, then this field must be set to &#39;SOURCE_RESTRICTION_ENABLED&#39;. Possible values: [&#34;SOURCE_RESTRICTION_UNSPECIFIED&#34;, &#34;SOURCE_RESTRICTION_ENABLED&#34;, &#34;SOURCE_RESTRICTION_DISABLED&#34;] When `null`, the `source_restriction` field will be omitted from the resulting object.
  - `sources` (`list[obj]`): Sources that this EgressPolicy authorizes access from. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_from.sources.new](#fn-egress_fromsourcesnew) constructor.

**Returns**:
  - An attribute object that represents the `egress_from` sub block.


## obj egress_from.sources



### fn egress_from.sources.new

```ts
new()
```


`google.access_context_manager_service_perimeter_egress_policy.egress_from.sources.new` constructs a new object with attributes and blocks configured for the `sources`
Terraform sub block.



**Args**:
  - `access_level` (`string`): An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside. When `null`, the `access_level` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `sources` sub block.


## obj egress_to



### fn egress_to.new

```ts
new()
```


`google.access_context_manager_service_perimeter_egress_policy.egress_to.new` constructs a new object with attributes and blocks configured for the `egress_to`
Terraform sub block.



**Args**:
  - `external_resources` (`list`): A list of external resources that are allowed to be accessed. A request
matches if it contains an external resource in this list (Example:
s3://bucket/path). Currently &#39;*&#39; is not allowed. When `null`, the `external_resources` field will be omitted from the resulting object.
  - `resources` (`list`): A list of resources, currently only projects in the form
&#39;projects/&lt;projectnumber&gt;&#39;, that match this to stanza. A request matches
if it contains a resource in this list. If * is specified for resources,
then this &#39;EgressTo&#39; rule will authorize access to all resources outside
the perimeter. When `null`, the `resources` field will be omitted from the resulting object.
  - `operations` (`list[obj]`): A list of &#39;ApiOperations&#39; that this egress rule applies to. A request matches
if it contains an operation/service in this list. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_to.operations.new](#fn-egress_tooperationsnew) constructor.

**Returns**:
  - An attribute object that represents the `egress_to` sub block.


## obj egress_to.operations



### fn egress_to.operations.new

```ts
new()
```


`google.access_context_manager_service_perimeter_egress_policy.egress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or
&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with serviceName
field set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.
  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong
to the service specified by &#39;serviceName&#39; field. A single MethodSelector
entry with &#39;*&#39; specified for the &#39;method&#39; field will allow all methods
AND permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_to.operations.method_selectors.new](#fn-egress_toegress_tomethod_selectorsnew) constructor.

**Returns**:
  - An attribute object that represents the `operations` sub block.


## obj egress_to.operations.method_selectors



### fn egress_to.operations.method_selectors.new

```ts
new()
```


`google.access_context_manager_service_perimeter_egress_policy.egress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`
Terraform sub block.



**Args**:
  - `method` (`string`): Value for &#39;method&#39; should be a valid method name for the corresponding
&#39;serviceName&#39; in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for method,
then ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.
  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the
corresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `method_selectors` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.access_context_manager_service_perimeter_egress_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
