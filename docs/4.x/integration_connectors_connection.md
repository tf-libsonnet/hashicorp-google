---
permalink: /integration_connectors_connection/
---

# integration_connectors_connection

`integration_connectors_connection` represents the `google_integration_connectors_connection` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthConfig()`](#fn-withauthconfig)
* [`fn withAuthConfigMixin()`](#fn-withauthconfigmixin)
* [`fn withConfigVariable()`](#fn-withconfigvariable)
* [`fn withConfigVariableMixin()`](#fn-withconfigvariablemixin)
* [`fn withConnectorVersion()`](#fn-withconnectorversion)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDestinationConfig()`](#fn-withdestinationconfig)
* [`fn withDestinationConfigMixin()`](#fn-withdestinationconfigmixin)
* [`fn withEventingConfig()`](#fn-witheventingconfig)
* [`fn withEventingConfigMixin()`](#fn-witheventingconfigmixin)
* [`fn withEventingEnablementType()`](#fn-witheventingenablementtype)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withLockConfig()`](#fn-withlockconfig)
* [`fn withLockConfigMixin()`](#fn-withlockconfigmixin)
* [`fn withLogConfig()`](#fn-withlogconfig)
* [`fn withLogConfigMixin()`](#fn-withlogconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNodeConfig()`](#fn-withnodeconfig)
* [`fn withNodeConfigMixin()`](#fn-withnodeconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withSslConfig()`](#fn-withsslconfig)
* [`fn withSslConfigMixin()`](#fn-withsslconfigmixin)
* [`fn withSuspended()`](#fn-withsuspended)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj auth_config`](#obj-auth_config)
  * [`fn new()`](#fn-auth_confignew)
  * [`obj auth_config.additional_variable`](#obj-auth_configadditional_variable)
    * [`fn new()`](#fn-auth_configadditional_variablenew)
    * [`obj auth_config.additional_variable.encryption_key_value`](#obj-auth_configadditional_variableencryption_key_value)
      * [`fn new()`](#fn-auth_configadditional_variableencryption_key_valuenew)
    * [`obj auth_config.additional_variable.secret_value`](#obj-auth_configadditional_variablesecret_value)
      * [`fn new()`](#fn-auth_configadditional_variablesecret_valuenew)
  * [`obj auth_config.oauth2_auth_code_flow`](#obj-auth_configoauth2_auth_code_flow)
    * [`fn new()`](#fn-auth_configoauth2_auth_code_flownew)
    * [`obj auth_config.oauth2_auth_code_flow.client_secret`](#obj-auth_configoauth2_auth_code_flowclient_secret)
      * [`fn new()`](#fn-auth_configoauth2_auth_code_flowclient_secretnew)
  * [`obj auth_config.oauth2_client_credentials`](#obj-auth_configoauth2_client_credentials)
    * [`fn new()`](#fn-auth_configoauth2_client_credentialsnew)
    * [`obj auth_config.oauth2_client_credentials.client_secret`](#obj-auth_configoauth2_client_credentialsclient_secret)
      * [`fn new()`](#fn-auth_configoauth2_client_credentialsclient_secretnew)
  * [`obj auth_config.oauth2_jwt_bearer`](#obj-auth_configoauth2_jwt_bearer)
    * [`fn new()`](#fn-auth_configoauth2_jwt_bearernew)
    * [`obj auth_config.oauth2_jwt_bearer.client_key`](#obj-auth_configoauth2_jwt_bearerclient_key)
      * [`fn new()`](#fn-auth_configoauth2_jwt_bearerclient_keynew)
    * [`obj auth_config.oauth2_jwt_bearer.jwt_claims`](#obj-auth_configoauth2_jwt_bearerjwt_claims)
      * [`fn new()`](#fn-auth_configoauth2_jwt_bearerjwt_claimsnew)
  * [`obj auth_config.ssh_public_key`](#obj-auth_configssh_public_key)
    * [`fn new()`](#fn-auth_configssh_public_keynew)
    * [`obj auth_config.ssh_public_key.ssh_client_cert`](#obj-auth_configssh_public_keyssh_client_cert)
      * [`fn new()`](#fn-auth_configssh_public_keyssh_client_certnew)
    * [`obj auth_config.ssh_public_key.ssh_client_cert_pass`](#obj-auth_configssh_public_keyssh_client_cert_pass)
      * [`fn new()`](#fn-auth_configssh_public_keyssh_client_cert_passnew)
  * [`obj auth_config.user_password`](#obj-auth_configuser_password)
    * [`fn new()`](#fn-auth_configuser_passwordnew)
    * [`obj auth_config.user_password.password`](#obj-auth_configuser_passwordpassword)
      * [`fn new()`](#fn-auth_configuser_passwordpasswordnew)
* [`obj config_variable`](#obj-config_variable)
  * [`fn new()`](#fn-config_variablenew)
  * [`obj config_variable.encryption_key_value`](#obj-config_variableencryption_key_value)
    * [`fn new()`](#fn-config_variableencryption_key_valuenew)
  * [`obj config_variable.secret_value`](#obj-config_variablesecret_value)
    * [`fn new()`](#fn-config_variablesecret_valuenew)
* [`obj destination_config`](#obj-destination_config)
  * [`fn new()`](#fn-destination_confignew)
  * [`obj destination_config.destination`](#obj-destination_configdestination)
    * [`fn new()`](#fn-destination_configdestinationnew)
* [`obj eventing_config`](#obj-eventing_config)
  * [`fn new()`](#fn-eventing_confignew)
  * [`obj eventing_config.additional_variable`](#obj-eventing_configadditional_variable)
    * [`fn new()`](#fn-eventing_configadditional_variablenew)
    * [`obj eventing_config.additional_variable.encryption_key_value`](#obj-eventing_configadditional_variableencryption_key_value)
      * [`fn new()`](#fn-eventing_configadditional_variableencryption_key_valuenew)
    * [`obj eventing_config.additional_variable.secret_value`](#obj-eventing_configadditional_variablesecret_value)
      * [`fn new()`](#fn-eventing_configadditional_variablesecret_valuenew)
  * [`obj eventing_config.auth_config`](#obj-eventing_configauth_config)
    * [`fn new()`](#fn-eventing_configauth_confignew)
    * [`obj eventing_config.auth_config.additional_variable`](#obj-eventing_configauth_configadditional_variable)
      * [`fn new()`](#fn-eventing_configauth_configadditional_variablenew)
      * [`obj eventing_config.auth_config.additional_variable.encryption_key_value`](#obj-eventing_configauth_configadditional_variableencryption_key_value)
        * [`fn new()`](#fn-eventing_configauth_configadditional_variableencryption_key_valuenew)
      * [`obj eventing_config.auth_config.additional_variable.secret_value`](#obj-eventing_configauth_configadditional_variablesecret_value)
        * [`fn new()`](#fn-eventing_configauth_configadditional_variablesecret_valuenew)
    * [`obj eventing_config.auth_config.user_password`](#obj-eventing_configauth_configuser_password)
      * [`fn new()`](#fn-eventing_configauth_configuser_passwordnew)
      * [`obj eventing_config.auth_config.user_password.password`](#obj-eventing_configauth_configuser_passwordpassword)
        * [`fn new()`](#fn-eventing_configauth_configuser_passwordpasswordnew)
  * [`obj eventing_config.registration_destination_config`](#obj-eventing_configregistration_destination_config)
    * [`fn new()`](#fn-eventing_configregistration_destination_confignew)
    * [`obj eventing_config.registration_destination_config.destination`](#obj-eventing_configregistration_destination_configdestination)
      * [`fn new()`](#fn-eventing_configregistration_destination_configdestinationnew)
* [`obj lock_config`](#obj-lock_config)
  * [`fn new()`](#fn-lock_confignew)
* [`obj log_config`](#obj-log_config)
  * [`fn new()`](#fn-log_confignew)
* [`obj node_config`](#obj-node_config)
  * [`fn new()`](#fn-node_confignew)
* [`obj ssl_config`](#obj-ssl_config)
  * [`fn new()`](#fn-ssl_confignew)
  * [`obj ssl_config.additional_variable`](#obj-ssl_configadditional_variable)
    * [`fn new()`](#fn-ssl_configadditional_variablenew)
    * [`obj ssl_config.additional_variable.encryption_key_value`](#obj-ssl_configadditional_variableencryption_key_value)
      * [`fn new()`](#fn-ssl_configadditional_variableencryption_key_valuenew)
    * [`obj ssl_config.additional_variable.secret_value`](#obj-ssl_configadditional_variablesecret_value)
      * [`fn new()`](#fn-ssl_configadditional_variablesecret_valuenew)
  * [`obj ssl_config.client_certificate`](#obj-ssl_configclient_certificate)
    * [`fn new()`](#fn-ssl_configclient_certificatenew)
  * [`obj ssl_config.client_private_key`](#obj-ssl_configclient_private_key)
    * [`fn new()`](#fn-ssl_configclient_private_keynew)
  * [`obj ssl_config.client_private_key_pass`](#obj-ssl_configclient_private_key_pass)
    * [`fn new()`](#fn-ssl_configclient_private_key_passnew)
  * [`obj ssl_config.private_server_certificate`](#obj-ssl_configprivate_server_certificate)
    * [`fn new()`](#fn-ssl_configprivate_server_certificatenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.integration_connectors_connection.new` injects a new `google_integration_connectors_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.integration_connectors_connection.new('some_id')

You can get the reference to the `id` field of the created `google.integration_connectors_connection` using the reference:

    $._ref.google_integration_connectors_connection.some_id.get('id')

This is the same as directly entering `"${ google_integration_connectors_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `connector_version` (`string`): connectorVersion of the Connector.
  - `description` (`string`): An arbitrary description for the Conection. When `null`, the `description` field will be omitted from the resulting object.
  - `eventing_enablement_type` (`string`): Eventing enablement type. Will be nil if eventing is not enabled. Possible values: [&#34;EVENTING_AND_CONNECTION&#34;, &#34;ONLY_EVENTING&#34;] When `null`, the `eventing_enablement_type` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location in which Connection needs to be created.
  - `name` (`string`): Name of Connection needs to be created.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): Service account needed for runtime plane to access Google Cloud resources. When `null`, the `service_account` field will be omitted from the resulting object.
  - `suspended` (`bool`): Suspended indicates if a user has suspended a connection or not. When `null`, the `suspended` field will be omitted from the resulting object.
  - `auth_config` (`list[obj]`): authConfig for the connection. When `null`, the `auth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.new](#fn-auth_confignew) constructor.
  - `config_variable` (`list[obj]`): Config Variables for the connection. When `null`, the `config_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.config_variable.new](#fn-config_variablenew) constructor.
  - `destination_config` (`list[obj]`): Define the Connectors target endpoint. When `null`, the `destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.destination_config.new](#fn-destination_confignew) constructor.
  - `eventing_config` (`list[obj]`): Eventing Configuration of a connection When `null`, the `eventing_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.new](#fn-eventing_confignew) constructor.
  - `lock_config` (`list[obj]`): Determines whether or no a connection is locked. If locked, a reason must be specified. When `null`, the `lock_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.lock_config.new](#fn-lock_confignew) constructor.
  - `log_config` (`list[obj]`): Log configuration for the connection. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.log_config.new](#fn-log_confignew) constructor.
  - `node_config` (`list[obj]`): Node configuration for the connection. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.node_config.new](#fn-node_confignew) constructor.
  - `ssl_config` (`list[obj]`): SSL Configuration of a connection When `null`, the `ssl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.new](#fn-ssl_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.integration_connectors_connection.newAttrs` constructs a new object with attributes and blocks configured for the `integration_connectors_connection`
Terraform resource.

Unlike [google.integration_connectors_connection.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `connector_version` (`string`): connectorVersion of the Connector.
  - `description` (`string`): An arbitrary description for the Conection. When `null`, the `description` field will be omitted from the resulting object.
  - `eventing_enablement_type` (`string`): Eventing enablement type. Will be nil if eventing is not enabled. Possible values: [&#34;EVENTING_AND_CONNECTION&#34;, &#34;ONLY_EVENTING&#34;] When `null`, the `eventing_enablement_type` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location in which Connection needs to be created.
  - `name` (`string`): Name of Connection needs to be created.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): Service account needed for runtime plane to access Google Cloud resources. When `null`, the `service_account` field will be omitted from the resulting object.
  - `suspended` (`bool`): Suspended indicates if a user has suspended a connection or not. When `null`, the `suspended` field will be omitted from the resulting object.
  - `auth_config` (`list[obj]`): authConfig for the connection. When `null`, the `auth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.new](#fn-auth_confignew) constructor.
  - `config_variable` (`list[obj]`): Config Variables for the connection. When `null`, the `config_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.config_variable.new](#fn-config_variablenew) constructor.
  - `destination_config` (`list[obj]`): Define the Connectors target endpoint. When `null`, the `destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.destination_config.new](#fn-destination_confignew) constructor.
  - `eventing_config` (`list[obj]`): Eventing Configuration of a connection When `null`, the `eventing_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.new](#fn-eventing_confignew) constructor.
  - `lock_config` (`list[obj]`): Determines whether or no a connection is locked. If locked, a reason must be specified. When `null`, the `lock_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.lock_config.new](#fn-lock_confignew) constructor.
  - `log_config` (`list[obj]`): Log configuration for the connection. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.log_config.new](#fn-log_confignew) constructor.
  - `node_config` (`list[obj]`): Node configuration for the connection. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.node_config.new](#fn-node_confignew) constructor.
  - `ssl_config` (`list[obj]`): SSL Configuration of a connection When `null`, the `ssl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.new](#fn-ssl_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `integration_connectors_connection` resource into the root Terraform configuration.


### fn withAuthConfig

```ts
withAuthConfig()
```

`google.list[obj].withAuthConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the auth_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAuthConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `auth_config` field.


### fn withAuthConfigMixin

```ts
withAuthConfigMixin()
```

`google.list[obj].withAuthConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the auth_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAuthConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `auth_config` field.


### fn withConfigVariable

```ts
withConfigVariable()
```

`google.list[obj].withConfigVariable` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config_variable field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConfigVariableMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config_variable` field.


### fn withConfigVariableMixin

```ts
withConfigVariableMixin()
```

`google.list[obj].withConfigVariableMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config_variable field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConfigVariable](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config_variable` field.


### fn withConnectorVersion

```ts
withConnectorVersion()
```

`google.string.withConnectorVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the connector_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `connector_version` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDestinationConfig

```ts
withDestinationConfig()
```

`google.list[obj].withDestinationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the destination_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDestinationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `destination_config` field.


### fn withDestinationConfigMixin

```ts
withDestinationConfigMixin()
```

`google.list[obj].withDestinationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the destination_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDestinationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `destination_config` field.


### fn withEventingConfig

```ts
withEventingConfig()
```

`google.list[obj].withEventingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the eventing_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEventingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `eventing_config` field.


### fn withEventingConfigMixin

```ts
withEventingConfigMixin()
```

`google.list[obj].withEventingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the eventing_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEventingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `eventing_config` field.


### fn withEventingEnablementType

```ts
withEventingEnablementType()
```

`google.string.withEventingEnablementType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the eventing_enablement_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `eventing_enablement_type` field.


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


### fn withLockConfig

```ts
withLockConfig()
```

`google.list[obj].withLockConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the lock_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLockConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `lock_config` field.


### fn withLockConfigMixin

```ts
withLockConfigMixin()
```

`google.list[obj].withLockConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the lock_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLockConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `lock_config` field.


### fn withLogConfig

```ts
withLogConfig()
```

`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the log_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `log_config` field.


### fn withLogConfigMixin

```ts
withLogConfigMixin()
```

`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the log_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `log_config` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNodeConfig

```ts
withNodeConfig()
```

`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withNodeConfigMixin

```ts
withNodeConfigMixin()
```

`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account` field.


### fn withSslConfig

```ts
withSslConfig()
```

`google.list[obj].withSslConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ssl_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSslConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ssl_config` field.


### fn withSslConfigMixin

```ts
withSslConfigMixin()
```

`google.list[obj].withSslConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ssl_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSslConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ssl_config` field.


### fn withSuspended

```ts
withSuspended()
```

`google.bool.withSuspended` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the suspended field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `suspended` field.


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


## obj auth_config



### fn auth_config.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.new` constructs a new object with attributes and blocks configured for the `auth_config`
Terraform sub block.



**Args**:
  - `auth_key` (`string`): The type of authentication configured. When `null`, the `auth_key` field will be omitted from the resulting object.
  - `auth_type` (`string`): authType of the Connection Possible values: [&#34;USER_PASSWORD&#34;, &#34;OAUTH2_JWT_BEARER&#34;, &#34;OAUTH2_CLIENT_CREDENTIALS&#34;, &#34;SSH_PUBLIC_KEY&#34;, &#34;OAUTH2_AUTH_CODE_FLOW&#34;]
  - `additional_variable` (`list[obj]`): List containing additional auth configs. When `null`, the `additional_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.additional_variable.new](#fn-auth_configadditional_variablenew) constructor.
  - `oauth2_auth_code_flow` (`list[obj]`): Parameters to support Oauth 2.0 Auth Code Grant Authentication. When `null`, the `oauth2_auth_code_flow` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_auth_code_flow.new](#fn-auth_configoauth2_auth_code_flownew) constructor.
  - `oauth2_client_credentials` (`list[obj]`): OAuth3 Client Credentials for Authentication. When `null`, the `oauth2_client_credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_client_credentials.new](#fn-auth_configoauth2_client_credentialsnew) constructor.
  - `oauth2_jwt_bearer` (`list[obj]`): OAuth2 JWT Bearer for Authentication. When `null`, the `oauth2_jwt_bearer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.new](#fn-auth_configoauth2_jwt_bearernew) constructor.
  - `ssh_public_key` (`list[obj]`): SSH Public Key for Authentication. When `null`, the `ssh_public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.ssh_public_key.new](#fn-auth_configssh_public_keynew) constructor.
  - `user_password` (`list[obj]`): User password for Authentication. When `null`, the `user_password` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.user_password.new](#fn-auth_configuser_passwordnew) constructor.

**Returns**:
  - An attribute object that represents the `auth_config` sub block.


## obj auth_config.additional_variable



### fn auth_config.additional_variable.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.additional_variable.new` constructs a new object with attributes and blocks configured for the `additional_variable`
Terraform sub block.



**Args**:
  - `boolean_value` (`bool`): Boolean Value of configVariable. When `null`, the `boolean_value` field will be omitted from the resulting object.
  - `integer_value` (`number`): Integer Value of configVariable. When `null`, the `integer_value` field will be omitted from the resulting object.
  - `key` (`string`): Key for the configVariable
  - `string_value` (`string`): String Value of configVariabley. When `null`, the `string_value` field will be omitted from the resulting object.
  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable. When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.additional_variable.encryption_key_value.new](#fn-auth_configauth_configencryption_key_valuenew) constructor.
  - `secret_value` (`list[obj]`): Secret value of configVariable. When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.additional_variable.secret_value.new](#fn-auth_configauth_configsecret_valuenew) constructor.

**Returns**:
  - An attribute object that represents the `additional_variable` sub block.


## obj auth_config.additional_variable.encryption_key_value



### fn auth_config.additional_variable.encryption_key_value.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.additional_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `type` (`string`): Type of Encription Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;]

**Returns**:
  - An attribute object that represents the `encryption_key_value` sub block.


## obj auth_config.additional_variable.secret_value



### fn auth_config.additional_variable.secret_value.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.additional_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `secret_value` sub block.


## obj auth_config.oauth2_auth_code_flow



### fn auth_config.oauth2_auth_code_flow.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.oauth2_auth_code_flow.new` constructs a new object with attributes and blocks configured for the `oauth2_auth_code_flow`
Terraform sub block.



**Args**:
  - `auth_uri` (`string`): Auth URL for Authorization Code Flow. When `null`, the `auth_uri` field will be omitted from the resulting object.
  - `client_id` (`string`): Client ID for user-provided OAuth app. When `null`, the `client_id` field will be omitted from the resulting object.
  - `enable_pkce` (`bool`): Whether to enable PKCE when the user performs the auth code flow. When `null`, the `enable_pkce` field will be omitted from the resulting object.
  - `scopes` (`list`): Scopes the connection will request when the user performs the auth code flow. When `null`, the `scopes` field will be omitted from the resulting object.
  - `client_secret` (`list[obj]`): Client secret for user-provided OAuth app. When `null`, the `client_secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_auth_code_flow.client_secret.new](#fn-auth_configauth_configclient_secretnew) constructor.

**Returns**:
  - An attribute object that represents the `oauth2_auth_code_flow` sub block.


## obj auth_config.oauth2_auth_code_flow.client_secret



### fn auth_config.oauth2_auth_code_flow.client_secret.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.oauth2_auth_code_flow.client_secret.new` constructs a new object with attributes and blocks configured for the `client_secret`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*.

**Returns**:
  - An attribute object that represents the `client_secret` sub block.


## obj auth_config.oauth2_client_credentials



### fn auth_config.oauth2_client_credentials.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.oauth2_client_credentials.new` constructs a new object with attributes and blocks configured for the `oauth2_client_credentials`
Terraform sub block.



**Args**:
  - `client_id` (`string`): Secret version of Password for Authentication.
  - `client_secret` (`list[obj]`): Secret version reference containing the client secret. When `null`, the `client_secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_client_credentials.client_secret.new](#fn-auth_configauth_configclient_secretnew) constructor.

**Returns**:
  - An attribute object that represents the `oauth2_client_credentials` sub block.


## obj auth_config.oauth2_client_credentials.client_secret



### fn auth_config.oauth2_client_credentials.client_secret.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.oauth2_client_credentials.client_secret.new` constructs a new object with attributes and blocks configured for the `client_secret`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*.

**Returns**:
  - An attribute object that represents the `client_secret` sub block.


## obj auth_config.oauth2_jwt_bearer



### fn auth_config.oauth2_jwt_bearer.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.new` constructs a new object with attributes and blocks configured for the `oauth2_jwt_bearer`
Terraform sub block.



**Args**:
  - `client_key` (`list[obj]`): Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate.
This private key will be used to sign JWTs used for the jwt-bearer authorization grant.
Specified in the form as: projects/*/secrets/*/versions/*. When `null`, the `client_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.client_key.new](#fn-auth_configauth_configclient_keynew) constructor.
  - `jwt_claims` (`list[obj]`): JwtClaims providers fields to generate the token. When `null`, the `jwt_claims` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.jwt_claims.new](#fn-auth_configauth_configjwt_claimsnew) constructor.

**Returns**:
  - An attribute object that represents the `oauth2_jwt_bearer` sub block.


## obj auth_config.oauth2_jwt_bearer.client_key



### fn auth_config.oauth2_jwt_bearer.client_key.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.client_key.new` constructs a new object with attributes and blocks configured for the `client_key`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*.

**Returns**:
  - An attribute object that represents the `client_key` sub block.


## obj auth_config.oauth2_jwt_bearer.jwt_claims



### fn auth_config.oauth2_jwt_bearer.jwt_claims.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.jwt_claims.new` constructs a new object with attributes and blocks configured for the `jwt_claims`
Terraform sub block.



**Args**:
  - `audience` (`string`): Value for the &#34;aud&#34; claim. When `null`, the `audience` field will be omitted from the resulting object.
  - `issuer` (`string`): Value for the &#34;iss&#34; claim. When `null`, the `issuer` field will be omitted from the resulting object.
  - `subject` (`string`): Value for the &#34;sub&#34; claim. When `null`, the `subject` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `jwt_claims` sub block.


## obj auth_config.ssh_public_key



### fn auth_config.ssh_public_key.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.ssh_public_key.new` constructs a new object with attributes and blocks configured for the `ssh_public_key`
Terraform sub block.



**Args**:
  - `cert_type` (`string`): Format of SSH Client cert. When `null`, the `cert_type` field will be omitted from the resulting object.
  - `username` (`string`): The user account used to authenticate.
  - `ssh_client_cert` (`list[obj]`): SSH Client Cert. It should contain both public and private key. When `null`, the `ssh_client_cert` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.ssh_public_key.ssh_client_cert.new](#fn-auth_configauth_configssh_client_certnew) constructor.
  - `ssh_client_cert_pass` (`list[obj]`): Password (passphrase) for ssh client certificate if it has one. When `null`, the `ssh_client_cert_pass` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.ssh_public_key.ssh_client_cert_pass.new](#fn-auth_configauth_configssh_client_cert_passnew) constructor.

**Returns**:
  - An attribute object that represents the `ssh_public_key` sub block.


## obj auth_config.ssh_public_key.ssh_client_cert



### fn auth_config.ssh_public_key.ssh_client_cert.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.ssh_public_key.ssh_client_cert.new` constructs a new object with attributes and blocks configured for the `ssh_client_cert`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*.

**Returns**:
  - An attribute object that represents the `ssh_client_cert` sub block.


## obj auth_config.ssh_public_key.ssh_client_cert_pass



### fn auth_config.ssh_public_key.ssh_client_cert_pass.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.ssh_public_key.ssh_client_cert_pass.new` constructs a new object with attributes and blocks configured for the `ssh_client_cert_pass`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*.

**Returns**:
  - An attribute object that represents the `ssh_client_cert_pass` sub block.


## obj auth_config.user_password



### fn auth_config.user_password.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.user_password.new` constructs a new object with attributes and blocks configured for the `user_password`
Terraform sub block.



**Args**:
  - `username` (`string`): Username for Authentication.
  - `password` (`list[obj]`): Password for Authentication. When `null`, the `password` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.user_password.password.new](#fn-auth_configauth_configpasswordnew) constructor.

**Returns**:
  - An attribute object that represents the `user_password` sub block.


## obj auth_config.user_password.password



### fn auth_config.user_password.password.new

```ts
new()
```


`google.integration_connectors_connection.auth_config.user_password.password.new` constructs a new object with attributes and blocks configured for the `password`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*.

**Returns**:
  - An attribute object that represents the `password` sub block.


## obj config_variable



### fn config_variable.new

```ts
new()
```


`google.integration_connectors_connection.config_variable.new` constructs a new object with attributes and blocks configured for the `config_variable`
Terraform sub block.



**Args**:
  - `boolean_value` (`bool`): Boolean Value of configVariable When `null`, the `boolean_value` field will be omitted from the resulting object.
  - `integer_value` (`number`): Integer Value of configVariable When `null`, the `integer_value` field will be omitted from the resulting object.
  - `key` (`string`): Key for the configVariable
  - `string_value` (`string`): String Value of configVariabley When `null`, the `string_value` field will be omitted from the resulting object.
  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable. When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.config_variable.encryption_key_value.new](#fn-config_variableencryption_key_valuenew) constructor.
  - `secret_value` (`list[obj]`): Secret value of configVariable. When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.config_variable.secret_value.new](#fn-config_variablesecret_valuenew) constructor.

**Returns**:
  - An attribute object that represents the `config_variable` sub block.


## obj config_variable.encryption_key_value



### fn config_variable.encryption_key_value.new

```ts
new()
```


`google.integration_connectors_connection.config_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `type` (`string`): Type of Encription Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;]

**Returns**:
  - An attribute object that represents the `encryption_key_value` sub block.


## obj config_variable.secret_value



### fn config_variable.secret_value.new

```ts
new()
```


`google.integration_connectors_connection.config_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `secret_value` sub block.


## obj destination_config



### fn destination_config.new

```ts
new()
```


`google.integration_connectors_connection.destination_config.new` constructs a new object with attributes and blocks configured for the `destination_config`
Terraform sub block.



**Args**:
  - `key` (`string`): The key is the destination identifier that is supported by the Connector.
  - `destination` (`list[obj]`): The destinations for the key. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.destination_config.destination.new](#fn-destination_configdestinationnew) constructor.

**Returns**:
  - An attribute object that represents the `destination_config` sub block.


## obj destination_config.destination



### fn destination_config.destination.new

```ts
new()
```


`google.integration_connectors_connection.destination_config.destination.new` constructs a new object with attributes and blocks configured for the `destination`
Terraform sub block.



**Args**:
  - `host` (`string`): For publicly routable host. When `null`, the `host` field will be omitted from the resulting object.
  - `port` (`number`): The port is the target port number that is accepted by the destination. When `null`, the `port` field will be omitted from the resulting object.
  - `service_attachment` (`string`): PSC service attachments. Format: projects/*/regions/*/serviceAttachments/* When `null`, the `service_attachment` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `destination` sub block.


## obj eventing_config



### fn eventing_config.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.new` constructs a new object with attributes and blocks configured for the `eventing_config`
Terraform sub block.



**Args**:
  - `enrichment_enabled` (`bool`): Enrichment Enabled. When `null`, the `enrichment_enabled` field will be omitted from the resulting object.
  - `additional_variable` (`list[obj]`): List containing additional auth configs. When `null`, the `additional_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.additional_variable.new](#fn-eventing_configadditional_variablenew) constructor.
  - `auth_config` (`list[obj]`): authConfig for Eventing Configuration. When `null`, the `auth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.new](#fn-eventing_configauth_confignew) constructor.
  - `registration_destination_config` (`list[obj]`): registrationDestinationConfig When `null`, the `registration_destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.registration_destination_config.new](#fn-eventing_configregistration_destination_confignew) constructor.

**Returns**:
  - An attribute object that represents the `eventing_config` sub block.


## obj eventing_config.additional_variable



### fn eventing_config.additional_variable.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.additional_variable.new` constructs a new object with attributes and blocks configured for the `additional_variable`
Terraform sub block.



**Args**:
  - `boolean_value` (`bool`): Boolean Value of configVariable. When `null`, the `boolean_value` field will be omitted from the resulting object.
  - `integer_value` (`number`): Integer Value of configVariable. When `null`, the `integer_value` field will be omitted from the resulting object.
  - `key` (`string`): Key for the configVariable
  - `string_value` (`string`): String Value of configVariabley. When `null`, the `string_value` field will be omitted from the resulting object.
  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable. When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.additional_variable.encryption_key_value.new](#fn-eventing_configeventing_configencryption_key_valuenew) constructor.
  - `secret_value` (`list[obj]`): Secret value of configVariable When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.additional_variable.secret_value.new](#fn-eventing_configeventing_configsecret_valuenew) constructor.

**Returns**:
  - An attribute object that represents the `additional_variable` sub block.


## obj eventing_config.additional_variable.encryption_key_value



### fn eventing_config.additional_variable.encryption_key_value.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.additional_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `type` (`string`): Type of Encryption Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_key_value` sub block.


## obj eventing_config.additional_variable.secret_value



### fn eventing_config.additional_variable.secret_value.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.additional_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `secret_value` sub block.


## obj eventing_config.auth_config



### fn eventing_config.auth_config.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.auth_config.new` constructs a new object with attributes and blocks configured for the `auth_config`
Terraform sub block.



**Args**:
  - `auth_key` (`string`): The type of authentication configured. When `null`, the `auth_key` field will be omitted from the resulting object.
  - `auth_type` (`string`): authType of the Connection Possible values: [&#34;USER_PASSWORD&#34;]
  - `additional_variable` (`list[obj]`): List containing additional auth configs. When `null`, the `additional_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.additional_variable.new](#fn-eventing_configeventing_configadditional_variablenew) constructor.
  - `user_password` (`list[obj]`): User password for Authentication. When `null`, the `user_password` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.user_password.new](#fn-eventing_configeventing_configuser_passwordnew) constructor.

**Returns**:
  - An attribute object that represents the `auth_config` sub block.


## obj eventing_config.auth_config.additional_variable



### fn eventing_config.auth_config.additional_variable.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.auth_config.additional_variable.new` constructs a new object with attributes and blocks configured for the `additional_variable`
Terraform sub block.



**Args**:
  - `boolean_value` (`bool`): Boolean Value of configVariable. When `null`, the `boolean_value` field will be omitted from the resulting object.
  - `integer_value` (`number`): Integer Value of configVariable. When `null`, the `integer_value` field will be omitted from the resulting object.
  - `key` (`string`): Key for the configVariable
  - `string_value` (`string`): String Value of configVariabley. When `null`, the `string_value` field will be omitted from the resulting object.
  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.additional_variable.encryption_key_value.new](#fn-eventing_configeventing_configauth_configencryption_key_valuenew) constructor.
  - `secret_value` (`list[obj]`): Secret value of configVariable When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.additional_variable.secret_value.new](#fn-eventing_configeventing_configauth_configsecret_valuenew) constructor.

**Returns**:
  - An attribute object that represents the `additional_variable` sub block.


## obj eventing_config.auth_config.additional_variable.encryption_key_value



### fn eventing_config.auth_config.additional_variable.encryption_key_value.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.auth_config.additional_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `type` (`string`): Type of Encription Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_key_value` sub block.


## obj eventing_config.auth_config.additional_variable.secret_value



### fn eventing_config.auth_config.additional_variable.secret_value.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.auth_config.additional_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `secret_value` sub block.


## obj eventing_config.auth_config.user_password



### fn eventing_config.auth_config.user_password.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.auth_config.user_password.new` constructs a new object with attributes and blocks configured for the `user_password`
Terraform sub block.



**Args**:
  - `username` (`string`): Username for Authentication. When `null`, the `username` field will be omitted from the resulting object.
  - `password` (`list[obj]`): Password for Authentication. When `null`, the `password` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.user_password.password.new](#fn-eventing_configeventing_configauth_configpasswordnew) constructor.

**Returns**:
  - An attribute object that represents the `user_password` sub block.


## obj eventing_config.auth_config.user_password.password



### fn eventing_config.auth_config.user_password.password.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.auth_config.user_password.password.new` constructs a new object with attributes and blocks configured for the `password`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*.

**Returns**:
  - An attribute object that represents the `password` sub block.


## obj eventing_config.registration_destination_config



### fn eventing_config.registration_destination_config.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.registration_destination_config.new` constructs a new object with attributes and blocks configured for the `registration_destination_config`
Terraform sub block.



**Args**:
  - `key` (`string`): Key for the connection When `null`, the `key` field will be omitted from the resulting object.
  - `destination` (`list[obj]`): destinations for the connection When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.registration_destination_config.destination.new](#fn-eventing_configeventing_configdestinationnew) constructor.

**Returns**:
  - An attribute object that represents the `registration_destination_config` sub block.


## obj eventing_config.registration_destination_config.destination



### fn eventing_config.registration_destination_config.destination.new

```ts
new()
```


`google.integration_connectors_connection.eventing_config.registration_destination_config.destination.new` constructs a new object with attributes and blocks configured for the `destination`
Terraform sub block.



**Args**:
  - `host` (`string`): Host When `null`, the `host` field will be omitted from the resulting object.
  - `port` (`number`): port number When `null`, the `port` field will be omitted from the resulting object.
  - `service_attachment` (`string`): Service Attachment When `null`, the `service_attachment` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `destination` sub block.


## obj lock_config



### fn lock_config.new

```ts
new()
```


`google.integration_connectors_connection.lock_config.new` constructs a new object with attributes and blocks configured for the `lock_config`
Terraform sub block.



**Args**:
  - `locked` (`bool`): Indicates whether or not the connection is locked.
  - `reason` (`string`): Describes why a connection is locked. When `null`, the `reason` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `lock_config` sub block.


## obj log_config



### fn log_config.new

```ts
new()
```


`google.integration_connectors_connection.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Enabled represents whether logging is enabled or not for a connection.

**Returns**:
  - An attribute object that represents the `log_config` sub block.


## obj node_config



### fn node_config.new

```ts
new()
```


`google.integration_connectors_connection.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `max_node_count` (`number`): Minimum number of nodes in the runtime nodes. When `null`, the `max_node_count` field will be omitted from the resulting object.
  - `min_node_count` (`number`): Minimum number of nodes in the runtime nodes. When `null`, the `min_node_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj ssl_config



### fn ssl_config.new

```ts
new()
```


`google.integration_connectors_connection.ssl_config.new` constructs a new object with attributes and blocks configured for the `ssl_config`
Terraform sub block.



**Args**:
  - `client_cert_type` (`string`): Type of Client Cert (PEM/JKS/.. etc.) Possible values: [&#34;PEM&#34;] When `null`, the `client_cert_type` field will be omitted from the resulting object.
  - `server_cert_type` (`string`): Type of Server Cert (PEM/JKS/.. etc.) Possible values: [&#34;PEM&#34;] When `null`, the `server_cert_type` field will be omitted from the resulting object.
  - `trust_model` (`string`): Enum for Trust Model Possible values: [&#34;PUBLIC&#34;, &#34;PRIVATE&#34;, &#34;INSECURE&#34;] When `null`, the `trust_model` field will be omitted from the resulting object.
  - `type` (`string`): Enum for controlling the SSL Type (TLS/MTLS) Possible values: [&#34;TLS&#34;, &#34;MTLS&#34;]
  - `use_ssl` (`bool`): Bool for enabling SSL When `null`, the `use_ssl` field will be omitted from the resulting object.
  - `additional_variable` (`list[obj]`): Additional SSL related field values. When `null`, the `additional_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.additional_variable.new](#fn-ssl_configadditional_variablenew) constructor.
  - `client_certificate` (`list[obj]`): Client Certificate When `null`, the `client_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.client_certificate.new](#fn-ssl_configclient_certificatenew) constructor.
  - `client_private_key` (`list[obj]`): Client Private Key When `null`, the `client_private_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.client_private_key.new](#fn-ssl_configclient_private_keynew) constructor.
  - `client_private_key_pass` (`list[obj]`): Secret containing the passphrase protecting the Client Private Key When `null`, the `client_private_key_pass` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.client_private_key_pass.new](#fn-ssl_configclient_private_key_passnew) constructor.
  - `private_server_certificate` (`list[obj]`): Private Server Certificate. Needs to be specified if trust model is PRIVATE. When `null`, the `private_server_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.private_server_certificate.new](#fn-ssl_configprivate_server_certificatenew) constructor.

**Returns**:
  - An attribute object that represents the `ssl_config` sub block.


## obj ssl_config.additional_variable



### fn ssl_config.additional_variable.new

```ts
new()
```


`google.integration_connectors_connection.ssl_config.additional_variable.new` constructs a new object with attributes and blocks configured for the `additional_variable`
Terraform sub block.



**Args**:
  - `boolean_value` (`bool`): Boolean Value of configVariable. When `null`, the `boolean_value` field will be omitted from the resulting object.
  - `integer_value` (`number`): Integer Value of configVariable. When `null`, the `integer_value` field will be omitted from the resulting object.
  - `key` (`string`): Key for the configVariable
  - `string_value` (`string`): String Value of configVariabley. When `null`, the `string_value` field will be omitted from the resulting object.
  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.additional_variable.encryption_key_value.new](#fn-ssl_configssl_configencryption_key_valuenew) constructor.
  - `secret_value` (`list[obj]`): Secret value of configVariable When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.additional_variable.secret_value.new](#fn-ssl_configssl_configsecret_valuenew) constructor.

**Returns**:
  - An attribute object that represents the `additional_variable` sub block.


## obj ssl_config.additional_variable.encryption_key_value



### fn ssl_config.additional_variable.encryption_key_value.new

```ts
new()
```


`google.integration_connectors_connection.ssl_config.additional_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `type` (`string`): Type of Encription Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_key_value` sub block.


## obj ssl_config.additional_variable.secret_value



### fn ssl_config.additional_variable.secret_value.new

```ts
new()
```


`google.integration_connectors_connection.ssl_config.additional_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `secret_value` sub block.


## obj ssl_config.client_certificate



### fn ssl_config.client_certificate.new

```ts
new()
```


`google.integration_connectors_connection.ssl_config.client_certificate.new` constructs a new object with attributes and blocks configured for the `client_certificate`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `client_certificate` sub block.


## obj ssl_config.client_private_key



### fn ssl_config.client_private_key.new

```ts
new()
```


`google.integration_connectors_connection.ssl_config.client_private_key.new` constructs a new object with attributes and blocks configured for the `client_private_key`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `client_private_key` sub block.


## obj ssl_config.client_private_key_pass



### fn ssl_config.client_private_key_pass.new

```ts
new()
```


`google.integration_connectors_connection.ssl_config.client_private_key_pass.new` constructs a new object with attributes and blocks configured for the `client_private_key_pass`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `client_private_key_pass` sub block.


## obj ssl_config.private_server_certificate



### fn ssl_config.private_server_certificate.new

```ts
new()
```


`google.integration_connectors_connection.ssl_config.private_server_certificate.new` constructs a new object with attributes and blocks configured for the `private_server_certificate`
Terraform sub block.



**Args**:
  - `secret_version` (`string`): Secret version of Secret Value for Config variable.

**Returns**:
  - An attribute object that represents the `private_server_certificate` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.integration_connectors_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
