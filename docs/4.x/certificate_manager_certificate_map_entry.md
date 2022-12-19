---
permalink: /certificate_manager_certificate_map_entry/
---

# certificate_manager_certificate_map_entry

`certificate_manager_certificate_map_entry` represents the `google_certificate_manager_certificate_map_entry` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertificates()`](#fn-withcertificates)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withHostname()`](#fn-withhostname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMap()`](#fn-withmap)
* [`fn withMatcher()`](#fn-withmatcher)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.certificate_manager_certificate_map_entry.new` injects a new `google_certificate_manager_certificate_map_entry` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.certificate_manager_certificate_map_entry.new('some_id')

You can get the reference to the `id` field of the created `google.certificate_manager_certificate_map_entry` using the reference:

    $._ref.google_certificate_manager_certificate_map_entry.some_id.get('id')

This is the same as directly entering `"${ google_certificate_manager_certificate_map_entry.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `certificates` (`list`): A set of Certificates defines for the given hostname.
There can be defined up to fifteen certificates in each Certificate Map Entry.
Each certificate must match pattern projects/*/locations/*/certificates/*.
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `hostname` (`string`): A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)
for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for
selecting a proper certificate. When `null`, the `hostname` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of labels associated with a Certificate Map Entry.
An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `map` (`string`): A map entry that is inputted into the cetrificate map
  - `matcher` (`string`): A predefined matcher for particular cases, other than SNI selection When `null`, the `matcher` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the Certificate Map Entry. Certificate Map Entry 
names must be unique globally and match pattern 
&#39;projects/*/locations/*/certificateMaps/*/certificateMapEntries/*&#39;
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_map_entry.timeouts.new](#fn-certificate_manager_certificate_map_entrytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.certificate_manager_certificate_map_entry.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_certificate_map_entry`
Terraform resource.

Unlike [google.certificate_manager_certificate_map_entry.new](#fn-certificate_manager_certificate_map_entrynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `certificates` (`list`): A set of Certificates defines for the given hostname.
There can be defined up to fifteen certificates in each Certificate Map Entry.
Each certificate must match pattern projects/*/locations/*/certificates/*.
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `hostname` (`string`): A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)
for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for
selecting a proper certificate. When `null`, the `hostname` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of labels associated with a Certificate Map Entry.
An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `map` (`string`): A map entry that is inputted into the cetrificate map
  - `matcher` (`string`): A predefined matcher for particular cases, other than SNI selection When `null`, the `matcher` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the Certificate Map Entry. Certificate Map Entry 
names must be unique globally and match pattern 
&#39;projects/*/locations/*/certificateMaps/*/certificateMapEntries/*&#39;
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_map_entry.timeouts.new](#fn-certificate_manager_certificate_map_entrytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_certificate_map_entry` resource into the root Terraform configuration.


### fn withCertificates

```ts
withCertificates()
```

`google.list.withCertificates` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the certificates field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `certificates` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withHostname

```ts
withHostname()
```

`google.string.withHostname` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hostname field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hostname` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMap

```ts
withMap()
```

`google.string.withMap` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the map field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `map` field.


### fn withMatcher

```ts
withMatcher()
```

`google.string.withMatcher` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the matcher field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `matcher` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.certificate_manager_certificate_map_entry.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
