---
permalink: /cloudbuildv2_connection/
---

# cloudbuildv2_connection

`cloudbuildv2_connection` represents the `google_cloudbuildv2_connection` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withGithubConfig()`](#fn-withgithubconfig)
* [`fn withGithubConfigMixin()`](#fn-withgithubconfigmixin)
* [`fn withGithubEnterpriseConfig()`](#fn-withgithubenterpriseconfig)
* [`fn withGithubEnterpriseConfigMixin()`](#fn-withgithubenterpriseconfigmixin)
* [`fn withGitlabConfig()`](#fn-withgitlabconfig)
* [`fn withGitlabConfigMixin()`](#fn-withgitlabconfigmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj github_config`](#obj-github_config)
  * [`fn new()`](#fn-github_confignew)
  * [`obj github_config.authorizer_credential`](#obj-github_configauthorizer_credential)
    * [`fn new()`](#fn-github_configauthorizer_credentialnew)
* [`obj github_enterprise_config`](#obj-github_enterprise_config)
  * [`fn new()`](#fn-github_enterprise_confignew)
  * [`obj github_enterprise_config.service_directory_config`](#obj-github_enterprise_configservice_directory_config)
    * [`fn new()`](#fn-github_enterprise_configservice_directory_confignew)
* [`obj gitlab_config`](#obj-gitlab_config)
  * [`fn new()`](#fn-gitlab_confignew)
  * [`obj gitlab_config.authorizer_credential`](#obj-gitlab_configauthorizer_credential)
    * [`fn new()`](#fn-gitlab_configauthorizer_credentialnew)
  * [`obj gitlab_config.read_authorizer_credential`](#obj-gitlab_configread_authorizer_credential)
    * [`fn new()`](#fn-gitlab_configread_authorizer_credentialnew)
  * [`obj gitlab_config.service_directory_config`](#obj-gitlab_configservice_directory_config)
    * [`fn new()`](#fn-gitlab_configservice_directory_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloudbuildv2_connection.new` injects a new `google_cloudbuildv2_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloudbuildv2_connection.new('some_id')

You can get the reference to the `id` field of the created `google.cloudbuildv2_connection` using the reference:

    $._ref.google_cloudbuildv2_connection.some_id.get('id')

This is the same as directly entering `"${ google_cloudbuildv2_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Allows clients to store small amounts of arbitrary data.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `disabled` (`bool`): If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `github_config` (`list[obj]`): Configuration for connections to github.com. When `null`, the `github_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.github_config.new](#fn-github_confignew) constructor.
  - `github_enterprise_config` (`list[obj]`): Configuration for connections to an instance of GitHub Enterprise. When `null`, the `github_enterprise_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.github_enterprise_config.new](#fn-github_enterprise_confignew) constructor.
  - `gitlab_config` (`list[obj]`): Configuration for connections to gitlab.com or an instance of GitLab Enterprise. When `null`, the `gitlab_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.gitlab_config.new](#fn-gitlab_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloudbuildv2_connection.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuildv2_connection`
Terraform resource.

Unlike [google.cloudbuildv2_connection.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Allows clients to store small amounts of arbitrary data.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `disabled` (`bool`): If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `github_config` (`list[obj]`): Configuration for connections to github.com. When `null`, the `github_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.github_config.new](#fn-github_confignew) constructor.
  - `github_enterprise_config` (`list[obj]`): Configuration for connections to an instance of GitHub Enterprise. When `null`, the `github_enterprise_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.github_enterprise_config.new](#fn-github_enterprise_confignew) constructor.
  - `gitlab_config` (`list[obj]`): Configuration for connections to gitlab.com or an instance of GitLab Enterprise. When `null`, the `gitlab_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.gitlab_config.new](#fn-gitlab_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudbuildv2_connection` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withGithubConfig

```ts
withGithubConfig()
```

`google.list[obj].withGithubConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the github_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGithubConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `github_config` field.


### fn withGithubConfigMixin

```ts
withGithubConfigMixin()
```

`google.list[obj].withGithubConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the github_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGithubConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `github_config` field.


### fn withGithubEnterpriseConfig

```ts
withGithubEnterpriseConfig()
```

`google.list[obj].withGithubEnterpriseConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the github_enterprise_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGithubEnterpriseConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `github_enterprise_config` field.


### fn withGithubEnterpriseConfigMixin

```ts
withGithubEnterpriseConfigMixin()
```

`google.list[obj].withGithubEnterpriseConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the github_enterprise_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGithubEnterpriseConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `github_enterprise_config` field.


### fn withGitlabConfig

```ts
withGitlabConfig()
```

`google.list[obj].withGitlabConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gitlab_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGitlabConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gitlab_config` field.


### fn withGitlabConfigMixin

```ts
withGitlabConfigMixin()
```

`google.list[obj].withGitlabConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gitlab_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGitlabConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gitlab_config` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


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


## obj github_config



### fn github_config.new

```ts
new()
```


`google.cloudbuildv2_connection.github_config.new` constructs a new object with attributes and blocks configured for the `github_config`
Terraform sub block.



**Args**:
  - `app_installation_id` (`number`): GitHub App installation id. When `null`, the `app_installation_id` field will be omitted from the resulting object.
  - `authorizer_credential` (`list[obj]`): OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App. When `null`, the `authorizer_credential` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.github_config.authorizer_credential.new](#fn-github_configauthorizer_credentialnew) constructor.

**Returns**:
  - An attribute object that represents the `github_config` sub block.


## obj github_config.authorizer_credential



### fn github_config.authorizer_credential.new

```ts
new()
```


`google.cloudbuildv2_connection.github_config.authorizer_credential.new` constructs a new object with attributes and blocks configured for the `authorizer_credential`
Terraform sub block.



**Args**:
  - `oauth_token_secret_version` (`string`): A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`. When `null`, the `oauth_token_secret_version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `authorizer_credential` sub block.


## obj github_enterprise_config



### fn github_enterprise_config.new

```ts
new()
```


`google.cloudbuildv2_connection.github_enterprise_config.new` constructs a new object with attributes and blocks configured for the `github_enterprise_config`
Terraform sub block.



**Args**:
  - `app_id` (`number`): Id of the GitHub App created from the manifest. When `null`, the `app_id` field will be omitted from the resulting object.
  - `app_installation_id` (`number`): ID of the installation of the GitHub App. When `null`, the `app_installation_id` field will be omitted from the resulting object.
  - `app_slug` (`string`): The URL-friendly name of the GitHub App. When `null`, the `app_slug` field will be omitted from the resulting object.
  - `host_uri` (`string`): Required. The URI of the GitHub Enterprise host this connection is for.
  - `private_key_secret_version` (`string`): SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`. When `null`, the `private_key_secret_version` field will be omitted from the resulting object.
  - `ssl_ca` (`string`): SSL certificate to use for requests to GitHub Enterprise. When `null`, the `ssl_ca` field will be omitted from the resulting object.
  - `webhook_secret_secret_version` (`string`): SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`. When `null`, the `webhook_secret_secret_version` field will be omitted from the resulting object.
  - `service_directory_config` (`list[obj]`): Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet. When `null`, the `service_directory_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.github_enterprise_config.service_directory_config.new](#fn-github_enterprise_configservice_directory_confignew) constructor.

**Returns**:
  - An attribute object that represents the `github_enterprise_config` sub block.


## obj github_enterprise_config.service_directory_config



### fn github_enterprise_config.service_directory_config.new

```ts
new()
```


`google.cloudbuildv2_connection.github_enterprise_config.service_directory_config.new` constructs a new object with attributes and blocks configured for the `service_directory_config`
Terraform sub block.



**Args**:
  - `service` (`string`): Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.

**Returns**:
  - An attribute object that represents the `service_directory_config` sub block.


## obj gitlab_config



### fn gitlab_config.new

```ts
new()
```


`google.cloudbuildv2_connection.gitlab_config.new` constructs a new object with attributes and blocks configured for the `gitlab_config`
Terraform sub block.



**Args**:
  - `host_uri` (`string`): The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com. When `null`, the `host_uri` field will be omitted from the resulting object.
  - `ssl_ca` (`string`): SSL certificate to use for requests to GitLab Enterprise. When `null`, the `ssl_ca` field will be omitted from the resulting object.
  - `webhook_secret_secret_version` (`string`): Required. Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  - `authorizer_credential` (`list[obj]`): Required. A GitLab personal access token with the `api` scope access. When `null`, the `authorizer_credential` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.gitlab_config.authorizer_credential.new](#fn-gitlab_configauthorizer_credentialnew) constructor.
  - `read_authorizer_credential` (`list[obj]`): Required. A GitLab personal access token with the minimum `read_api` scope access. When `null`, the `read_authorizer_credential` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.gitlab_config.read_authorizer_credential.new](#fn-gitlab_configread_authorizer_credentialnew) constructor.
  - `service_directory_config` (`list[obj]`): Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet. When `null`, the `service_directory_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_connection.gitlab_config.service_directory_config.new](#fn-gitlab_configservice_directory_confignew) constructor.

**Returns**:
  - An attribute object that represents the `gitlab_config` sub block.


## obj gitlab_config.authorizer_credential



### fn gitlab_config.authorizer_credential.new

```ts
new()
```


`google.cloudbuildv2_connection.gitlab_config.authorizer_credential.new` constructs a new object with attributes and blocks configured for the `authorizer_credential`
Terraform sub block.



**Args**:
  - `user_token_secret_version` (`string`): Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.

**Returns**:
  - An attribute object that represents the `authorizer_credential` sub block.


## obj gitlab_config.read_authorizer_credential



### fn gitlab_config.read_authorizer_credential.new

```ts
new()
```


`google.cloudbuildv2_connection.gitlab_config.read_authorizer_credential.new` constructs a new object with attributes and blocks configured for the `read_authorizer_credential`
Terraform sub block.



**Args**:
  - `user_token_secret_version` (`string`): Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.

**Returns**:
  - An attribute object that represents the `read_authorizer_credential` sub block.


## obj gitlab_config.service_directory_config



### fn gitlab_config.service_directory_config.new

```ts
new()
```


`google.cloudbuildv2_connection.gitlab_config.service_directory_config.new` constructs a new object with attributes and blocks configured for the `service_directory_config`
Terraform sub block.



**Args**:
  - `service` (`string`): Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.

**Returns**:
  - An attribute object that represents the `service_directory_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloudbuildv2_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
