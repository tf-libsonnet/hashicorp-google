---
permalink: /discovery_engine_data_store/
---

# discovery_engine_data_store

`discovery_engine_data_store` represents the `google_discovery_engine_data_store` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withContentConfig()`](#fn-withcontentconfig)
* [`fn withCreateAdvancedSiteSearch()`](#fn-withcreateadvancedsitesearch)
* [`fn withDataStoreId()`](#fn-withdatastoreid)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withIndustryVertical()`](#fn-withindustryvertical)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withSolutionTypes()`](#fn-withsolutiontypes)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.discovery_engine_data_store.new` injects a new `google_discovery_engine_data_store` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.discovery_engine_data_store.new('some_id')

You can get the reference to the `id` field of the created `google.discovery_engine_data_store` using the reference:

    $._ref.google_discovery_engine_data_store.some_id.get('id')

This is the same as directly entering `"${ google_discovery_engine_data_store.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `content_config` (`string`): The content config of the data store. Possible values: [&#34;NO_CONTENT&#34;, &#34;CONTENT_REQUIRED&#34;, &#34;PUBLIC_WEBSITE&#34;]
  - `create_advanced_site_search` (`bool`): If true, an advanced data store for site search will be created. If the
data store is not configured as site search (GENERIC vertical and
PUBLIC_WEBSITE contentConfig), this flag will be ignored. When `null`, the `create_advanced_site_search` field will be omitted from the resulting object.
  - `data_store_id` (`string`): The unique id of the data store.
  - `display_name` (`string`): The display name of the data store. This field must be a UTF-8 encoded
string with a length limit of 128 characters.
  - `industry_vertical` (`string`): The industry vertical that the data store registers. Possible values: [&#34;GENERIC&#34;, &#34;MEDIA&#34;]
  - `location` (`string`): The geographic location where the data store should reside. The value can
only be one of &#34;global&#34;, &#34;us&#34; and &#34;eu&#34;.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `solution_types` (`list`): The solutions that the data store enrolls. Possible values: [&#34;SOLUTION_TYPE_RECOMMENDATION&#34;, &#34;SOLUTION_TYPE_SEARCH&#34;, &#34;SOLUTION_TYPE_CHAT&#34;] When `null`, the `solution_types` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_data_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.discovery_engine_data_store.newAttrs` constructs a new object with attributes and blocks configured for the `discovery_engine_data_store`
Terraform resource.

Unlike [google.discovery_engine_data_store.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `content_config` (`string`): The content config of the data store. Possible values: [&#34;NO_CONTENT&#34;, &#34;CONTENT_REQUIRED&#34;, &#34;PUBLIC_WEBSITE&#34;]
  - `create_advanced_site_search` (`bool`): If true, an advanced data store for site search will be created. If the
data store is not configured as site search (GENERIC vertical and
PUBLIC_WEBSITE contentConfig), this flag will be ignored. When `null`, the `create_advanced_site_search` field will be omitted from the resulting object.
  - `data_store_id` (`string`): The unique id of the data store.
  - `display_name` (`string`): The display name of the data store. This field must be a UTF-8 encoded
string with a length limit of 128 characters.
  - `industry_vertical` (`string`): The industry vertical that the data store registers. Possible values: [&#34;GENERIC&#34;, &#34;MEDIA&#34;]
  - `location` (`string`): The geographic location where the data store should reside. The value can
only be one of &#34;global&#34;, &#34;us&#34; and &#34;eu&#34;.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `solution_types` (`list`): The solutions that the data store enrolls. Possible values: [&#34;SOLUTION_TYPE_RECOMMENDATION&#34;, &#34;SOLUTION_TYPE_SEARCH&#34;, &#34;SOLUTION_TYPE_CHAT&#34;] When `null`, the `solution_types` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_data_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `discovery_engine_data_store` resource into the root Terraform configuration.


### fn withContentConfig

```ts
withContentConfig()
```

`google.string.withContentConfig` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the content_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content_config` field.


### fn withCreateAdvancedSiteSearch

```ts
withCreateAdvancedSiteSearch()
```

`google.bool.withCreateAdvancedSiteSearch` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the create_advanced_site_search field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `create_advanced_site_search` field.


### fn withDataStoreId

```ts
withDataStoreId()
```

`google.string.withDataStoreId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the data_store_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `data_store_id` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withIndustryVertical

```ts
withIndustryVertical()
```

`google.string.withIndustryVertical` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the industry_vertical field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `industry_vertical` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSolutionTypes

```ts
withSolutionTypes()
```

`google.list.withSolutionTypes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the solution_types field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `solution_types` field.


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


`google.discovery_engine_data_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
