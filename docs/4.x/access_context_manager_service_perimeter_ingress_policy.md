---
permalink: /access_context_manager_service_perimeter_ingress_policy/
---

# access_context_manager_service_perimeter_ingress_policy

`access_context_manager_service_perimeter_ingress_policy` represents the `google_access_context_manager_service_perimeter_ingress_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withIngressFrom()`](#fn-withingressfrom)
* [`fn withIngressFromMixin()`](#fn-withingressfrommixin)
* [`fn withIngressTo()`](#fn-withingressto)
* [`fn withIngressToMixin()`](#fn-withingresstomixin)
* [`fn withPerimeter()`](#fn-withperimeter)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj ingress_from`](#obj-ingress_from)
  * [`fn new()`](#fn-ingress_fromnew)
  * [`obj ingress_from.sources`](#obj-ingress_fromsources)
    * [`fn new()`](#fn-ingress_fromsourcesnew)
* [`obj ingress_to`](#obj-ingress_to)
  * [`fn new()`](#fn-ingress_tonew)
  * [`obj ingress_to.operations`](#obj-ingress_tooperations)
    * [`fn new()`](#fn-ingress_tooperationsnew)
    * [`obj ingress_to.operations.method_selectors`](#obj-ingress_tooperationsmethod_selectors)
      * [`fn new()`](#fn-ingress_tooperationsmethod_selectorsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.access_context_manager_service_perimeter_ingress_policy.new` injects a new `google_access_context_manager_service_perimeter_ingress_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.access_context_manager_service_perimeter_ingress_policy.new('some_id')

You can get the reference to the `id` field of the created `google.access_context_manager_service_perimeter_ingress_policy` using the reference:

    $._ref.google_access_context_manager_service_perimeter_ingress_policy.some_id.get('id')

This is the same as directly entering `"${ google_access_context_manager_service_perimeter_ingress_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `perimeter` (`string`): The name of the Service Perimeter to add this resource to.
  - `ingress_from` (`list[obj]`): Defines the conditions on the source of a request causing this &#39;IngressPolicy&#39;
to apply. When `null`, the `ingress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_from.new](#fn-ingress_fromnew) constructor.
  - `ingress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and request destination that cause
this &#39;IngressPolicy&#39; to apply. When `null`, the `ingress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_to.new](#fn-ingress_tonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.access_context_manager_service_perimeter_ingress_policy.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_service_perimeter_ingress_policy`
Terraform resource.

Unlike [google.access_context_manager_service_perimeter_ingress_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `perimeter` (`string`): The name of the Service Perimeter to add this resource to.
  - `ingress_from` (`list[obj]`): Defines the conditions on the source of a request causing this &#39;IngressPolicy&#39;
to apply. When `null`, the `ingress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_from.new](#fn-ingress_fromnew) constructor.
  - `ingress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and request destination that cause
this &#39;IngressPolicy&#39; to apply. When `null`, the `ingress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_to.new](#fn-ingress_tonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_service_perimeter_ingress_policy` resource into the root Terraform configuration.


### fn withIngressFrom

```ts
withIngressFrom()
```

`google.list[obj].withIngressFrom` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ingress_from field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIngressFromMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ingress_from` field.


### fn withIngressFromMixin

```ts
withIngressFromMixin()
```

`google.list[obj].withIngressFromMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ingress_from field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIngressFrom](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ingress_from` field.


### fn withIngressTo

```ts
withIngressTo()
```

`google.list[obj].withIngressTo` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ingress_to field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIngressToMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ingress_to` field.


### fn withIngressToMixin

```ts
withIngressToMixin()
```

`google.list[obj].withIngressToMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ingress_to field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIngressTo](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ingress_to` field.


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


## obj ingress_from



### fn ingress_from.new

```ts
new()
```


`google.access_context_manager_service_perimeter_ingress_policy.ingress_from.new` constructs a new object with attributes and blocks configured for the `ingress_from`
Terraform sub block.



**Args**:
  - `identities` (`list`): A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent
individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.
  - `identity_type` (`string`): Specifies the type of identities that are allowed access from outside the
perimeter. If left unspecified, then members of &#39;identities&#39; field will be
allowed access. Possible values: [&#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.
  - `sources` (`list[obj]`): Sources that this &#39;IngressPolicy&#39; authorizes access from. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_from.sources.new](#fn-ingress_fromsourcesnew) constructor.

**Returns**:
  - An attribute object that represents the `ingress_from` sub block.


## obj ingress_from.sources



### fn ingress_from.sources.new

```ts
new()
```


`google.access_context_manager_service_perimeter_ingress_policy.ingress_from.sources.new` constructs a new object with attributes and blocks configured for the `sources`
Terraform sub block.



**Args**:
  - `access_level` (`string`): An &#39;AccessLevel&#39; resource name that allow resources within the
&#39;ServicePerimeters&#39; to be accessed from the internet. &#39;AccessLevels&#39; listed
must be in the same policy as this &#39;ServicePerimeter&#39;. Referencing a nonexistent
&#39;AccessLevel&#39; will cause an error. If no &#39;AccessLevel&#39; names are listed,
resources within the perimeter can only be accessed via Google Cloud calls
with request origins within the perimeter.
Example &#39;accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.&#39;
If * is specified, then all IngressSources will be allowed. When `null`, the `access_level` field will be omitted from the resulting object.
  - `resource` (`string`): A Google Cloud resource that is allowed to ingress the perimeter.
Requests from these resources will be allowed to access perimeter data.
Currently only projects are allowed. Format &#39;projects/{project_number}&#39;
The project may be in any Google Cloud organization, not just the
organization that the perimeter is defined in. &#39;*&#39; is not allowed, the case
of allowing all Google Cloud resources only is not supported. When `null`, the `resource` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `sources` sub block.


## obj ingress_to



### fn ingress_to.new

```ts
new()
```


`google.access_context_manager_service_perimeter_ingress_policy.ingress_to.new` constructs a new object with attributes and blocks configured for the `ingress_to`
Terraform sub block.



**Args**:
  - `resources` (`list`): A list of resources, currently only projects in the form
&#39;projects/&lt;projectnumber&gt;&#39;, protected by this &#39;ServicePerimeter&#39;
that are allowed to be accessed by sources defined in the
corresponding &#39;IngressFrom&#39;. A request matches if it contains
a resource in this list. If &#39;*&#39; is specified for resources,
then this &#39;IngressTo&#39; rule will authorize access to all
resources inside the perimeter, provided that the request
also matches the &#39;operations&#39; field. When `null`, the `resources` field will be omitted from the resulting object.
  - `operations` (`list[obj]`): A list of &#39;ApiOperations&#39; the sources specified in corresponding &#39;IngressFrom&#39;
are allowed to perform in this &#39;ServicePerimeter&#39;. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_to.operations.new](#fn-ingress_tooperationsnew) constructor.

**Returns**:
  - An attribute object that represents the `ingress_to` sub block.


## obj ingress_to.operations



### fn ingress_to.operations.new

```ts
new()
```


`google.access_context_manager_service_perimeter_ingress_policy.ingress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or
&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with &#39;serviceName&#39;
field set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.
  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong to
the service specified by serviceName field. A single &#39;MethodSelector&#39; entry
with &#39;*&#39; specified for the method field will allow all methods AND
permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_to.operations.method_selectors.new](#fn-ingress_toingress_tomethod_selectorsnew) constructor.

**Returns**:
  - An attribute object that represents the `operations` sub block.


## obj ingress_to.operations.method_selectors



### fn ingress_to.operations.method_selectors.new

```ts
new()
```


`google.access_context_manager_service_perimeter_ingress_policy.ingress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`
Terraform sub block.



**Args**:
  - `method` (`string`): Value for method should be a valid method name for the corresponding
serviceName in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for &#39;method&#39;, then
ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.
  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the
corresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `method_selectors` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.access_context_manager_service_perimeter_ingress_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
