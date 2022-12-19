---
permalink: /app_engine_flexible_app_version/
---

# app_engine_flexible_app_version

`app_engine_flexible_app_version` represents the `google_app_engine_flexible_app_version` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApiConfig()`](#fn-withapiconfig)
* [`fn withApiConfigMixin()`](#fn-withapiconfigmixin)
* [`fn withAutomaticScaling()`](#fn-withautomaticscaling)
* [`fn withAutomaticScalingMixin()`](#fn-withautomaticscalingmixin)
* [`fn withBetaSettings()`](#fn-withbetasettings)
* [`fn withDefaultExpiration()`](#fn-withdefaultexpiration)
* [`fn withDeleteServiceOnDestroy()`](#fn-withdeleteserviceondestroy)
* [`fn withDeployment()`](#fn-withdeployment)
* [`fn withDeploymentMixin()`](#fn-withdeploymentmixin)
* [`fn withEndpointsApiService()`](#fn-withendpointsapiservice)
* [`fn withEndpointsApiServiceMixin()`](#fn-withendpointsapiservicemixin)
* [`fn withEntrypoint()`](#fn-withentrypoint)
* [`fn withEntrypointMixin()`](#fn-withentrypointmixin)
* [`fn withEnvVariables()`](#fn-withenvvariables)
* [`fn withHandlers()`](#fn-withhandlers)
* [`fn withHandlersMixin()`](#fn-withhandlersmixin)
* [`fn withInboundServices()`](#fn-withinboundservices)
* [`fn withInstanceClass()`](#fn-withinstanceclass)
* [`fn withLivenessCheck()`](#fn-withlivenesscheck)
* [`fn withLivenessCheckMixin()`](#fn-withlivenesscheckmixin)
* [`fn withManualScaling()`](#fn-withmanualscaling)
* [`fn withManualScalingMixin()`](#fn-withmanualscalingmixin)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkMixin()`](#fn-withnetworkmixin)
* [`fn withNobuildFilesRegex()`](#fn-withnobuildfilesregex)
* [`fn withNoopOnDestroy()`](#fn-withnoopondestroy)
* [`fn withProject()`](#fn-withproject)
* [`fn withReadinessCheck()`](#fn-withreadinesscheck)
* [`fn withReadinessCheckMixin()`](#fn-withreadinesscheckmixin)
* [`fn withResources()`](#fn-withresources)
* [`fn withResourcesMixin()`](#fn-withresourcesmixin)
* [`fn withRuntime()`](#fn-withruntime)
* [`fn withRuntimeApiVersion()`](#fn-withruntimeapiversion)
* [`fn withRuntimeChannel()`](#fn-withruntimechannel)
* [`fn withRuntimeMainExecutablePath()`](#fn-withruntimemainexecutablepath)
* [`fn withService()`](#fn-withservice)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withServingStatus()`](#fn-withservingstatus)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersionId()`](#fn-withversionid)
* [`fn withVpcAccessConnector()`](#fn-withvpcaccessconnector)
* [`fn withVpcAccessConnectorMixin()`](#fn-withvpcaccessconnectormixin)
* [`obj api_config`](#obj-api_config)
  * [`fn new()`](#fn-api_confignew)
* [`obj automatic_scaling`](#obj-automatic_scaling)
  * [`fn new()`](#fn-automatic_scalingnew)
  * [`obj automatic_scaling.cpu_utilization`](#obj-automatic_scalingcpu_utilization)
    * [`fn new()`](#fn-automatic_scalingcpu_utilizationnew)
  * [`obj automatic_scaling.disk_utilization`](#obj-automatic_scalingdisk_utilization)
    * [`fn new()`](#fn-automatic_scalingdisk_utilizationnew)
  * [`obj automatic_scaling.network_utilization`](#obj-automatic_scalingnetwork_utilization)
    * [`fn new()`](#fn-automatic_scalingnetwork_utilizationnew)
  * [`obj automatic_scaling.request_utilization`](#obj-automatic_scalingrequest_utilization)
    * [`fn new()`](#fn-automatic_scalingrequest_utilizationnew)
* [`obj deployment`](#obj-deployment)
  * [`fn new()`](#fn-deploymentnew)
  * [`obj deployment.cloud_build_options`](#obj-deploymentcloud_build_options)
    * [`fn new()`](#fn-deploymentcloud_build_optionsnew)
  * [`obj deployment.container`](#obj-deploymentcontainer)
    * [`fn new()`](#fn-deploymentcontainernew)
  * [`obj deployment.files`](#obj-deploymentfiles)
    * [`fn new()`](#fn-deploymentfilesnew)
  * [`obj deployment.zip`](#obj-deploymentzip)
    * [`fn new()`](#fn-deploymentzipnew)
* [`obj endpoints_api_service`](#obj-endpoints_api_service)
  * [`fn new()`](#fn-endpoints_api_servicenew)
* [`obj entrypoint`](#obj-entrypoint)
  * [`fn new()`](#fn-entrypointnew)
* [`obj handlers`](#obj-handlers)
  * [`fn new()`](#fn-handlersnew)
  * [`obj handlers.script`](#obj-handlersscript)
    * [`fn new()`](#fn-handlersscriptnew)
  * [`obj handlers.static_files`](#obj-handlersstatic_files)
    * [`fn new()`](#fn-handlersstatic_filesnew)
* [`obj liveness_check`](#obj-liveness_check)
  * [`fn new()`](#fn-liveness_checknew)
* [`obj manual_scaling`](#obj-manual_scaling)
  * [`fn new()`](#fn-manual_scalingnew)
* [`obj network`](#obj-network)
  * [`fn new()`](#fn-networknew)
* [`obj readiness_check`](#obj-readiness_check)
  * [`fn new()`](#fn-readiness_checknew)
* [`obj resources`](#obj-resources)
  * [`fn new()`](#fn-resourcesnew)
  * [`obj resources.volumes`](#obj-resourcesvolumes)
    * [`fn new()`](#fn-resourcesvolumesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vpc_access_connector`](#obj-vpc_access_connector)
  * [`fn new()`](#fn-vpc_access_connectornew)

## Fields

### fn new

```ts
new()
```


`google.app_engine_flexible_app_version.new` injects a new `google_app_engine_flexible_app_version` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.app_engine_flexible_app_version.new('some_id')

You can get the reference to the `id` field of the created `google.app_engine_flexible_app_version` using the reference:

    $._ref.google_app_engine_flexible_app_version.some_id.get('id')

This is the same as directly entering `"${ google_app_engine_flexible_app_version.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `beta_settings` (`obj`): Metadata settings that are supplied to this version to enable beta runtime features. When `null`, the `beta_settings` field will be omitted from the resulting object.
  - `default_expiration` (`string`): Duration that static files should be cached by web proxies and browsers.
Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time. When `null`, the `default_expiration` field will be omitted from the resulting object.
  - `delete_service_on_destroy` (`bool`): If set to &#39;true&#39;, the service will be deleted if it is the last version. When `null`, the `delete_service_on_destroy` field will be omitted from the resulting object.
  - `env_variables` (`obj`): Environment variables available to the application.  As these are not returned in the API request, Terraform will not detect any changes made outside of the Terraform config. When `null`, the `env_variables` field will be omitted from the resulting object.
  - `inbound_services` (`list`): A list of the types of messages that this application is able to receive. Possible values: [&#34;INBOUND_SERVICE_MAIL&#34;, &#34;INBOUND_SERVICE_MAIL_BOUNCE&#34;, &#34;INBOUND_SERVICE_XMPP_ERROR&#34;, &#34;INBOUND_SERVICE_XMPP_MESSAGE&#34;, &#34;INBOUND_SERVICE_XMPP_SUBSCRIBE&#34;, &#34;INBOUND_SERVICE_XMPP_PRESENCE&#34;, &#34;INBOUND_SERVICE_CHANNEL_PRESENCE&#34;, &#34;INBOUND_SERVICE_WARMUP&#34;] When `null`, the `inbound_services` field will be omitted from the resulting object.
  - `instance_class` (`string`): Instance class that is used to run this version. Valid values are
AutomaticScaling: F1, F2, F4, F4_1G
ManualScaling: B1, B2, B4, B8, B4_1G
Defaults to F1 for AutomaticScaling and B1 for ManualScaling. When `null`, the `instance_class` field will be omitted from the resulting object.
  - `nobuild_files_regex` (`string`): Files that match this pattern will not be built into this version. Only applicable for Go runtimes. When `null`, the `nobuild_files_regex` field will be omitted from the resulting object.
  - `noop_on_destroy` (`bool`): If set to &#39;true&#39;, the application version will not be deleted. When `null`, the `noop_on_destroy` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `runtime` (`string`): Desired runtime. Example python27.
  - `runtime_api_version` (`string`): The version of the API in the given runtime environment.
Please see the app.yaml reference for valid values at &#39;https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref&#39;\
Substitute &#39;&lt;language&gt;&#39; with &#39;python&#39;, &#39;java&#39;, &#39;php&#39;, &#39;ruby&#39;, &#39;go&#39; or &#39;nodejs&#39;. When `null`, the `runtime_api_version` field will be omitted from the resulting object.
  - `runtime_channel` (`string`): The channel of the runtime to use. Only available for some runtimes. When `null`, the `runtime_channel` field will be omitted from the resulting object.
  - `runtime_main_executable_path` (`string`): The path or name of the app&#39;s main executable. When `null`, the `runtime_main_executable_path` field will be omitted from the resulting object.
  - `service` (`string`): AppEngine service resource. Can contain numbers, letters, and hyphens.
  - `service_account` (`string`): The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
default if this field is neither provided in app.yaml file nor through CLI flag. When `null`, the `service_account` field will be omitted from the resulting object.
  - `serving_status` (`string`): Current serving status of this version. Only the versions with a SERVING status create instances and can be billed. Default value: &#34;SERVING&#34; Possible values: [&#34;SERVING&#34;, &#34;STOPPED&#34;] When `null`, the `serving_status` field will be omitted from the resulting object.
  - `version_id` (`string`): Relative name of the version within the service. For example, &#39;v1&#39;. Version names can contain only lowercase letters, numbers, or hyphens.
Reserved names,&#34;default&#34;, &#34;latest&#34;, and any name with the prefix &#34;ah-&#34;. When `null`, the `version_id` field will be omitted from the resulting object.
  - `api_config` (`list[obj]`): Serving configuration for Google Cloud Endpoints. When `null`, the `api_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.api_config.new](#fn-appengineflexibleappversionapiconfignew) constructor.
  - `automatic_scaling` (`list[obj]`): Automatic scaling is based on request rate, response latencies, and other application metrics. When `null`, the `automatic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.new](#fn-appengineflexibleappversionautomaticscalingnew) constructor.
  - `deployment` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.new](#fn-appengineflexibleappversiondeploymentnew) constructor.
  - `endpoints_api_service` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `endpoints_api_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.endpoints_api_service.new](#fn-appengineflexibleappversionendpointsapiservicenew) constructor.
  - `entrypoint` (`list[obj]`): The entrypoint for the application. When `null`, the `entrypoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.entrypoint.new](#fn-appengineflexibleappversionentrypointnew) constructor.
  - `handlers` (`list[obj]`): An ordered list of URL-matching patterns that should be applied to incoming requests.
The first matching URL handles the request and other request handlers are not attempted. When `null`, the `handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.handlers.new](#fn-appengineflexibleappversionhandlersnew) constructor.
  - `liveness_check` (`list[obj]`): Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. When `null`, the `liveness_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.liveness_check.new](#fn-appengineflexibleappversionlivenesschecknew) constructor.
  - `manual_scaling` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `manual_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.manual_scaling.new](#fn-appengineflexibleappversionmanualscalingnew) constructor.
  - `network` (`list[obj]`): Extra network settings When `null`, the `network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.network.new](#fn-appengineflexibleappversionnetworknew) constructor.
  - `readiness_check` (`list[obj]`): Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation. When `null`, the `readiness_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.readiness_check.new](#fn-appengineflexibleappversionreadinesschecknew) constructor.
  - `resources` (`list[obj]`): Machine resources for a version. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.resources.new](#fn-appengineflexibleappversionresourcesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.timeouts.new](#fn-appengineflexibleappversiontimeoutsnew) constructor.
  - `vpc_access_connector` (`list[obj]`): Enables VPC connectivity for standard apps. When `null`, the `vpc_access_connector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.vpc_access_connector.new](#fn-appengineflexibleappversionvpcaccessconnectornew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.app_engine_flexible_app_version.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_flexible_app_version`
Terraform resource.

Unlike [google.app_engine_flexible_app_version.new](#fn-appengineflexibleappversionnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `beta_settings` (`obj`): Metadata settings that are supplied to this version to enable beta runtime features. When `null`, the `beta_settings` field will be omitted from the resulting object.
  - `default_expiration` (`string`): Duration that static files should be cached by web proxies and browsers.
Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time. When `null`, the `default_expiration` field will be omitted from the resulting object.
  - `delete_service_on_destroy` (`bool`): If set to &#39;true&#39;, the service will be deleted if it is the last version. When `null`, the `delete_service_on_destroy` field will be omitted from the resulting object.
  - `env_variables` (`obj`): Environment variables available to the application.  As these are not returned in the API request, Terraform will not detect any changes made outside of the Terraform config. When `null`, the `env_variables` field will be omitted from the resulting object.
  - `inbound_services` (`list`): A list of the types of messages that this application is able to receive. Possible values: [&#34;INBOUND_SERVICE_MAIL&#34;, &#34;INBOUND_SERVICE_MAIL_BOUNCE&#34;, &#34;INBOUND_SERVICE_XMPP_ERROR&#34;, &#34;INBOUND_SERVICE_XMPP_MESSAGE&#34;, &#34;INBOUND_SERVICE_XMPP_SUBSCRIBE&#34;, &#34;INBOUND_SERVICE_XMPP_PRESENCE&#34;, &#34;INBOUND_SERVICE_CHANNEL_PRESENCE&#34;, &#34;INBOUND_SERVICE_WARMUP&#34;] When `null`, the `inbound_services` field will be omitted from the resulting object.
  - `instance_class` (`string`): Instance class that is used to run this version. Valid values are
AutomaticScaling: F1, F2, F4, F4_1G
ManualScaling: B1, B2, B4, B8, B4_1G
Defaults to F1 for AutomaticScaling and B1 for ManualScaling. When `null`, the `instance_class` field will be omitted from the resulting object.
  - `nobuild_files_regex` (`string`): Files that match this pattern will not be built into this version. Only applicable for Go runtimes. When `null`, the `nobuild_files_regex` field will be omitted from the resulting object.
  - `noop_on_destroy` (`bool`): If set to &#39;true&#39;, the application version will not be deleted. When `null`, the `noop_on_destroy` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `runtime` (`string`): Desired runtime. Example python27.
  - `runtime_api_version` (`string`): The version of the API in the given runtime environment.
Please see the app.yaml reference for valid values at &#39;https://cloud.google.com/appengine/docs/standard/&lt;language&gt;/config/appref&#39;\
Substitute &#39;&lt;language&gt;&#39; with &#39;python&#39;, &#39;java&#39;, &#39;php&#39;, &#39;ruby&#39;, &#39;go&#39; or &#39;nodejs&#39;. When `null`, the `runtime_api_version` field will be omitted from the resulting object.
  - `runtime_channel` (`string`): The channel of the runtime to use. Only available for some runtimes. When `null`, the `runtime_channel` field will be omitted from the resulting object.
  - `runtime_main_executable_path` (`string`): The path or name of the app&#39;s main executable. When `null`, the `runtime_main_executable_path` field will be omitted from the resulting object.
  - `service` (`string`): AppEngine service resource. Can contain numbers, letters, and hyphens.
  - `service_account` (`string`): The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
default if this field is neither provided in app.yaml file nor through CLI flag. When `null`, the `service_account` field will be omitted from the resulting object.
  - `serving_status` (`string`): Current serving status of this version. Only the versions with a SERVING status create instances and can be billed. Default value: &#34;SERVING&#34; Possible values: [&#34;SERVING&#34;, &#34;STOPPED&#34;] When `null`, the `serving_status` field will be omitted from the resulting object.
  - `version_id` (`string`): Relative name of the version within the service. For example, &#39;v1&#39;. Version names can contain only lowercase letters, numbers, or hyphens.
Reserved names,&#34;default&#34;, &#34;latest&#34;, and any name with the prefix &#34;ah-&#34;. When `null`, the `version_id` field will be omitted from the resulting object.
  - `api_config` (`list[obj]`): Serving configuration for Google Cloud Endpoints. When `null`, the `api_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.api_config.new](#fn-appengineflexibleappversionapiconfignew) constructor.
  - `automatic_scaling` (`list[obj]`): Automatic scaling is based on request rate, response latencies, and other application metrics. When `null`, the `automatic_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.new](#fn-appengineflexibleappversionautomaticscalingnew) constructor.
  - `deployment` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `deployment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.new](#fn-appengineflexibleappversiondeploymentnew) constructor.
  - `endpoints_api_service` (`list[obj]`): Code and application artifacts that make up this version. When `null`, the `endpoints_api_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.endpoints_api_service.new](#fn-appengineflexibleappversionendpointsapiservicenew) constructor.
  - `entrypoint` (`list[obj]`): The entrypoint for the application. When `null`, the `entrypoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.entrypoint.new](#fn-appengineflexibleappversionentrypointnew) constructor.
  - `handlers` (`list[obj]`): An ordered list of URL-matching patterns that should be applied to incoming requests.
The first matching URL handles the request and other request handlers are not attempted. When `null`, the `handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.handlers.new](#fn-appengineflexibleappversionhandlersnew) constructor.
  - `liveness_check` (`list[obj]`): Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. When `null`, the `liveness_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.liveness_check.new](#fn-appengineflexibleappversionlivenesschecknew) constructor.
  - `manual_scaling` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `manual_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.manual_scaling.new](#fn-appengineflexibleappversionmanualscalingnew) constructor.
  - `network` (`list[obj]`): Extra network settings When `null`, the `network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.network.new](#fn-appengineflexibleappversionnetworknew) constructor.
  - `readiness_check` (`list[obj]`): Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation. When `null`, the `readiness_check` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.readiness_check.new](#fn-appengineflexibleappversionreadinesschecknew) constructor.
  - `resources` (`list[obj]`): Machine resources for a version. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.resources.new](#fn-appengineflexibleappversionresourcesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.timeouts.new](#fn-appengineflexibleappversiontimeoutsnew) constructor.
  - `vpc_access_connector` (`list[obj]`): Enables VPC connectivity for standard apps. When `null`, the `vpc_access_connector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.vpc_access_connector.new](#fn-appengineflexibleappversionvpcaccessconnectornew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_flexible_app_version` resource into the root Terraform configuration.


### fn withApiConfig

```ts
withApiConfig()
```

`google.app_engine_flexible_app_version.withApiConfig` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the api_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `api_config` field.


### fn withApiConfigMixin

```ts
withApiConfigMixin()
```

`google.app_engine_flexible_app_version.withApiConfigMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the api_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withApiConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `api_config` field.


### fn withAutomaticScaling

```ts
withAutomaticScaling()
```

`google.app_engine_flexible_app_version.withAutomaticScaling` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the automatic_scaling field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `automatic_scaling` field.


### fn withAutomaticScalingMixin

```ts
withAutomaticScalingMixin()
```

`google.app_engine_flexible_app_version.withAutomaticScalingMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the automatic_scaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withAutomaticScaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `automatic_scaling` field.


### fn withBetaSettings

```ts
withBetaSettings()
```

`google.app_engine_flexible_app_version.withBetaSettings` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the beta_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `beta_settings` field.


### fn withDefaultExpiration

```ts
withDefaultExpiration()
```

`google.app_engine_flexible_app_version.withDefaultExpiration` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the default_expiration field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `default_expiration` field.


### fn withDeleteServiceOnDestroy

```ts
withDeleteServiceOnDestroy()
```

`google.app_engine_flexible_app_version.withDeleteServiceOnDestroy` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the delete_service_on_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `delete_service_on_destroy` field.


### fn withDeployment

```ts
withDeployment()
```

`google.app_engine_flexible_app_version.withDeployment` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the deployment field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `deployment` field.


### fn withDeploymentMixin

```ts
withDeploymentMixin()
```

`google.app_engine_flexible_app_version.withDeploymentMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the deployment field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withDeployment](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `deployment` field.


### fn withEndpointsApiService

```ts
withEndpointsApiService()
```

`google.app_engine_flexible_app_version.withEndpointsApiService` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the endpoints_api_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `endpoints_api_service` field.


### fn withEndpointsApiServiceMixin

```ts
withEndpointsApiServiceMixin()
```

`google.app_engine_flexible_app_version.withEndpointsApiServiceMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the endpoints_api_service field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withEndpointsApiService](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `endpoints_api_service` field.


### fn withEntrypoint

```ts
withEntrypoint()
```

`google.app_engine_flexible_app_version.withEntrypoint` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the entrypoint field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `entrypoint` field.


### fn withEntrypointMixin

```ts
withEntrypointMixin()
```

`google.app_engine_flexible_app_version.withEntrypointMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the entrypoint field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withEntrypoint](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `entrypoint` field.


### fn withEnvVariables

```ts
withEnvVariables()
```

`google.app_engine_flexible_app_version.withEnvVariables` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the env_variables field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `env_variables` field.


### fn withHandlers

```ts
withHandlers()
```

`google.app_engine_flexible_app_version.withHandlers` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the handlers field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `handlers` field.


### fn withHandlersMixin

```ts
withHandlersMixin()
```

`google.app_engine_flexible_app_version.withHandlersMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the handlers field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withHandlers](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `handlers` field.


### fn withInboundServices

```ts
withInboundServices()
```

`google.app_engine_flexible_app_version.withInboundServices` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the inbound_services field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `inbound_services` field.


### fn withInstanceClass

```ts
withInstanceClass()
```

`google.app_engine_flexible_app_version.withInstanceClass` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the instance_class field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `instance_class` field.


### fn withLivenessCheck

```ts
withLivenessCheck()
```

`google.app_engine_flexible_app_version.withLivenessCheck` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the liveness_check field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `liveness_check` field.


### fn withLivenessCheckMixin

```ts
withLivenessCheckMixin()
```

`google.app_engine_flexible_app_version.withLivenessCheckMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the liveness_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withLivenessCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `liveness_check` field.


### fn withManualScaling

```ts
withManualScaling()
```

`google.app_engine_flexible_app_version.withManualScaling` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the manual_scaling field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `manual_scaling` field.


### fn withManualScalingMixin

```ts
withManualScalingMixin()
```

`google.app_engine_flexible_app_version.withManualScalingMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the manual_scaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withManualScaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `manual_scaling` field.


### fn withNetwork

```ts
withNetwork()
```

`google.app_engine_flexible_app_version.withNetwork` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withNetworkMixin

```ts
withNetworkMixin()
```

`google.app_engine_flexible_app_version.withNetworkMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the network field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withNetwork](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withNobuildFilesRegex

```ts
withNobuildFilesRegex()
```

`google.app_engine_flexible_app_version.withNobuildFilesRegex` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the nobuild_files_regex field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `nobuild_files_regex` field.


### fn withNoopOnDestroy

```ts
withNoopOnDestroy()
```

`google.app_engine_flexible_app_version.withNoopOnDestroy` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the noop_on_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `noop_on_destroy` field.


### fn withProject

```ts
withProject()
```

`google.app_engine_flexible_app_version.withProject` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withReadinessCheck

```ts
withReadinessCheck()
```

`google.app_engine_flexible_app_version.withReadinessCheck` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the readiness_check field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `readiness_check` field.


### fn withReadinessCheckMixin

```ts
withReadinessCheckMixin()
```

`google.app_engine_flexible_app_version.withReadinessCheckMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the readiness_check field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withReadinessCheck](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `readiness_check` field.


### fn withResources

```ts
withResources()
```

`google.app_engine_flexible_app_version.withResources` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the resources field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `resources` field.


### fn withResourcesMixin

```ts
withResourcesMixin()
```

`google.app_engine_flexible_app_version.withResourcesMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the resources field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withResources](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `resources` field.


### fn withRuntime

```ts
withRuntime()
```

`google.app_engine_flexible_app_version.withRuntime` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the runtime field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `runtime` field.


### fn withRuntimeApiVersion

```ts
withRuntimeApiVersion()
```

`google.app_engine_flexible_app_version.withRuntimeApiVersion` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the runtime_api_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `runtime_api_version` field.


### fn withRuntimeChannel

```ts
withRuntimeChannel()
```

`google.app_engine_flexible_app_version.withRuntimeChannel` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the runtime_channel field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `runtime_channel` field.


### fn withRuntimeMainExecutablePath

```ts
withRuntimeMainExecutablePath()
```

`google.app_engine_flexible_app_version.withRuntimeMainExecutablePath` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the runtime_main_executable_path field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `runtime_main_executable_path` field.


### fn withService

```ts
withService()
```

`google.app_engine_flexible_app_version.withService` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `service` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.app_engine_flexible_app_version.withServiceAccount` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `service_account` field.


### fn withServingStatus

```ts
withServingStatus()
```

`google.app_engine_flexible_app_version.withServingStatus` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the serving_status field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `serving_status` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.app_engine_flexible_app_version.withTimeouts` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.app_engine_flexible_app_version.withTimeoutsMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.app_engine_flexible_app_version.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withVersionId

```ts
withVersionId()
```

`google.app_engine_flexible_app_version.withVersionId` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the version_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `version_id` field.


### fn withVpcAccessConnector

```ts
withVpcAccessConnector()
```

`google.app_engine_flexible_app_version.withVpcAccessConnector` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the vpc_access_connector field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `vpc_access_connector` field.


### fn withVpcAccessConnectorMixin

```ts
withVpcAccessConnectorMixin()
```

`google.app_engine_flexible_app_version.withVpcAccessConnectorMixin` constructs a mixin object that can be merged into the `app_engine_flexible_app_version`
Terraform resource block to set or update the vpc_access_connector field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.app_engine_flexible_app_version.withVpcAccessConnector](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `vpc_access_connector` field.


## obj api_config



### fn api_config.new

```ts
new()
```


`google.app_engine_flexible_app_version.api_config.new` constructs a new object with attributes and blocks configured for the `api_config`
Terraform sub block.



**Args**:
  - `auth_fail_action` (`string`): Action to take when users access resources that require authentication. Default value: &#34;AUTH_FAIL_ACTION_REDIRECT&#34; Possible values: [&#34;AUTH_FAIL_ACTION_REDIRECT&#34;, &#34;AUTH_FAIL_ACTION_UNAUTHORIZED&#34;] When `null`, the `auth_fail_action` field will be omitted from the resulting object.
  - `login` (`string`): Level of login required to access this resource. Default value: &#34;LOGIN_OPTIONAL&#34; Possible values: [&#34;LOGIN_OPTIONAL&#34;, &#34;LOGIN_ADMIN&#34;, &#34;LOGIN_REQUIRED&#34;] When `null`, the `login` field will be omitted from the resulting object.
  - `script` (`string`): Path to the script from the application root directory.
  - `security_level` (`string`): Security (HTTPS) enforcement for this URL. Possible values: [&#34;SECURE_DEFAULT&#34;, &#34;SECURE_NEVER&#34;, &#34;SECURE_OPTIONAL&#34;, &#34;SECURE_ALWAYS&#34;] When `null`, the `security_level` field will be omitted from the resulting object.
  - `url` (`string`): URL to serve the endpoint at. When `null`, the `url` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `api_config` sub block.


## obj automatic_scaling



### fn automatic_scaling.new

```ts
new()
```


`google.app_engine_flexible_app_version.automatic_scaling.new` constructs a new object with attributes and blocks configured for the `automatic_scaling`
Terraform sub block.



**Args**:
  - `cool_down_period` (`string`): The time period that the Autoscaler should wait before it starts collecting information from a new instance.
This prevents the autoscaler from collecting information when the instance is initializing,
during which the collected usage would not be reliable. Default: 120s When `null`, the `cool_down_period` field will be omitted from the resulting object.
  - `max_concurrent_requests` (`number`): Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.

Defaults to a runtime-specific value. When `null`, the `max_concurrent_requests` field will be omitted from the resulting object.
  - `max_idle_instances` (`number`): Maximum number of idle instances that should be maintained for this version. When `null`, the `max_idle_instances` field will be omitted from the resulting object.
  - `max_pending_latency` (`string`): Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it. When `null`, the `max_pending_latency` field will be omitted from the resulting object.
  - `max_total_instances` (`number`): Maximum number of instances that should be started to handle requests for this version. Default: 20 When `null`, the `max_total_instances` field will be omitted from the resulting object.
  - `min_idle_instances` (`number`): Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service. When `null`, the `min_idle_instances` field will be omitted from the resulting object.
  - `min_pending_latency` (`string`): Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it. When `null`, the `min_pending_latency` field will be omitted from the resulting object.
  - `min_total_instances` (`number`): Minimum number of running instances that should be maintained for this version. Default: 2 When `null`, the `min_total_instances` field will be omitted from the resulting object.
  - `cpu_utilization` (`list[obj]`): Target scaling by CPU usage. When `null`, the `cpu_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.cpu_utilization.new](#fn-automaticscalingcpuutilizationnew) constructor.
  - `disk_utilization` (`list[obj]`): Target scaling by disk usage. When `null`, the `disk_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.disk_utilization.new](#fn-automaticscalingdiskutilizationnew) constructor.
  - `network_utilization` (`list[obj]`): Target scaling by network usage. When `null`, the `network_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.network_utilization.new](#fn-automaticscalingnetworkutilizationnew) constructor.
  - `request_utilization` (`list[obj]`): Target scaling by request utilization. When `null`, the `request_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.automatic_scaling.request_utilization.new](#fn-automaticscalingrequestutilizationnew) constructor.

**Returns**:
  - An attribute object that represents the `automatic_scaling` sub block.


## obj automatic_scaling.cpu_utilization



### fn automatic_scaling.cpu_utilization.new

```ts
new()
```


`google.app_engine_flexible_app_version.automatic_scaling.cpu_utilization.new` constructs a new object with attributes and blocks configured for the `cpu_utilization`
Terraform sub block.



**Args**:
  - `aggregation_window_length` (`string`): Period of time over which CPU utilization is calculated. When `null`, the `aggregation_window_length` field will be omitted from the resulting object.
  - `target_utilization` (`number`): Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.

**Returns**:
  - An attribute object that represents the `cpu_utilization` sub block.


## obj automatic_scaling.disk_utilization



### fn automatic_scaling.disk_utilization.new

```ts
new()
```


`google.app_engine_flexible_app_version.automatic_scaling.disk_utilization.new` constructs a new object with attributes and blocks configured for the `disk_utilization`
Terraform sub block.



**Args**:
  - `target_read_bytes_per_second` (`number`): Target bytes read per second. When `null`, the `target_read_bytes_per_second` field will be omitted from the resulting object.
  - `target_read_ops_per_second` (`number`): Target ops read per seconds. When `null`, the `target_read_ops_per_second` field will be omitted from the resulting object.
  - `target_write_bytes_per_second` (`number`): Target bytes written per second. When `null`, the `target_write_bytes_per_second` field will be omitted from the resulting object.
  - `target_write_ops_per_second` (`number`): Target ops written per second. When `null`, the `target_write_ops_per_second` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disk_utilization` sub block.


## obj automatic_scaling.network_utilization



### fn automatic_scaling.network_utilization.new

```ts
new()
```


`google.app_engine_flexible_app_version.automatic_scaling.network_utilization.new` constructs a new object with attributes and blocks configured for the `network_utilization`
Terraform sub block.



**Args**:
  - `target_received_bytes_per_second` (`number`): Target bytes received per second. When `null`, the `target_received_bytes_per_second` field will be omitted from the resulting object.
  - `target_received_packets_per_second` (`number`): Target packets received per second. When `null`, the `target_received_packets_per_second` field will be omitted from the resulting object.
  - `target_sent_bytes_per_second` (`number`): Target bytes sent per second. When `null`, the `target_sent_bytes_per_second` field will be omitted from the resulting object.
  - `target_sent_packets_per_second` (`number`): Target packets sent per second. When `null`, the `target_sent_packets_per_second` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_utilization` sub block.


## obj automatic_scaling.request_utilization



### fn automatic_scaling.request_utilization.new

```ts
new()
```


`google.app_engine_flexible_app_version.automatic_scaling.request_utilization.new` constructs a new object with attributes and blocks configured for the `request_utilization`
Terraform sub block.



**Args**:
  - `target_concurrent_requests` (`number`): Target number of concurrent requests. When `null`, the `target_concurrent_requests` field will be omitted from the resulting object.
  - `target_request_count_per_second` (`string`): Target requests per second. When `null`, the `target_request_count_per_second` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `request_utilization` sub block.


## obj deployment



### fn deployment.new

```ts
new()
```


`google.app_engine_flexible_app_version.deployment.new` constructs a new object with attributes and blocks configured for the `deployment`
Terraform sub block.



**Args**:
  - `cloud_build_options` (`list[obj]`): Options for the build operations performed as a part of the version deployment. Only applicable when creating a version using source code directly. When `null`, the `cloud_build_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.cloud_build_options.new](#fn-deploymentcloudbuildoptionsnew) constructor.
  - `container` (`list[obj]`): The Docker image for the container that runs the version. When `null`, the `container` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.container.new](#fn-deploymentcontainernew) constructor.
  - `files` (`list[obj]`): Manifest of the files stored in Google Cloud Storage that are included as part of this version.
All files must be readable using the credentials supplied with this call. When `null`, the `files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.files.new](#fn-deploymentfilesnew) constructor.
  - `zip` (`list[obj]`): Zip File When `null`, the `zip` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.deployment.zip.new](#fn-deploymentzipnew) constructor.

**Returns**:
  - An attribute object that represents the `deployment` sub block.


## obj deployment.cloud_build_options



### fn deployment.cloud_build_options.new

```ts
new()
```


`google.app_engine_flexible_app_version.deployment.cloud_build_options.new` constructs a new object with attributes and blocks configured for the `cloud_build_options`
Terraform sub block.



**Args**:
  - `app_yaml_path` (`string`): Path to the yaml file used in deployment, used to determine runtime configuration details.
  - `cloud_build_timeout` (`string`): The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `cloud_build_timeout` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cloud_build_options` sub block.


## obj deployment.container



### fn deployment.container.new

```ts
new()
```


`google.app_engine_flexible_app_version.deployment.container.new` constructs a new object with attributes and blocks configured for the `container`
Terraform sub block.



**Args**:
  - `image` (`string`): URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest.
Examples: &#34;gcr.io/my-project/image:tag&#34; or &#34;gcr.io/my-project/image@digest&#34;

**Returns**:
  - An attribute object that represents the `container` sub block.


## obj deployment.files



### fn deployment.files.new

```ts
new()
```


`google.app_engine_flexible_app_version.deployment.files.new` constructs a new object with attributes and blocks configured for the `files`
Terraform sub block.



**Args**:
  - `name` (`string`): 
  - `sha1_sum` (`string`): SHA1 checksum of the file When `null`, the `sha1_sum` field will be omitted from the resulting object.
  - `source_url` (`string`): Source URL

**Returns**:
  - An attribute object that represents the `files` sub block.


## obj deployment.zip



### fn deployment.zip.new

```ts
new()
```


`google.app_engine_flexible_app_version.deployment.zip.new` constructs a new object with attributes and blocks configured for the `zip`
Terraform sub block.



**Args**:
  - `files_count` (`number`): files count When `null`, the `files_count` field will be omitted from the resulting object.
  - `source_url` (`string`): Source URL

**Returns**:
  - An attribute object that represents the `zip` sub block.


## obj endpoints_api_service



### fn endpoints_api_service.new

```ts
new()
```


`google.app_engine_flexible_app_version.endpoints_api_service.new` constructs a new object with attributes and blocks configured for the `endpoints_api_service`
Terraform sub block.



**Args**:
  - `config_id` (`string`): Endpoints service configuration ID as specified by the Service Management API. For example &#34;2016-09-19r1&#34;.

By default, the rollout strategy for Endpoints is &#34;FIXED&#34;. This means that Endpoints starts up with a particular configuration ID.
When a new configuration is rolled out, Endpoints must be given the new configuration ID. The configId field is used to give the configuration ID
and is required in this case.

Endpoints also has a rollout strategy called &#34;MANAGED&#34;. When using this, Endpoints fetches the latest configuration and does not need
the configuration ID. In this case, configId must be omitted. When `null`, the `config_id` field will be omitted from the resulting object.
  - `disable_trace_sampling` (`bool`): Enable or disable trace sampling. By default, this is set to false for enabled. When `null`, the `disable_trace_sampling` field will be omitted from the resulting object.
  - `name` (`string`): Endpoints service name which is the name of the &#34;service&#34; resource in the Service Management API.
For example &#34;myapi.endpoints.myproject.cloud.goog&#34;
  - `rollout_strategy` (`string`): Endpoints rollout strategy. If FIXED, configId must be specified. If MANAGED, configId must be omitted. Default value: &#34;FIXED&#34; Possible values: [&#34;FIXED&#34;, &#34;MANAGED&#34;] When `null`, the `rollout_strategy` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `endpoints_api_service` sub block.


## obj entrypoint



### fn entrypoint.new

```ts
new()
```


`google.app_engine_flexible_app_version.entrypoint.new` constructs a new object with attributes and blocks configured for the `entrypoint`
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


`google.app_engine_flexible_app_version.handlers.new` constructs a new object with attributes and blocks configured for the `handlers`
Terraform sub block.



**Args**:
  - `auth_fail_action` (`string`): Actions to take when the user is not logged in. Possible values: [&#34;AUTH_FAIL_ACTION_REDIRECT&#34;, &#34;AUTH_FAIL_ACTION_UNAUTHORIZED&#34;] When `null`, the `auth_fail_action` field will be omitted from the resulting object.
  - `login` (`string`): Methods to restrict access to a URL based on login status. Possible values: [&#34;LOGIN_OPTIONAL&#34;, &#34;LOGIN_ADMIN&#34;, &#34;LOGIN_REQUIRED&#34;] When `null`, the `login` field will be omitted from the resulting object.
  - `redirect_http_response_code` (`string`): 30x code to use when performing redirects for the secure field. Possible values: [&#34;REDIRECT_HTTP_RESPONSE_CODE_301&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_302&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_303&#34;, &#34;REDIRECT_HTTP_RESPONSE_CODE_307&#34;] When `null`, the `redirect_http_response_code` field will be omitted from the resulting object.
  - `security_level` (`string`): Security (HTTPS) enforcement for this URL. Possible values: [&#34;SECURE_DEFAULT&#34;, &#34;SECURE_NEVER&#34;, &#34;SECURE_OPTIONAL&#34;, &#34;SECURE_ALWAYS&#34;] When `null`, the `security_level` field will be omitted from the resulting object.
  - `url_regex` (`string`): URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path. When `null`, the `url_regex` field will be omitted from the resulting object.
  - `script` (`list[obj]`): Executes a script to handle the requests that match this URL pattern.
Only the auto value is supported for Node.js in the App Engine standard environment, for example &#34;script:&#34; &#34;auto&#34;. When `null`, the `script` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.handlers.script.new](#fn-handlersscriptnew) constructor.
  - `static_files` (`list[obj]`): Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files.
Static file handlers describe which files in the application directory are static files, and which URLs serve them. When `null`, the `static_files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.handlers.static_files.new](#fn-handlersstaticfilesnew) constructor.

**Returns**:
  - An attribute object that represents the `handlers` sub block.


## obj handlers.script



### fn handlers.script.new

```ts
new()
```


`google.app_engine_flexible_app_version.handlers.script.new` constructs a new object with attributes and blocks configured for the `script`
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


`google.app_engine_flexible_app_version.handlers.static_files.new` constructs a new object with attributes and blocks configured for the `static_files`
Terraform sub block.



**Args**:
  - `application_readable` (`bool`): Whether files should also be uploaded as code data. By default, files declared in static file handlers are
uploaded as static data and are only served to end users; they cannot be read by the application. If enabled,
uploads are charged against both your code and static data storage resource quotas. When `null`, the `application_readable` field will be omitted from the resulting object.
  - `expiration` (`string`): Time a static file served by this handler should be cached by web proxies and browsers.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example &#34;3.5s&#34;.
Default is &#39;0s&#39; When `null`, the `expiration` field will be omitted from the resulting object.
  - `http_headers` (`obj`): HTTP headers to use for all responses from these URLs.
An object containing a list of &#34;key:value&#34; value pairs.&#34;. When `null`, the `http_headers` field will be omitted from the resulting object.
  - `mime_type` (`string`): MIME type used to serve all files served by this handler.
Defaults to file-specific MIME types, which are derived from each file&#39;s filename extension. When `null`, the `mime_type` field will be omitted from the resulting object.
  - `path` (`string`): Path to the static files matched by the URL pattern, from the application root directory.
The path can refer to text matched in groupings in the URL pattern. When `null`, the `path` field will be omitted from the resulting object.
  - `require_matching_file` (`bool`): Whether this handler should match the request if the file referenced by the handler does not exist. When `null`, the `require_matching_file` field will be omitted from the resulting object.
  - `upload_path_regex` (`string`): Regular expression that matches the file paths for all files that should be referenced by this handler. When `null`, the `upload_path_regex` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `static_files` sub block.


## obj liveness_check



### fn liveness_check.new

```ts
new()
```


`google.app_engine_flexible_app_version.liveness_check.new` constructs a new object with attributes and blocks configured for the `liveness_check`
Terraform sub block.



**Args**:
  - `check_interval` (`string`): Interval between health checks. When `null`, the `check_interval` field will be omitted from the resulting object.
  - `failure_threshold` (`number`): Number of consecutive failed checks required before considering the VM unhealthy. Default: 4. When `null`, the `failure_threshold` field will be omitted from the resulting object.
  - `host` (`string`): Host header to send when performing a HTTP Readiness check. Example: &#34;myapp.appspot.com&#34; When `null`, the `host` field will be omitted from the resulting object.
  - `initial_delay` (`string`): The initial delay before starting to execute the checks. Default: &#34;300s&#34; When `null`, the `initial_delay` field will be omitted from the resulting object.
  - `path` (`string`): The request path.
  - `success_threshold` (`number`): Number of consecutive successful checks required before considering the VM healthy. Default: 2. When `null`, the `success_threshold` field will be omitted from the resulting object.
  - `timeout` (`string`): Time before the check is considered failed. Default: &#34;4s&#34; When `null`, the `timeout` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `liveness_check` sub block.


## obj manual_scaling



### fn manual_scaling.new

```ts
new()
```


`google.app_engine_flexible_app_version.manual_scaling.new` constructs a new object with attributes and blocks configured for the `manual_scaling`
Terraform sub block.



**Args**:
  - `instances` (`number`): Number of instances to assign to the service at the start.

**Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
Modules API set_num_instances() you must use &#39;lifecycle.ignore_changes = [&#34;manual_scaling&#34;[0].instances]&#39; to prevent drift detection.

**Returns**:
  - An attribute object that represents the `manual_scaling` sub block.


## obj network



### fn network.new

```ts
new()
```


`google.app_engine_flexible_app_version.network.new` constructs a new object with attributes and blocks configured for the `network`
Terraform sub block.



**Args**:
  - `forwarded_ports` (`list`): List of ports, or port pairs, to forward from the virtual machine to the application container. When `null`, the `forwarded_ports` field will be omitted from the resulting object.
  - `instance_tag` (`string`): Tag to apply to the instance during creation. When `null`, the `instance_tag` field will be omitted from the resulting object.
  - `name` (`string`): Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.
  - `session_affinity` (`bool`): Enable session affinity. When `null`, the `session_affinity` field will be omitted from the resulting object.
  - `subnetwork` (`string`): Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.

If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range.
If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetworkName) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network.
If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetworkName must be specified and the IP address is created from the IPCidrRange of the subnetwork.
If specified, the subnetwork must exist in the same region as the App Engine flexible environment application. When `null`, the `subnetwork` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network` sub block.


## obj readiness_check



### fn readiness_check.new

```ts
new()
```


`google.app_engine_flexible_app_version.readiness_check.new` constructs a new object with attributes and blocks configured for the `readiness_check`
Terraform sub block.



**Args**:
  - `app_start_timeout` (`string`): A maximum time limit on application initialization, measured from moment the application successfully
replies to a healthcheck until it is ready to serve traffic. Default: &#34;300s&#34; When `null`, the `app_start_timeout` field will be omitted from the resulting object.
  - `check_interval` (`string`): Interval between health checks.  Default: &#34;5s&#34;. When `null`, the `check_interval` field will be omitted from the resulting object.
  - `failure_threshold` (`number`): Number of consecutive failed checks required before removing traffic. Default: 2. When `null`, the `failure_threshold` field will be omitted from the resulting object.
  - `host` (`string`): Host header to send when performing a HTTP Readiness check. Example: &#34;myapp.appspot.com&#34; When `null`, the `host` field will be omitted from the resulting object.
  - `path` (`string`): The request path.
  - `success_threshold` (`number`): Number of consecutive successful checks required before receiving traffic. Default: 2. When `null`, the `success_threshold` field will be omitted from the resulting object.
  - `timeout` (`string`): Time before the check is considered failed. Default: &#34;4s&#34; When `null`, the `timeout` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `readiness_check` sub block.


## obj resources



### fn resources.new

```ts
new()
```


`google.app_engine_flexible_app_version.resources.new` constructs a new object with attributes and blocks configured for the `resources`
Terraform sub block.



**Args**:
  - `cpu` (`number`): Number of CPU cores needed. When `null`, the `cpu` field will be omitted from the resulting object.
  - `disk_gb` (`number`): Disk size (GB) needed. When `null`, the `disk_gb` field will be omitted from the resulting object.
  - `memory_gb` (`number`): Memory (GB) needed. When `null`, the `memory_gb` field will be omitted from the resulting object.
  - `volumes` (`list[obj]`): List of ports, or port pairs, to forward from the virtual machine to the application container. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_flexible_app_version.resources.volumes.new](#fn-resourcesvolumesnew) constructor.

**Returns**:
  - An attribute object that represents the `resources` sub block.


## obj resources.volumes



### fn resources.volumes.new

```ts
new()
```


`google.app_engine_flexible_app_version.resources.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`
Terraform sub block.



**Args**:
  - `name` (`string`): Unique name for the volume.
  - `size_gb` (`number`): Volume size in gigabytes.
  - `volume_type` (`string`): Underlying volume type, e.g. &#39;tmpfs&#39;.

**Returns**:
  - An attribute object that represents the `volumes` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.app_engine_flexible_app_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vpc_access_connector



### fn vpc_access_connector.new

```ts
new()
```


`google.app_engine_flexible_app_version.vpc_access_connector.new` constructs a new object with attributes and blocks configured for the `vpc_access_connector`
Terraform sub block.



**Args**:
  - `name` (`string`): Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.

**Returns**:
  - An attribute object that represents the `vpc_access_connector` sub block.
