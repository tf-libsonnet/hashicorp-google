---
permalink: /cloudbuild_bitbucket_server_config/
---

# cloudbuild_bitbucket_server_config

`cloudbuild_bitbucket_server_config` represents the `google_cloudbuild_bitbucket_server_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApiKey()`](#fn-withapikey)
* [`fn withConfigId()`](#fn-withconfigid)
* [`fn withConnectedRepositories()`](#fn-withconnectedrepositories)
* [`fn withConnectedRepositoriesMixin()`](#fn-withconnectedrepositoriesmixin)
* [`fn withHostUri()`](#fn-withhosturi)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPeeredNetwork()`](#fn-withpeerednetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withSecrets()`](#fn-withsecrets)
* [`fn withSecretsMixin()`](#fn-withsecretsmixin)
* [`fn withSslCa()`](#fn-withsslca)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUsername()`](#fn-withusername)
* [`obj connected_repositories`](#obj-connected_repositories)
  * [`fn new()`](#fn-connected_repositoriesnew)
* [`obj secrets`](#obj-secrets)
  * [`fn new()`](#fn-secretsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloudbuild_bitbucket_server_config.new` injects a new `google_cloudbuild_bitbucket_server_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloudbuild_bitbucket_server_config.new('some_id')

You can get the reference to the `id` field of the created `google.cloudbuild_bitbucket_server_config` using the reference:

    $._ref.google_cloudbuild_bitbucket_server_config.some_id.get('id')

This is the same as directly entering `"${ google_cloudbuild_bitbucket_server_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `api_key` (`string`): Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
Changing this field will result in deleting/ recreating the resource.
  - `config_id` (`string`): The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig&#39;s resource name.
  - `host_uri` (`string`): Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
If you need to change it, please create another BitbucketServerConfig.
  - `location` (`string`): The location of this bitbucket server config.
  - `peered_network` (`string`): The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. 
This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, 
no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format 
projects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project. When `null`, the `peered_network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `ssl_ca` (`string`): SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt. When `null`, the `ssl_ca` field will be omitted from the resulting object.
  - `username` (`string`): Username of the account Cloud Build will use on Bitbucket Server.
  - `connected_repositories` (`list[obj]`): Connected Bitbucket Server repositories for this config. When `null`, the `connected_repositories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.connected_repositories.new](#fn-connected_repositoriesnew) constructor.
  - `secrets` (`list[obj]`): Secret Manager secrets needed by the config. When `null`, the `secrets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.secrets.new](#fn-secretsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloudbuild_bitbucket_server_config.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuild_bitbucket_server_config`
Terraform resource.

Unlike [google.cloudbuild_bitbucket_server_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `api_key` (`string`): Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
Changing this field will result in deleting/ recreating the resource.
  - `config_id` (`string`): The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig&#39;s resource name.
  - `host_uri` (`string`): Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
If you need to change it, please create another BitbucketServerConfig.
  - `location` (`string`): The location of this bitbucket server config.
  - `peered_network` (`string`): The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. 
This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, 
no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format 
projects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project. When `null`, the `peered_network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `ssl_ca` (`string`): SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt. When `null`, the `ssl_ca` field will be omitted from the resulting object.
  - `username` (`string`): Username of the account Cloud Build will use on Bitbucket Server.
  - `connected_repositories` (`list[obj]`): Connected Bitbucket Server repositories for this config. When `null`, the `connected_repositories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.connected_repositories.new](#fn-connected_repositoriesnew) constructor.
  - `secrets` (`list[obj]`): Secret Manager secrets needed by the config. When `null`, the `secrets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.secrets.new](#fn-secretsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudbuild_bitbucket_server_config` resource into the root Terraform configuration.


### fn withApiKey

```ts
withApiKey()
```

`google.string.withApiKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the api_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `api_key` field.


### fn withConfigId

```ts
withConfigId()
```

`google.string.withConfigId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the config_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `config_id` field.


### fn withConnectedRepositories

```ts
withConnectedRepositories()
```

`google.list[obj].withConnectedRepositories` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the connected_repositories field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConnectedRepositoriesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `connected_repositories` field.


### fn withConnectedRepositoriesMixin

```ts
withConnectedRepositoriesMixin()
```

`google.list[obj].withConnectedRepositoriesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the connected_repositories field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConnectedRepositories](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `connected_repositories` field.


### fn withHostUri

```ts
withHostUri()
```

`google.string.withHostUri` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the host_uri field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `host_uri` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPeeredNetwork

```ts
withPeeredNetwork()
```

`google.string.withPeeredNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peered_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peered_network` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSecrets

```ts
withSecrets()
```

`google.list[obj].withSecrets` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secrets field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSecretsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secrets` field.


### fn withSecretsMixin

```ts
withSecretsMixin()
```

`google.list[obj].withSecretsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the secrets field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSecrets](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `secrets` field.


### fn withSslCa

```ts
withSslCa()
```

`google.string.withSslCa` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ssl_ca field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ssl_ca` field.


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


### fn withUsername

```ts
withUsername()
```

`google.string.withUsername` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the username field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `username` field.


## obj connected_repositories



### fn connected_repositories.new

```ts
new()
```


`google.cloudbuild_bitbucket_server_config.connected_repositories.new` constructs a new object with attributes and blocks configured for the `connected_repositories`
Terraform sub block.



**Args**:
  - `project_key` (`string`): Identifier for the project storing the repository.
  - `repo_slug` (`string`): Identifier for the repository.

**Returns**:
  - An attribute object that represents the `connected_repositories` sub block.


## obj secrets



### fn secrets.new

```ts
new()
```


`google.cloudbuild_bitbucket_server_config.secrets.new` constructs a new object with attributes and blocks configured for the `secrets`
Terraform sub block.



**Args**:
  - `admin_access_token_version_name` (`string`): The resource name for the admin access token&#39;s secret version.
  - `read_access_token_version_name` (`string`): The resource name for the read access token&#39;s secret version.
  - `webhook_secret_version_name` (`string`): Immutable. The resource name for the webhook secret&#39;s secret version. Once this field has been set, it cannot be changed.
Changing this field will result in deleting/ recreating the resource.

**Returns**:
  - An attribute object that represents the `secrets` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloudbuild_bitbucket_server_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
