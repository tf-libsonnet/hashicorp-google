---
permalink: /access_context_manager_service_perimeter/
---

# access_context_manager_service_perimeter

`access_context_manager_service_perimeter` represents the `google_access_context_manager_service_perimeter` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withParent()`](#fn-withparent)
* [`fn withPerimeterType()`](#fn-withperimetertype)
* [`fn withSpec()`](#fn-withspec)
* [`fn withSpecMixin()`](#fn-withspecmixin)
* [`fn withStatus()`](#fn-withstatus)
* [`fn withStatusMixin()`](#fn-withstatusmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTitle()`](#fn-withtitle)
* [`fn withUseExplicitDryRunSpec()`](#fn-withuseexplicitdryrunspec)
* [`obj spec`](#obj-spec)
  * [`fn new()`](#fn-specnew)
  * [`obj spec.egress_policies`](#obj-specegress_policies)
    * [`fn new()`](#fn-specegress_policiesnew)
    * [`obj spec.egress_policies.egress_from`](#obj-specegress_policiesegress_from)
      * [`fn new()`](#fn-specegress_policiesegress_fromnew)
    * [`obj spec.egress_policies.egress_to`](#obj-specegress_policiesegress_to)
      * [`fn new()`](#fn-specegress_policiesegress_tonew)
      * [`obj spec.egress_policies.egress_to.operations`](#obj-specegress_policiesegress_tooperations)
        * [`fn new()`](#fn-specegress_policiesegress_tooperationsnew)
        * [`obj spec.egress_policies.egress_to.operations.method_selectors`](#obj-specegress_policiesegress_tooperationsmethod_selectors)
          * [`fn new()`](#fn-specegress_policiesegress_tooperationsmethod_selectorsnew)
  * [`obj spec.ingress_policies`](#obj-specingress_policies)
    * [`fn new()`](#fn-specingress_policiesnew)
    * [`obj spec.ingress_policies.ingress_from`](#obj-specingress_policiesingress_from)
      * [`fn new()`](#fn-specingress_policiesingress_fromnew)
      * [`obj spec.ingress_policies.ingress_from.sources`](#obj-specingress_policiesingress_fromsources)
        * [`fn new()`](#fn-specingress_policiesingress_fromsourcesnew)
    * [`obj spec.ingress_policies.ingress_to`](#obj-specingress_policiesingress_to)
      * [`fn new()`](#fn-specingress_policiesingress_tonew)
      * [`obj spec.ingress_policies.ingress_to.operations`](#obj-specingress_policiesingress_tooperations)
        * [`fn new()`](#fn-specingress_policiesingress_tooperationsnew)
        * [`obj spec.ingress_policies.ingress_to.operations.method_selectors`](#obj-specingress_policiesingress_tooperationsmethod_selectors)
          * [`fn new()`](#fn-specingress_policiesingress_tooperationsmethod_selectorsnew)
  * [`obj spec.vpc_accessible_services`](#obj-specvpc_accessible_services)
    * [`fn new()`](#fn-specvpc_accessible_servicesnew)
* [`obj status`](#obj-status)
  * [`fn new()`](#fn-statusnew)
  * [`obj status.egress_policies`](#obj-statusegress_policies)
    * [`fn new()`](#fn-statusegress_policiesnew)
    * [`obj status.egress_policies.egress_from`](#obj-statusegress_policiesegress_from)
      * [`fn new()`](#fn-statusegress_policiesegress_fromnew)
    * [`obj status.egress_policies.egress_to`](#obj-statusegress_policiesegress_to)
      * [`fn new()`](#fn-statusegress_policiesegress_tonew)
      * [`obj status.egress_policies.egress_to.operations`](#obj-statusegress_policiesegress_tooperations)
        * [`fn new()`](#fn-statusegress_policiesegress_tooperationsnew)
        * [`obj status.egress_policies.egress_to.operations.method_selectors`](#obj-statusegress_policiesegress_tooperationsmethod_selectors)
          * [`fn new()`](#fn-statusegress_policiesegress_tooperationsmethod_selectorsnew)
  * [`obj status.ingress_policies`](#obj-statusingress_policies)
    * [`fn new()`](#fn-statusingress_policiesnew)
    * [`obj status.ingress_policies.ingress_from`](#obj-statusingress_policiesingress_from)
      * [`fn new()`](#fn-statusingress_policiesingress_fromnew)
      * [`obj status.ingress_policies.ingress_from.sources`](#obj-statusingress_policiesingress_fromsources)
        * [`fn new()`](#fn-statusingress_policiesingress_fromsourcesnew)
    * [`obj status.ingress_policies.ingress_to`](#obj-statusingress_policiesingress_to)
      * [`fn new()`](#fn-statusingress_policiesingress_tonew)
      * [`obj status.ingress_policies.ingress_to.operations`](#obj-statusingress_policiesingress_tooperations)
        * [`fn new()`](#fn-statusingress_policiesingress_tooperationsnew)
        * [`obj status.ingress_policies.ingress_to.operations.method_selectors`](#obj-statusingress_policiesingress_tooperationsmethod_selectors)
          * [`fn new()`](#fn-statusingress_policiesingress_tooperationsmethod_selectorsnew)
  * [`obj status.vpc_accessible_services`](#obj-statusvpc_accessible_services)
    * [`fn new()`](#fn-statusvpc_accessible_servicesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.access_context_manager_service_perimeter.new` injects a new `google_access_context_manager_service_perimeter` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.access_context_manager_service_perimeter.new('some_id')

You can get the reference to the `id` field of the created `google.access_context_manager_service_perimeter` using the reference:

    $._ref.google_access_context_manager_service_perimeter.some_id.get('id')

This is the same as directly entering `"${ google_access_context_manager_service_perimeter.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Description of the ServicePerimeter and its use. Does not affect
behavior. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Resource name for the ServicePerimeter. The short_name component must
begin with a letter and only include alphanumeric and &#39;_&#39;.
Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  - `parent` (`string`): The AccessPolicy this ServicePerimeter lives in.
Format: accessPolicies/{policy_id}
  - `perimeter_type` (`string`): Specifies the type of the Perimeter. There are two types: regular and
bridge. Regular Service Perimeter contains resources, access levels,
and restricted services. Every resource can be in at most
ONE regular Service Perimeter.

In addition to being in a regular service perimeter, a resource can also
be in zero or more perimeter bridges. A perimeter bridge only contains
resources. Cross project operations are permitted if all effected
resources share some perimeter (whether bridge or regular). Perimeter
Bridge does not contain access levels or services: those are governed
entirely by the regular perimeter that resource is in.

Perimeter Bridges are typically useful when building more complex
topologies with many independent perimeters that need to share some data
with a common perimeter, but should not be able to share data among
themselves. Default value: &#34;PERIMETER_TYPE_REGULAR&#34; Possible values: [&#34;PERIMETER_TYPE_REGULAR&#34;, &#34;PERIMETER_TYPE_BRIDGE&#34;] When `null`, the `perimeter_type` field will be omitted from the resulting object.
  - `title` (`string`): Human readable title. Must be unique within the Policy.
  - `use_explicit_dry_run_spec` (`bool`): Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
for all Service Perimeters, and that spec is identical to the status for those
Service Perimeters. When this flag is set, it inhibits the generation of the
implicit spec, thereby allowing the user to explicitly provide a
configuration (&#34;spec&#34;) to use in a dry-run version of the Service Perimeter.
This allows the user to test changes to the enforced config (&#34;status&#34;) without
actually enforcing them. This testing is done through analyzing the differences
between currently enforced and suggested restrictions. useExplicitDryRunSpec must
bet set to True if any of the fields in the spec are set to non-default values. When `null`, the `use_explicit_dry_run_spec` field will be omitted from the resulting object.
  - `spec` (`list[obj]`): Proposed (or dry run) ServicePerimeter configuration.
This configuration allows to specify and test ServicePerimeter configuration
without enforcing actual access restrictions. Only allowed to be set when
the &#39;useExplicitDryRunSpec&#39; flag is set. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.new](#fn-access_context_manager_service_perimeterspecnew) constructor.
  - `status` (`list[obj]`): ServicePerimeter configuration. Specifies sets of resources,
restricted services and access levels that determine
perimeter content and boundaries. When `null`, the `status` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.new](#fn-access_context_manager_service_perimeterstatusnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.timeouts.new](#fn-access_context_manager_service_perimetertimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.access_context_manager_service_perimeter.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_service_perimeter`
Terraform resource.

Unlike [google.access_context_manager_service_perimeter.new](#fn-access_context_manager_service_perimeternew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Description of the ServicePerimeter and its use. Does not affect
behavior. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Resource name for the ServicePerimeter. The short_name component must
begin with a letter and only include alphanumeric and &#39;_&#39;.
Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  - `parent` (`string`): The AccessPolicy this ServicePerimeter lives in.
Format: accessPolicies/{policy_id}
  - `perimeter_type` (`string`): Specifies the type of the Perimeter. There are two types: regular and
bridge. Regular Service Perimeter contains resources, access levels,
and restricted services. Every resource can be in at most
ONE regular Service Perimeter.

In addition to being in a regular service perimeter, a resource can also
be in zero or more perimeter bridges. A perimeter bridge only contains
resources. Cross project operations are permitted if all effected
resources share some perimeter (whether bridge or regular). Perimeter
Bridge does not contain access levels or services: those are governed
entirely by the regular perimeter that resource is in.

Perimeter Bridges are typically useful when building more complex
topologies with many independent perimeters that need to share some data
with a common perimeter, but should not be able to share data among
themselves. Default value: &#34;PERIMETER_TYPE_REGULAR&#34; Possible values: [&#34;PERIMETER_TYPE_REGULAR&#34;, &#34;PERIMETER_TYPE_BRIDGE&#34;] When `null`, the `perimeter_type` field will be omitted from the resulting object.
  - `title` (`string`): Human readable title. Must be unique within the Policy.
  - `use_explicit_dry_run_spec` (`bool`): Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
for all Service Perimeters, and that spec is identical to the status for those
Service Perimeters. When this flag is set, it inhibits the generation of the
implicit spec, thereby allowing the user to explicitly provide a
configuration (&#34;spec&#34;) to use in a dry-run version of the Service Perimeter.
This allows the user to test changes to the enforced config (&#34;status&#34;) without
actually enforcing them. This testing is done through analyzing the differences
between currently enforced and suggested restrictions. useExplicitDryRunSpec must
bet set to True if any of the fields in the spec are set to non-default values. When `null`, the `use_explicit_dry_run_spec` field will be omitted from the resulting object.
  - `spec` (`list[obj]`): Proposed (or dry run) ServicePerimeter configuration.
This configuration allows to specify and test ServicePerimeter configuration
without enforcing actual access restrictions. Only allowed to be set when
the &#39;useExplicitDryRunSpec&#39; flag is set. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.new](#fn-access_context_manager_service_perimeterspecnew) constructor.
  - `status` (`list[obj]`): ServicePerimeter configuration. Specifies sets of resources,
restricted services and access levels that determine
perimeter content and boundaries. When `null`, the `status` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.new](#fn-access_context_manager_service_perimeterstatusnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.timeouts.new](#fn-access_context_manager_service_perimetertimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_service_perimeter` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withPerimeterType

```ts
withPerimeterType()
```

`google.string.withPerimeterType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the perimeter_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `perimeter_type` field.


### fn withSpec

```ts
withSpec()
```

`google.list[obj].withSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spec` field.


### fn withSpecMixin

```ts
withSpecMixin()
```

`google.list[obj].withSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spec` field.


### fn withStatus

```ts
withStatus()
```

`google.list[obj].withStatus` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the status field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withStatusMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `status` field.


### fn withStatusMixin

```ts
withStatusMixin()
```

`google.list[obj].withStatusMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the status field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withStatus](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `status` field.


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


### fn withTitle

```ts
withTitle()
```

`google.string.withTitle` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the title field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `title` field.


### fn withUseExplicitDryRunSpec

```ts
withUseExplicitDryRunSpec()
```

`google.bool.withUseExplicitDryRunSpec` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the use_explicit_dry_run_spec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `use_explicit_dry_run_spec` field.


## obj spec



### fn spec.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.new` constructs a new object with attributes and blocks configured for the `spec`
Terraform sub block.



**Args**:
  - `access_levels` (`list`): A list of AccessLevel resource names that allow resources within
the ServicePerimeter to be accessed from the internet.
AccessLevels listed must be in the same policy as this
ServicePerimeter. Referencing a nonexistent AccessLevel is a
syntax error. If no AccessLevel names are listed, resources within
the perimeter can only be accessed via GCP calls with request
origins within the perimeter. For Service Perimeter Bridge, must
be empty.

Format: accessPolicies/{policy_id}/accessLevels/{access_level_name} When `null`, the `access_levels` field will be omitted from the resulting object.
  - `resources` (`list`): A list of GCP resources that are inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number} When `null`, the `resources` field will be omitted from the resulting object.
  - `restricted_services` (`list`): GCP services that are subject to the Service Perimeter
restrictions. Must contain a list of services. For example, if
&#39;storage.googleapis.com&#39; is specified, access to the storage
buckets inside the perimeter must meet the perimeter&#39;s access
restrictions. When `null`, the `restricted_services` field will be omitted from the resulting object.
  - `egress_policies` (`list[obj]`): List of EgressPolicies to apply to the perimeter. A perimeter may 
have multiple EgressPolicies, each of which is evaluated separately.
Access is granted if any EgressPolicy grants it. Must be empty for 
a perimeter bridge. When `null`, the `egress_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.egress_policies.new](#fn-specegress_policiesnew) constructor.
  - `ingress_policies` (`list[obj]`): List of &#39;IngressPolicies&#39; to apply to the perimeter. A perimeter may
have multiple &#39;IngressPolicies&#39;, each of which is evaluated
separately. Access is granted if any &#39;Ingress Policy&#39; grants it.
Must be empty for a perimeter bridge. When `null`, the `ingress_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.ingress_policies.new](#fn-specingress_policiesnew) constructor.
  - `vpc_accessible_services` (`list[obj]`): Specifies how APIs are allowed to communicate within the Service
Perimeter. When `null`, the `vpc_accessible_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.vpc_accessible_services.new](#fn-specvpc_accessible_servicesnew) constructor.

**Returns**:
  - An attribute object that represents the `spec` sub block.


## obj spec.egress_policies



### fn spec.egress_policies.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.egress_policies.new` constructs a new object with attributes and blocks configured for the `egress_policies`
Terraform sub block.



**Args**:
  - `egress_from` (`list[obj]`): Defines conditions on the source of a request causing this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.egress_policies.egress_from.new](#fn-egress_policiesegress_fromnew) constructor.
  - `egress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and destination resources that 
cause this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.egress_policies.egress_to.new](#fn-egress_policiesegress_tonew) constructor.

**Returns**:
  - An attribute object that represents the `egress_policies` sub block.


## obj spec.egress_policies.egress_from



### fn spec.egress_policies.egress_from.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.egress_policies.egress_from.new` constructs a new object with attributes and blocks configured for the `egress_from`
Terraform sub block.



**Args**:
  - `identities` (`list`): A list of identities that are allowed access through this &#39;EgressPolicy&#39;. 
Should be in the format of email address. The email address should 
represent individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.
  - `identity_type` (`string`): Specifies the type of identities that are allowed access to outside the 
perimeter. If left unspecified, then members of &#39;identities&#39; field will 
be allowed access. Possible values: [&#34;IDENTITY_TYPE_UNSPECIFIED&#34;, &#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `egress_from` sub block.


## obj spec.egress_policies.egress_to



### fn spec.egress_policies.egress_to.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.egress_policies.egress_to.new` constructs a new object with attributes and blocks configured for the `egress_to`
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
if it contains an operation/service in this list. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.egress_policies.egress_to.operations.new](#fn-egress_tooperationsnew) constructor.

**Returns**:
  - An attribute object that represents the `egress_to` sub block.


## obj spec.egress_policies.egress_to.operations



### fn spec.egress_policies.egress_to.operations.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.egress_policies.egress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or 
&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with serviceName 
field set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.
  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong 
to the service specified by &#39;serviceName&#39; field. A single MethodSelector 
entry with &#39;*&#39; specified for the &#39;method&#39; field will allow all methods 
AND permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.egress_policies.egress_to.operations.method_selectors.new](#fn-operationsmethod_selectorsnew) constructor.

**Returns**:
  - An attribute object that represents the `operations` sub block.


## obj spec.egress_policies.egress_to.operations.method_selectors



### fn spec.egress_policies.egress_to.operations.method_selectors.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.egress_policies.egress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`
Terraform sub block.



**Args**:
  - `method` (`string`): Value for &#39;method&#39; should be a valid method name for the corresponding 
&#39;serviceName&#39; in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for method, 
then ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.
  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the 
corresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `method_selectors` sub block.


## obj spec.ingress_policies



### fn spec.ingress_policies.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.ingress_policies.new` constructs a new object with attributes and blocks configured for the `ingress_policies`
Terraform sub block.



**Args**:
  - `ingress_from` (`list[obj]`): Defines the conditions on the source of a request causing this &#39;IngressPolicy&#39;
to apply. When `null`, the `ingress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_from.new](#fn-ingress_policiesingress_fromnew) constructor.
  - `ingress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and request destination that cause
this &#39;IngressPolicy&#39; to apply. When `null`, the `ingress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_to.new](#fn-ingress_policiesingress_tonew) constructor.

**Returns**:
  - An attribute object that represents the `ingress_policies` sub block.


## obj spec.ingress_policies.ingress_from



### fn spec.ingress_policies.ingress_from.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_from.new` constructs a new object with attributes and blocks configured for the `ingress_from`
Terraform sub block.



**Args**:
  - `identities` (`list`): A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent 
individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.
  - `identity_type` (`string`): Specifies the type of identities that are allowed access from outside the 
perimeter. If left unspecified, then members of &#39;identities&#39; field will be 
allowed access. Possible values: [&#34;IDENTITY_TYPE_UNSPECIFIED&#34;, &#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.
  - `sources` (`list[obj]`): Sources that this &#39;IngressPolicy&#39; authorizes access from. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_from.sources.new](#fn-ingress_fromsourcesnew) constructor.

**Returns**:
  - An attribute object that represents the `ingress_from` sub block.


## obj spec.ingress_policies.ingress_from.sources



### fn spec.ingress_policies.ingress_from.sources.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_from.sources.new` constructs a new object with attributes and blocks configured for the `sources`
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


## obj spec.ingress_policies.ingress_to



### fn spec.ingress_policies.ingress_to.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_to.new` constructs a new object with attributes and blocks configured for the `ingress_to`
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
are allowed to perform in this &#39;ServicePerimeter&#39;. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_to.operations.new](#fn-ingress_tooperationsnew) constructor.

**Returns**:
  - An attribute object that represents the `ingress_to` sub block.


## obj spec.ingress_policies.ingress_to.operations



### fn spec.ingress_policies.ingress_to.operations.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or 
&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with &#39;serviceName&#39; 
field set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.
  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong to 
the service specified by serviceName field. A single &#39;MethodSelector&#39; entry 
with &#39;*&#39; specified for the method field will allow all methods AND 
permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_to.operations.method_selectors.new](#fn-operationsmethod_selectorsnew) constructor.

**Returns**:
  - An attribute object that represents the `operations` sub block.


## obj spec.ingress_policies.ingress_to.operations.method_selectors



### fn spec.ingress_policies.ingress_to.operations.method_selectors.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.ingress_policies.ingress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`
Terraform sub block.



**Args**:
  - `method` (`string`): Value for method should be a valid method name for the corresponding 
serviceName in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for &#39;method&#39;, then 
ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.
  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the 
corresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `method_selectors` sub block.


## obj spec.vpc_accessible_services



### fn spec.vpc_accessible_services.new

```ts
new()
```


`google.access_context_manager_service_perimeter.spec.vpc_accessible_services.new` constructs a new object with attributes and blocks configured for the `vpc_accessible_services`
Terraform sub block.



**Args**:
  - `allowed_services` (`list`): The list of APIs usable within the Service Perimeter.
Must be empty unless &#39;enableRestriction&#39; is True. When `null`, the `allowed_services` field will be omitted from the resulting object.
  - `enable_restriction` (`bool`): Whether to restrict API calls within the Service Perimeter to the
list of APIs specified in &#39;allowedServices&#39;. When `null`, the `enable_restriction` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vpc_accessible_services` sub block.


## obj status



### fn status.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.new` constructs a new object with attributes and blocks configured for the `status`
Terraform sub block.



**Args**:
  - `access_levels` (`list`): A list of AccessLevel resource names that allow resources within
the ServicePerimeter to be accessed from the internet.
AccessLevels listed must be in the same policy as this
ServicePerimeter. Referencing a nonexistent AccessLevel is a
syntax error. If no AccessLevel names are listed, resources within
the perimeter can only be accessed via GCP calls with request
origins within the perimeter. For Service Perimeter Bridge, must
be empty.

Format: accessPolicies/{policy_id}/accessLevels/{access_level_name} When `null`, the `access_levels` field will be omitted from the resulting object.
  - `resources` (`list`): A list of GCP resources that are inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number} When `null`, the `resources` field will be omitted from the resulting object.
  - `restricted_services` (`list`): GCP services that are subject to the Service Perimeter
restrictions. Must contain a list of services. For example, if
&#39;storage.googleapis.com&#39; is specified, access to the storage
buckets inside the perimeter must meet the perimeter&#39;s access
restrictions. When `null`, the `restricted_services` field will be omitted from the resulting object.
  - `egress_policies` (`list[obj]`): List of EgressPolicies to apply to the perimeter. A perimeter may 
have multiple EgressPolicies, each of which is evaluated separately.
Access is granted if any EgressPolicy grants it. Must be empty for 
a perimeter bridge. When `null`, the `egress_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.egress_policies.new](#fn-statusegress_policiesnew) constructor.
  - `ingress_policies` (`list[obj]`): List of &#39;IngressPolicies&#39; to apply to the perimeter. A perimeter may
have multiple &#39;IngressPolicies&#39;, each of which is evaluated
separately. Access is granted if any &#39;Ingress Policy&#39; grants it.
Must be empty for a perimeter bridge. When `null`, the `ingress_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.ingress_policies.new](#fn-statusingress_policiesnew) constructor.
  - `vpc_accessible_services` (`list[obj]`): Specifies how APIs are allowed to communicate within the Service
Perimeter. When `null`, the `vpc_accessible_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.vpc_accessible_services.new](#fn-statusvpc_accessible_servicesnew) constructor.

**Returns**:
  - An attribute object that represents the `status` sub block.


## obj status.egress_policies



### fn status.egress_policies.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.egress_policies.new` constructs a new object with attributes and blocks configured for the `egress_policies`
Terraform sub block.



**Args**:
  - `egress_from` (`list[obj]`): Defines conditions on the source of a request causing this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.egress_policies.egress_from.new](#fn-egress_policiesegress_fromnew) constructor.
  - `egress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and destination resources that 
cause this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.egress_policies.egress_to.new](#fn-egress_policiesegress_tonew) constructor.

**Returns**:
  - An attribute object that represents the `egress_policies` sub block.


## obj status.egress_policies.egress_from



### fn status.egress_policies.egress_from.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.egress_policies.egress_from.new` constructs a new object with attributes and blocks configured for the `egress_from`
Terraform sub block.



**Args**:
  - `identities` (`list`): A list of identities that are allowed access through this &#39;EgressPolicy&#39;. 
Should be in the format of email address. The email address should 
represent individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.
  - `identity_type` (`string`): Specifies the type of identities that are allowed access to outside the 
perimeter. If left unspecified, then members of &#39;identities&#39; field will 
be allowed access. Possible values: [&#34;IDENTITY_TYPE_UNSPECIFIED&#34;, &#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `egress_from` sub block.


## obj status.egress_policies.egress_to



### fn status.egress_policies.egress_to.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.egress_policies.egress_to.new` constructs a new object with attributes and blocks configured for the `egress_to`
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
if it contains an operation/service in this list. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.egress_policies.egress_to.operations.new](#fn-egress_tooperationsnew) constructor.

**Returns**:
  - An attribute object that represents the `egress_to` sub block.


## obj status.egress_policies.egress_to.operations



### fn status.egress_policies.egress_to.operations.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.egress_policies.egress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or 
&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with serviceName 
field set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.
  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong 
to the service specified by &#39;serviceName&#39; field. A single MethodSelector 
entry with &#39;*&#39; specified for the &#39;method&#39; field will allow all methods 
AND permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.egress_policies.egress_to.operations.method_selectors.new](#fn-operationsmethod_selectorsnew) constructor.

**Returns**:
  - An attribute object that represents the `operations` sub block.


## obj status.egress_policies.egress_to.operations.method_selectors



### fn status.egress_policies.egress_to.operations.method_selectors.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.egress_policies.egress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`
Terraform sub block.



**Args**:
  - `method` (`string`): Value for &#39;method&#39; should be a valid method name for the corresponding 
&#39;serviceName&#39; in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for method, 
then ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.
  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the 
corresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `method_selectors` sub block.


## obj status.ingress_policies



### fn status.ingress_policies.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.ingress_policies.new` constructs a new object with attributes and blocks configured for the `ingress_policies`
Terraform sub block.



**Args**:
  - `ingress_from` (`list[obj]`): Defines the conditions on the source of a request causing this &#39;IngressPolicy&#39;
to apply. When `null`, the `ingress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.ingress_policies.ingress_from.new](#fn-ingress_policiesingress_fromnew) constructor.
  - `ingress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and request destination that cause
this &#39;IngressPolicy&#39; to apply. When `null`, the `ingress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.ingress_policies.ingress_to.new](#fn-ingress_policiesingress_tonew) constructor.

**Returns**:
  - An attribute object that represents the `ingress_policies` sub block.


## obj status.ingress_policies.ingress_from



### fn status.ingress_policies.ingress_from.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.ingress_policies.ingress_from.new` constructs a new object with attributes and blocks configured for the `ingress_from`
Terraform sub block.



**Args**:
  - `identities` (`list`): A list of identities that are allowed access through this ingress policy.
Should be in the format of email address. The email address should represent 
individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.
  - `identity_type` (`string`): Specifies the type of identities that are allowed access from outside the 
perimeter. If left unspecified, then members of &#39;identities&#39; field will be 
allowed access. Possible values: [&#34;IDENTITY_TYPE_UNSPECIFIED&#34;, &#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.
  - `sources` (`list[obj]`): Sources that this &#39;IngressPolicy&#39; authorizes access from. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.ingress_policies.ingress_from.sources.new](#fn-ingress_fromsourcesnew) constructor.

**Returns**:
  - An attribute object that represents the `ingress_from` sub block.


## obj status.ingress_policies.ingress_from.sources



### fn status.ingress_policies.ingress_from.sources.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.ingress_policies.ingress_from.sources.new` constructs a new object with attributes and blocks configured for the `sources`
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


## obj status.ingress_policies.ingress_to



### fn status.ingress_policies.ingress_to.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.ingress_policies.ingress_to.new` constructs a new object with attributes and blocks configured for the `ingress_to`
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
are allowed to perform in this &#39;ServicePerimeter&#39;. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.ingress_policies.ingress_to.operations.new](#fn-ingress_tooperationsnew) constructor.

**Returns**:
  - An attribute object that represents the `ingress_to` sub block.


## obj status.ingress_policies.ingress_to.operations



### fn status.ingress_policies.ingress_to.operations.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.ingress_policies.ingress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or 
&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with &#39;serviceName&#39; 
field set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.
  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong to 
the service specified by serviceName field. A single &#39;MethodSelector&#39; entry 
with &#39;*&#39; specified for the method field will allow all methods AND 
permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter.status.ingress_policies.ingress_to.operations.method_selectors.new](#fn-operationsmethod_selectorsnew) constructor.

**Returns**:
  - An attribute object that represents the `operations` sub block.


## obj status.ingress_policies.ingress_to.operations.method_selectors



### fn status.ingress_policies.ingress_to.operations.method_selectors.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.ingress_policies.ingress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`
Terraform sub block.



**Args**:
  - `method` (`string`): Value for method should be a valid method name for the corresponding 
serviceName in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for &#39;method&#39;, then 
ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.
  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the 
corresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `method_selectors` sub block.


## obj status.vpc_accessible_services



### fn status.vpc_accessible_services.new

```ts
new()
```


`google.access_context_manager_service_perimeter.status.vpc_accessible_services.new` constructs a new object with attributes and blocks configured for the `vpc_accessible_services`
Terraform sub block.



**Args**:
  - `allowed_services` (`list`): The list of APIs usable within the Service Perimeter.
Must be empty unless &#39;enableRestriction&#39; is True. When `null`, the `allowed_services` field will be omitted from the resulting object.
  - `enable_restriction` (`bool`): Whether to restrict API calls within the Service Perimeter to the
list of APIs specified in &#39;allowedServices&#39;. When `null`, the `enable_restriction` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vpc_accessible_services` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.access_context_manager_service_perimeter.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
