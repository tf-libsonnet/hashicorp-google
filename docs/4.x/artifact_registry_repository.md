---
permalink: /artifact_registry_repository/
---

# artifact_registry_repository

`artifact_registry_repository` represents the `google_artifact_registry_repository` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFormat()`](#fn-withformat)
* [`fn withKmsKeyName()`](#fn-withkmskeyname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMavenConfig()`](#fn-withmavenconfig)
* [`fn withMavenConfigMixin()`](#fn-withmavenconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRepositoryId()`](#fn-withrepositoryid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj maven_config`](#obj-maven_config)
  * [`fn new()`](#fn-maven_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.artifact_registry_repository.new` injects a new `google_artifact_registry_repository` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.artifact_registry_repository.new('some_id')

You can get the reference to the `id` field of the created `google.artifact_registry_repository` using the reference:

    $._ref.google_artifact_registry_repository.some_id.get('id')

This is the same as directly entering `"${ google_artifact_registry_repository.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The user-provided description of the repository. When `null`, the `description` field will be omitted from the resulting object.
  - `format` (`string`): The format of packages that are stored in the repository. Supported formats
can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
You can only create alpha formats if you are a member of the
[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  - `kms_key_name` (`string`): The Cloud KMS resource name of the customer managed encryption key that’s
used to encrypt the contents of the Repository. Has the form:
&#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key&#39;.
This value may not be changed after the Repository has been created. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels with user-defined metadata.
This field may contain up to 64 entries. Label keys and values may be no
longer than 63 characters. Label keys must begin with a lowercase letter
and may only contain lowercase letters, numeric characters, underscores,
and dashes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this repository is located in. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `repository_id` (`string`): The last part of the repository name, for example:
&#34;repo1&#34;
  - `maven_config` (`list[obj]`): MavenRepositoryConfig is maven related repository details.
Provides additional configuration details for repositories of the maven
format type. When `null`, the `maven_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.maven_config.new](#fn-artifact_registry_repositorymaven_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.timeouts.new](#fn-artifact_registry_repositorytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.artifact_registry_repository.newAttrs` constructs a new object with attributes and blocks configured for the `artifact_registry_repository`
Terraform resource.

Unlike [google.artifact_registry_repository.new](#fn-artifact_registry_repositorynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The user-provided description of the repository. When `null`, the `description` field will be omitted from the resulting object.
  - `format` (`string`): The format of packages that are stored in the repository. Supported formats
can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
You can only create alpha formats if you are a member of the
[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  - `kms_key_name` (`string`): The Cloud KMS resource name of the customer managed encryption key that’s
used to encrypt the contents of the Repository. Has the form:
&#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key&#39;.
This value may not be changed after the Repository has been created. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels with user-defined metadata.
This field may contain up to 64 entries. Label keys and values may be no
longer than 63 characters. Label keys must begin with a lowercase letter
and may only contain lowercase letters, numeric characters, underscores,
and dashes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this repository is located in. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `repository_id` (`string`): The last part of the repository name, for example:
&#34;repo1&#34;
  - `maven_config` (`list[obj]`): MavenRepositoryConfig is maven related repository details.
Provides additional configuration details for repositories of the maven
format type. When `null`, the `maven_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.maven_config.new](#fn-artifact_registry_repositorymaven_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.timeouts.new](#fn-artifact_registry_repositorytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `artifact_registry_repository` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFormat

```ts
withFormat()
```

`google.string.withFormat` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the format field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `format` field.


### fn withKmsKeyName

```ts
withKmsKeyName()
```

`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMavenConfig

```ts
withMavenConfig()
```

`google.list[obj].withMavenConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maven_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMavenConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maven_config` field.


### fn withMavenConfigMixin

```ts
withMavenConfigMixin()
```

`google.list[obj].withMavenConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maven_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMavenConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maven_config` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRepositoryId

```ts
withRepositoryId()
```

`google.string.withRepositoryId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the repository_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `repository_id` field.


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


## obj maven_config



### fn maven_config.new

```ts
new()
```


`google.artifact_registry_repository.maven_config.new` constructs a new object with attributes and blocks configured for the `maven_config`
Terraform sub block.



**Args**:
  - `allow_snapshot_overwrites` (`bool`): The repository with this flag will allow publishing the same
snapshot versions. When `null`, the `allow_snapshot_overwrites` field will be omitted from the resulting object.
  - `version_policy` (`string`): Version policy defines the versions that the registry will accept. Default value: &#34;VERSION_POLICY_UNSPECIFIED&#34; Possible values: [&#34;VERSION_POLICY_UNSPECIFIED&#34;, &#34;RELEASE&#34;, &#34;SNAPSHOT&#34;] When `null`, the `version_policy` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `maven_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.artifact_registry_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
