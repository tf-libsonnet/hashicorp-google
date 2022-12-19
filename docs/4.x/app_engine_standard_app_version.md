---
permalink: /app_engine_standard_app_version/
---

# app_engine_standard_app_version

`app_engine_standard_app_version` represents the `google_app_engine_standard_app_version` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppEngineApis()`](#fn-withappengineapis)
* [`fn withAutomaticScaling()`](#fn-withautomaticscaling)
* [`fn withAutomaticScalingMixin()`](#fn-withautomaticscalingmixin)
* [`fn withBasicScaling()`](#fn-withbasicscaling)
* [`fn withBasicScalingMixin()`](#fn-withbasicscalingmixin)
* [`fn withDeleteServiceOnDestroy()`](#fn-withdeleteserviceondestroy)
* [`fn withDeployment()`](#fn-withdeployment)
* [`fn withDeploymentMixin()`](#fn-withdeploymentmixin)
* [`fn withEntrypoint()`](#fn-withentrypoint)
* [`fn withEntrypointMixin()`](#fn-withentrypointmixin)
* [`fn withEnvVariables()`](#fn-withenvvariables)
* [`fn withHandlers()`](#fn-withhandlers)
* [`fn withHandlersMixin()`](#fn-withhandlersmixin)
* [`fn withInboundServices()`](#fn-withinboundservices)
* [`fn withInstanceClass()`](#fn-withinstanceclass)
* [`fn withLibraries()`](#fn-withlibraries)
* [`fn withLibrariesMixin()`](#fn-withlibrariesmixin)
* [`fn withManualScaling()`](#fn-withmanualscaling)
* [`fn withManualScalingMixin()`](#fn-withmanualscalingmixin)
* [`fn withNoopOnDestroy()`](#fn-withnoopondestroy)
* [`fn withProject()`](#fn-withproject)
* [`fn withRuntime()`](#fn-withruntime)
* [`fn withRuntimeApiVersion()`](#fn-withruntimeapiversion)
* [`fn withService()`](#fn-withservice)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withThreadsafe()`](#fn-withthreadsafe)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersionId()`](#fn-withversionid)
* [`fn withVpcAccessConnector()`](#fn-withvpcaccessconnector)
* [`fn withVpcAccessConnectorMixin()`](#fn-withvpcaccessconnectormixin)
* [`obj automatic_scaling`](#obj-automatic_scaling)
  * [`fn new()`](#fn-automatic_scalingnew)
  * [`obj automatic_scaling.standard_scheduler_settings`](#obj-automatic_scalingstandard_scheduler_settings)
    * [`fn new()`](#fn-automatic_scalingstandard_scheduler_settingsnew)
* [`obj basic_scaling`](#obj-basic_scaling)
  * [`fn new()`](#fn-basic_scalingnew)
* [`obj deployment`](#obj-deployment)
  * [`fn new()`](#fn-deploymentnew)
  * [`obj deployment.files`](#obj-deploymentfiles)
    * [`fn new()`](#fn-deploymentfilesnew)
  * [`obj deployment.zip`](#obj-deploymentzip)
    * [`fn new()`](#fn-deploymentzipnew)
* [`obj entrypoint`](#obj-entrypoint)
  * [`fn new()`](#fn-entrypointnew)
* [`obj handlers`](#obj-handlers)
  * [`fn new()`](#fn-handlersnew)
  * [`obj handlers.script`](#obj-handlersscript)
    * [`fn new()`](#fn-handlersscriptnew)
  * [`obj handlers.static_files`](#obj-handlersstatic_files)
    * [`fn new()`](#fn-handlersstatic_filesnew)
* [`obj libraries`](#obj-libraries)
  * [`fn new()`](#fn-librariesnew)
* [`obj manual_scaling`](#obj-manual_scaling)
  * [`fn new()`](#fn-manual_scalingnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vpc_access_connector`](#obj-vpc_access_connector)
  * [`fn new()`](#fn-vpc_access_connectornew)

## Fields

### fn new

```ts
new()
```


`google.app_engine_standard_app_version.new` injects a new `google_app_engine_standard_app_version` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.app_engine_standard_app_version.new('some_id')

You can get the reference to the `id` field of the created `google.app_engine_standard_app_version` using the reference:

    $._ref.google_app_engine_standard_app_version.some_id.get('id')

This is the same as directly entering `"${ google_app_engine_standard_app_version.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `app_engine_apis` (`bool`): Allows App Engine second generation runtimes to access the legacy bundled services. When `null`, the `app_engine_apis` field will be omitted from the resulting object.
  - `delete_service_on_destroy` (`bool`): If set to &#39;true&#39;, the service will be deleted if it is the last version. When `null`, the `delete_service_on_destroy` field will be omitted from the resulting object.
  - `env_variables` (`obj`): Environment variables available to the application. When `null`, the `env_variables` field will be omitted from the resulting object.
  - `inbound_services` (`list`): A list of the types of messages that this application is able to receive. Possible values: [&#34;INBOUND_SERVICE_MAIL&#34;, &#34;INBOUND_SERVICE_MAIL_BOUNCE&#34;, &#34;INBOUND_SERVICE_XMPP_ERROR&#34;, &#34;INBOUND_SERVICE_XMPP_MESSAGE&#34;, &#34;INBOUND_SERVICE_XMPP_SUBSCRIBE&#34;, &#34;INBOUND_SERVICE_XMPP_PRESENCE&#34;, &#34;INBOUND_SERVICE_CHANNEL_PRESENCE&#34;, &#34;INBOUND_SERVICE_WARMUP&#34;] When `null`, the `inbound_services` field will be omitted from the resulting object.
  - `instance_class` (`string`): Instance class that is used to run this version. Valid values are
AutomaticScaling: F1, F2, F4, F4_1G
BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen. When `null`, the `instance_class` field will be omitted from the resulting object.
  - `noop_on_destroy` (`bool`): If set to &#39;true&#39;, the application version will not be deleted. When `null`, the `noop_on_destroy` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `runtime` (`string`): Desired runtime. Example python27.
  - `runtime_api_version` (`string`): The version of the API in the given runtime environment.
Please see the app.yaml reference for valid values at &#39;https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref&#39;\
Substitute &#39;&lt;language&gt;&#39; with &#39;python&#39;, &#39;java&#39;, &#39;php&#39;, &#39;ruby&#39;, &#39;go&#39; or &#39;nodejs&#39;. When `null`, the `runtime_api_version` field will be omitted from the resulting object.
  - `service` (`string`): AppEngine service resource
  - `service_account` (`string`): The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag. When `null`, the `service_account` field will be omitted from the resulting object.
  - `threadsafe` (`bool`): Whether multiple requests can be dispatched to this version at once. When `null`, the `threadsafe` field will be omitted from the resulting object.
  - `version_id` (`string`): Relative name of the version within the service. For example, &#39;v1&#39;. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,&#34;default&#34;, &#34;latest&#34;, and any name with the prefix &#34;ah-&#34;. When `null`, the `version_id` field will be omitted from the resulting object.
  - `automatic_scaling` (`list[obj]`): Automatic scaling is based on request rate, response latencies, and other application metrics. When `null`, the `automatic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.automatic_scaling.new](#fn-automatic_scalingnew) constructor.
  - `basic_scaling` (`list[obj]`): Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity. When `null`, the `basic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.basic_scaling.new](#fn-basic_scalingnew) constructor.
  - `deployment` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.deployment.new](#fn-deploymentnew) constructor.
  - `entrypoint` (`list[obj]`): The entrypoint for the application. When `null`, the `entrypoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.entrypoint.new](#fn-entrypointnew) constructor.
  - `handlers` (`list[obj]`): An ordered list of URL-matching patterns that should be applied to incoming requests.
The first matching URL handles the request and other request handlers are not attempted. When `null`, the `handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.handlers.new](#fn-handlersnew) constructor.
  - `libraries` (`list[obj]`): Configuration for third-party Python runtime libraries that are required by the application. When `null`, the `libraries` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.libraries.new](#fn-librariesnew) constructor.
  - `manual_scaling` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `manual_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.manual_scaling.new](#fn-manual_scalingnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.timeouts.new](#fn-timeoutsnew) constructor.
  - `vpc_access_connector` (`list[obj]`): Enables VPC connectivity for standard apps. When `null`, the `vpc_access_connector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.vpc_access_connector.new](#fn-vpc_access_connectornew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.app_engine_standard_app_version.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_standard_app_version`
Terraform resource.

Unlike [google.app_engine_standard_app_version.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `app_engine_apis` (`bool`): Allows App Engine second generation runtimes to access the legacy bundled services. When `null`, the `app_engine_apis` field will be omitted from the resulting object.
  - `delete_service_on_destroy` (`bool`): If set to &#39;true&#39;, the service will be deleted if it is the last version. When `null`, the `delete_service_on_destroy` field will be omitted from the resulting object.
  - `env_variables` (`obj`): Environment variables available to the application. When `null`, the `env_variables` field will be omitted from the resulting object.
  - `inbound_services` (`list`): A list of the types of messages that this application is able to receive. Possible values: [&#34;INBOUND_SERVICE_MAIL&#34;, &#34;INBOUND_SERVICE_MAIL_BOUNCE&#34;, &#34;INBOUND_SERVICE_XMPP_ERROR&#34;, &#34;INBOUND_SERVICE_XMPP_MESSAGE&#34;, &#34;INBOUND_SERVICE_XMPP_SUBSCRIBE&#34;, &#34;INBOUND_SERVICE_XMPP_PRESENCE&#34;, &#34;INBOUND_SERVICE_CHANNEL_PRESENCE&#34;, &#34;INBOUND_SERVICE_WARMUP&#34;] When `null`, the `inbound_services` field will be omitted from the resulting object.
  - `instance_class` (`string`): Instance class that is used to run this version. Valid values are
AutomaticScaling: F1, F2, F4, F4_1G
BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen. When `null`, the `instance_class` field will be omitted from the resulting object.
  - `noop_on_destroy` (`bool`): If set to &#39;true&#39;, the application version will not be deleted. When `null`, the `noop_on_destroy` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `runtime` (`string`): Desired runtime. Example python27.
  - `runtime_api_version` (`string`): The version of the API in the given runtime environment.
Please see the app.yaml reference for valid values at &#39;https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref&#39;\
Substitute &#39;&lt;language&gt;&#39; with &#39;python&#39;, &#39;java&#39;, &#39;php&#39;, &#39;ruby&#39;, &#39;go&#39; or &#39;nodejs&#39;. When `null`, the `runtime_api_version` field will be omitted from the resulting object.
  - `service` (`string`): AppEngine service resource
  - `service_account` (`string`): The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag. When `null`, the `service_account` field will be omitted from the resulting object.
  - `threadsafe` (`bool`): Whether multiple requests can be dispatched to this version at once. When `null`, the `threadsafe` field will be omitted from the resulting object.
  - `version_id` (`string`): Relative name of the version within the service. For example, &#39;v1&#39;. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,&#34;default&#34;, &#34;latest&#34;, and any name with the prefix &#34;ah-&#34;. When `null`, the `version_id` field will be omitted from the resulting object.
  - `automatic_scaling` (`list[obj]`): Automatic scaling is based on request rate, response latencies, and other application metrics. When `null`, the `automatic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.automatic_scaling.new](#fn-automatic_scalingnew) constructor.
  - `basic_scaling` (`list[obj]`): Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity. When `null`, the `basic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.basic_scaling.new](#fn-basic_scalingnew) constructor.
  - `deployment` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.deployment.new](#fn-deploymentnew) constructor.
  - `entrypoint` (`list[obj]`): The entrypoint for the application. When `null`, the `entrypoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.entrypoint.new](#fn-entrypointnew) constructor.
  - `handlers` (`list[obj]`): An ordered list of URL-matching patterns that should be applied to incoming requests.
The first matching URL handles the request and other request handlers are not attempted. When `null`, the `handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.handlers.new](#fn-handlersnew) constructor.
  - `libraries` (`list[obj]`): Configuration for third-party Python runtime libraries that are required by the application. When `null`, the `libraries` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.libraries.new](#fn-librariesnew) constructor.
  - `manual_scaling` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `manual_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.manual_scaling.new](#fn-manual_scalingnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.timeouts.new](#fn-timeoutsnew) constructor.
  - `vpc_access_connector` (`list[obj]`): Enables VPC connectivity for standard apps. When `null`, the `vpc_access_connector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.vpc_access_connector.new](#fn-vpc_access_connectornew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_standard_app_version` resource into the root Terraform configuration.


### fn withAppEngineApis

```ts
withAppEngineApis()
```

`google.bool.withAppEngineApis` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the app_engine_apis field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `app_engine_apis` field.


### fn withAutomaticScaling

```ts
withAutomaticScaling()
```

`google.list[obj].withAutomaticScaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the automatic_scaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutomaticScalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `automatic_scaling` field.


### fn withAutomaticScalingMixin

```ts
withAutomaticScalingMixin()
```

`google.list[obj].withAutomaticScalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the automatic_scaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutomaticScaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `automatic_scaling` field.


### fn withBasicScaling

```ts
withBasicScaling()
```

`google.list[obj].withBasicScaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic_scaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBasicScalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic_scaling` field.


### fn withBasicScalingMixin

```ts
withBasicScalingMixin()
```

`google.list[obj].withBasicScalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the basic_scaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBasicScaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `basic_scaling` field.


### fn withDeleteServiceOnDestroy

```ts
withDeleteServiceOnDestroy()
```

`google.bool.withDeleteServiceOnDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the delete_service_on_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `delete_service_on_destroy` field.


### fn withDeployment

```ts
withDeployment()
```

`google.list[obj].withDeployment` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the deployment field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDeploymentMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `deployment` field.


### fn withDeploymentMixin

```ts
withDeploymentMixin()
```

`google.list[obj].withDeploymentMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the deployment field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDeployment](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `deployment` field.


### fn withEntrypoint

```ts
withEntrypoint()
```

`google.list[obj].withEntrypoint` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the entrypoint field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEntrypointMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `entrypoint` field.


### fn withEntrypointMixin

```ts
withEntrypointMixin()
```

`google.list[obj].withEntrypointMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the entrypoint field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEntrypoint](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `entrypoint` field.


### fn withEnvVariables

```ts
withEnvVariables()
```

`google.obj.withEnvVariables` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the env_variables field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `env_variables` field.


### fn withHandlers

```ts
withHandlers()
```

`google.list[obj].withHandlers` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the handlers field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withHandlersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `handlers` field.


### fn withHandlersMixin

```ts
withHandlersMixin()
```

`google.list[obj].withHandlersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the handlers field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withHandlers](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `handlers` field.


### fn withInboundServices

```ts
withInboundServices()
```

`google.list.withInboundServices` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the inbound_services field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `inbound_services` field.


### fn withInstanceClass

```ts
withInstanceClass()
```

`google.string.withInstanceClass` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_class field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_class` field.


### fn withLibraries

```ts
withLibraries()
```

`google.list[obj].withLibraries` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the libraries field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLibrariesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `libraries` field.


### fn withLibrariesMixin

```ts
withLibrariesMixin()
```

`google.list[obj].withLibrariesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the libraries field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLibraries](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `libraries` field.


### fn withManualScaling

```ts
withManualScaling()
```

`google.list[obj].withManualScaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the manual_scaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withManualScalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `manual_scaling` field.


### fn withManualScalingMixin

```ts
withManualScalingMixin()
```

`google.list[obj].withManualScalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the manual_scaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withManualScaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `manual_scaling` field.


### fn withNoopOnDestroy

```ts
withNoopOnDestroy()
```

`google.bool.withNoopOnDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the noop_on_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `noop_on_destroy` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRuntime

```ts
withRuntime()
```

`google.string.withRuntime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the runtime field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `runtime` field.


### fn withRuntimeApiVersion

```ts
withRuntimeApiVersion()
```

`google.string.withRuntimeApiVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the runtime_api_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `runtime_api_version` field.


### fn withService

```ts
withService()
```

`google.string.withService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account` field.


### fn withThreadsafe

```ts
withThreadsafe()
```

`google.bool.withThreadsafe` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the threadsafe field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `threadsafe` field.


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


### fn withVersionId

```ts
withVersionId()
```

`google.string.withVersionId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version_id` field.


### fn withVpcAccessConnector

```ts
withVpcAccessConnector()
```

`google.list[obj].withVpcAccessConnector` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vpc_access_connector field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVpcAccessConnectorMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vpc_access_connector` field.


### fn withVpcAccessConnectorMixin

```ts
withVpcAccessConnectorMixin()
```

`google.list[obj].withVpcAccessConnectorMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vpc_access_connector field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVpcAccessConnector](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vpc_access_connector` field.


## obj automatic_scaling



### fn automatic_scaling.new

```ts
new()
```


`google.app_engine_standard_app_version.automatic_scaling.new` constructs a new object with attributes and blocks configured for the `automatic_scaling`
Terraform sub block.



**Args**:
  - `max_concurrent_requests` (`number`): Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.

Defaults to a runtime-specific value. When `null`, the `max_concurrent_requests` field will be omitted from the resulting object.
  - `max_idle_instances` (`number`): Maximum number of idle instances that should be maintained for this version. When `null`, the `max_idle_instances` field will be omitted from the resulting object.
  - `max_pending_latency` (`string`): Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `max_pending_latency` field will be omitted from the resulting object.
  - `min_idle_instances` (`number`): Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service. When `null`, the `min_idle_instances` field will be omitted from the resulting object.
  - `min_pending_latency` (`string`): Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `min_pending_latency` field will be omitted from the resulting object.
  - `standard_scheduler_settings` (`list[obj]`): Scheduler settings for standard environment. When `null`, the `standard_scheduler_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.automatic_scaling.standard_scheduler_settings.new](#fn-automatic_scalingstandard_scheduler_settingsnew) constructor.

**Returns**:
  - An attribute object that represents the `automatic_scaling` sub block.


## obj automatic_scaling.standard_scheduler_settings



### fn automatic_scaling.standard_scheduler_settings.new

```ts
new()
```


`google.app_engine_standard_app_version.automatic_scaling.standard_scheduler_settings.new` constructs a new object with attributes and blocks configured for the `standard_scheduler_settings`
Terraform sub block.



**Args**:
  - `max_instances` (`number`): Maximum number of instances to run for this version. Set to zero to disable maxInstances configuration. When `null`, the `max_instances` field will be omitted from the resulting object.
  - `min_instances` (`number`): Minimum number of instances to run for this version. Set to zero to disable minInstances configuration. When `null`, the `min_instances` field will be omitted from the resulting object.
  - `target_cpu_utilization` (`number`): Target CPU utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value. When `null`, the `target_cpu_utilization` field will be omitted from the resulting object.
  - `target_throughput_utilization` (`number`): Target throughput utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value. When `null`, the `target_throughput_utilization` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `standard_scheduler_settings` sub block.


## obj basic_scaling



### fn basic_scaling.new

```ts
new()
```


`google.app_engine_standard_app_version.basic_scaling.new` constructs a new object with attributes and blocks configured for the `basic_scaling`
Terraform sub block.



**Args**:
  - `idle_timeout` (`string`): Duration of time after the last request that an instance must wait before the instance is shut down.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. Defaults to 900s. When `null`, the `idle_timeout` field will be omitted from the resulting object.
  - `max_instances` (`number`): Maximum number of instances to create for this version. Must be in the range [1.0, 200.0].

**Returns**:
  - An attribute object that represents the `basic_scaling` sub block.


## obj deployment



### fn deployment.new

```ts
new()
```


`google.app_engine_standard_app_version.deployment.new` constructs a new object with attributes and blocks configured for the `deployment`
Terraform sub block.



**Args**:
  - `files` (`list[obj]`): Manifest of the files stored in Google Cloud Storage that are included as part of this version.
All files must be readable using the credentials supplied with this call. When `null`, the `files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.deployment.files.new](#fn-deploymentfilesnew) constructor.
  - `zip` (`list[obj]`): Zip File When `null`, the `zip` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.deployment.zip.new](#fn-deploymentzipnew) constructor.

**Returns**:
  - An attribute object that represents the `deployment` sub block.


## obj deployment.files



### fn deployment.files.new

```ts
new()
```


`google.app_engine_standard_app_version.deployment.files.new` constructs a new object with attributes and blocks configured for the `files`
Terraform sub block.



**Args**:
  - `name` (`string`): Set the `name` field on the resulting object.
  - `sha1_sum` (`string`): SHA1 checksum of the file When `null`, the `sha1_sum` field will be omitted from the resulting object.
  - `source_url` (`string`): Source URL

**Returns**:
  - An attribute object that represents the `files` sub block.


## obj deployment.zip



### fn deployment.zip.new

```ts
new()
```


`google.app_engine_standard_app_version.deployment.zip.new` constructs a new object with attributes and blocks configured for the `zip`
Terraform sub block.



**Args**:
  - `files_count` (`number`): files count When `null`, the `files_count` field will be omitted from the resulting object.
  - `source_url` (`string`): Source URL

**Returns**:
  - An attribute object that represents the `zip` sub block.


## obj entrypoint



### fn entrypoint.new

```ts
new()
```


`google.app_engine_standard_app_version.entrypoint.new` constructs a new object with attributes and blocks configured for the `entrypoint`
Terraform sub block.



**Args**:
  - `shell` (`string`): The format should be a shell command that can be fed to bash -c.

**Returns**:
  - An attribute object that represents the `entrypoint` sub block.


## obj handlers



### fn handlers.new

```ts
new()
```


`google.app_engine_standard_app_version.handlers.new` constructs a new object with attributes and blocks configured for the `handlers`
Terraform sub block.



**Args**:
  - `auth_fail_action` (`string`): Actions to take when the user is not logged in. Possible values: [&#34;AUTH_FAIL_ACTION_REDIRECT&#34;, &#34;AUTH_FAIL_ACTION_UNAUTHORIZED&#34;] When `null`, the `auth_fail_action` field will be omitted from the resulting object.
  - `login` (`string`): Methods to restrict access to a URL based on login status. Possible values: [&#34;LOGIN_OPTIONAL&#34;, &#34;LOGIN_ADMIN&#34;, &#34;LOGIN_REQUIRED&#34;] When `null`, the `login` field will be omitted from the resulting object.
  - `redirect_http_response_code` (`string`): 30x code to use when performing redirects for the secure field. Possible values: [&#34;REDIRECT_HTTP_RESPONSE_CODE_301&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_302&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_303&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_307&#34;] When `null`, the `redirect_http_response_code` field will be omitted from the resulting object.
  - `security_level` (`string`): Security (HTTPS) enforcement for this URL. Possible values: [&#34;SECURE_DEFAULT&#34;, &#34;SECURE_NEVER&#34;, &#34;SECURE_OPTIONAL&#34;, &#34;SECURE_ALWAYS&#34;] When `null`, the `security_level` field will be omitted from the resulting object.
  - `url_regex` (`string`): URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path. When `null`, the `url_regex` field will be omitted from the resulting object.
  - `script` (`list[obj]`): Executes a script to handle the requests that match this URL pattern.
Only the auto value is supported for Node.js in the App Engine standard environment, for example &#34;script:&#34; &#34;auto&#34;. When `null`, the `script` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.handlers.script.new](#fn-handlersscriptnew) constructor.
  - `static_files` (`list[obj]`): Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them. When `null`, the `static_files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_standard_app_version.handlers.static_files.new](#fn-handlersstatic_filesnew) constructor.

**Returns**:
  - An attribute object that represents the `handlers` sub block.


## obj handlers.script



### fn handlers.script.new

```ts
new()
```


`google.app_engine_standard_app_version.handlers.script.new` constructs a new object with attributes and blocks configured for the `script`
Terraform sub block.



**Args**:
  - `script_path` (`string`): Path to the script from the application root directory.

**Returns**:
  - An attribute object that represents the `script` sub block.


## obj handlers.static_files



### fn handlers.static_files.new

```ts
new()
```


`google.app_engine_standard_app_version.handlers.static_files.new` constructs a new object with attributes and blocks configured for the `static_files`
Terraform sub block.



**Args**:
  - `application_readable` (`bool`): Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as
static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged
against both your code and static data storage resource quotas. When `null`, the `application_readable` field will be omitted from the resulting object.
  - `expiration` (`string`): Time a static file served by this handler should be cached by web proxies and browsers.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example &#34;3.5s&#34;. When `null`, the `expiration` field will be omitted from the resulting object.
  - `http_headers` (`obj`): HTTP headers to use for all responses from these URLs.
An object containing a list of &#34;key:value&#34; value pairs.&#34;. When `null`, the `http_headers` field will be omitted from the resulting object.
  - `mime_type` (`string`): MIME type used to serve all files served by this handler.
Defaults to file-specific MIME types, which are derived from each file&#39;s filename extension. When `null`, the `mime_type` field will be omitted from the resulting object.
  - `path` (`string`): Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern. When `null`, the `path` field will be omitted from the resulting object.
  - `require_matching_file` (`bool`): Whether this handler should match the request if the file referenced by the handler does not exist. When `null`, the `require_matching_file` field will be omitted from the resulting object.
  - `upload_path_regex` (`string`): Regular expression that matches the file paths for all files that should be referenced by this handler. When `null`, the `upload_path_regex` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `static_files` sub block.


## obj libraries



### fn libraries.new

```ts
new()
```


`google.app_engine_standard_app_version.libraries.new` constructs a new object with attributes and blocks configured for the `libraries`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the library. Example &#34;django&#34;. When `null`, the `name` field will be omitted from the resulting object.
  - `version` (`string`): Version of the library to select, or &#34;latest&#34;. When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `libraries` sub block.


## obj manual_scaling



### fn manual_scaling.new

```ts
new()
```


`google.app_engine_standard_app_version.manual_scaling.new` constructs a new object with attributes and blocks configured for the `manual_scaling`
Terraform sub block.



**Args**:
  - `instances` (`number`): Number of instances to assign to the service at the start.

**Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
Modules API set_num_instances() you must use &#39;lifecycle.ignore_changes = [&#34;manual_scaling&#34;[0].instances]&#39; to prevent drift detection.

**Returns**:
  - An attribute object that represents the `manual_scaling` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.app_engine_standard_app_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vpc_access_connector



### fn vpc_access_connector.new

```ts
new()
```


`google.app_engine_standard_app_version.vpc_access_connector.new` constructs a new object with attributes and blocks configured for the `vpc_access_connector`
Terraform sub block.



**Args**:
  - `egress_setting` (`string`): The egress setting for the connector, controlling what traffic is diverted through it. When `null`, the `egress_setting` field will be omitted from the resulting object.
  - `name` (`string`): Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.

**Returns**:
  - An attribute object that represents the `vpc_access_connector` sub block.
