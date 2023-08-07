---
permalink: /document_ai_warehouse_location/
---

# document_ai_warehouse_location

`document_ai_warehouse_location` represents the `google_document_ai_warehouse_location` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAccessControlMode()`](#fn-withaccesscontrolmode)
* [`fn withDatabaseType()`](#fn-withdatabasetype)
* [`fn withDocumentCreatorDefaultRole()`](#fn-withdocumentcreatordefaultrole)
* [`fn withKmsKey()`](#fn-withkmskey)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProjectNumber()`](#fn-withprojectnumber)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.document_ai_warehouse_location.new` injects a new `google_document_ai_warehouse_location` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.document_ai_warehouse_location.new('some_id')

You can get the reference to the `id` field of the created `google.document_ai_warehouse_location` using the reference:

    $._ref.google_document_ai_warehouse_location.some_id.get('id')

This is the same as directly entering `"${ google_document_ai_warehouse_location.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `access_control_mode` (`string`): The access control mode for accessing the customer data. Possible values: [&#34;ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI&#34;, &#34;ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID&#34;, &#34;ACL_MODE_UNIVERSAL_ACCESS&#34;]
  - `database_type` (`string`): The type of database used to store customer data. Possible values: [&#34;DB_INFRA_SPANNER&#34;, &#34;DB_CLOUD_SQL_POSTGRES&#34;]
  - `document_creator_default_role` (`string`): The default role for the person who create a document. Possible values: [&#34;DOCUMENT_ADMIN&#34;, &#34;DOCUMENT_EDITOR&#34;, &#34;DOCUMENT_VIEWER&#34;] When `null`, the `document_creator_default_role` field will be omitted from the resulting object.
  - `kms_key` (`string`): The KMS key used for CMEK encryption. It is required that
the kms key is in the same region as the endpoint. The
same key will be used for all provisioned resources, if
encryption is available. If the kmsKey is left empty, no
encryption will be enforced. When `null`, the `kms_key` field will be omitted from the resulting object.
  - `location` (`string`): The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  - `project_number` (`string`): The unique identifier of the project.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_location.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.document_ai_warehouse_location.newAttrs` constructs a new object with attributes and blocks configured for the `document_ai_warehouse_location`
Terraform resource.

Unlike [google.document_ai_warehouse_location.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `access_control_mode` (`string`): The access control mode for accessing the customer data. Possible values: [&#34;ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI&#34;, &#34;ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID&#34;, &#34;ACL_MODE_UNIVERSAL_ACCESS&#34;]
  - `database_type` (`string`): The type of database used to store customer data. Possible values: [&#34;DB_INFRA_SPANNER&#34;, &#34;DB_CLOUD_SQL_POSTGRES&#34;]
  - `document_creator_default_role` (`string`): The default role for the person who create a document. Possible values: [&#34;DOCUMENT_ADMIN&#34;, &#34;DOCUMENT_EDITOR&#34;, &#34;DOCUMENT_VIEWER&#34;] When `null`, the `document_creator_default_role` field will be omitted from the resulting object.
  - `kms_key` (`string`): The KMS key used for CMEK encryption. It is required that
the kms key is in the same region as the endpoint. The
same key will be used for all provisioned resources, if
encryption is available. If the kmsKey is left empty, no
encryption will be enforced. When `null`, the `kms_key` field will be omitted from the resulting object.
  - `location` (`string`): The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  - `project_number` (`string`): The unique identifier of the project.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_location.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `document_ai_warehouse_location` resource into the root Terraform configuration.


### fn withAccessControlMode

```ts
withAccessControlMode()
```

`google.string.withAccessControlMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the access_control_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `access_control_mode` field.


### fn withDatabaseType

```ts
withDatabaseType()
```

`google.string.withDatabaseType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database_type` field.


### fn withDocumentCreatorDefaultRole

```ts
withDocumentCreatorDefaultRole()
```

`google.string.withDocumentCreatorDefaultRole` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the document_creator_default_role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `document_creator_default_role` field.


### fn withKmsKey

```ts
withKmsKey()
```

`google.string.withKmsKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withProjectNumber

```ts
withProjectNumber()
```

`google.string.withProjectNumber` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_number field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_number` field.


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


`google.document_ai_warehouse_location.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
