---
permalink: /compute_region_network_endpoint_group/
---

# compute_region_network_endpoint_group

`compute_region_network_endpoint_group` represents the `google_compute_region_network_endpoint_group` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppEngine()`](#fn-withappengine)
* [`fn withAppEngineMixin()`](#fn-withappenginemixin)
* [`fn withCloudFunction()`](#fn-withcloudfunction)
* [`fn withCloudFunctionMixin()`](#fn-withcloudfunctionmixin)
* [`fn withCloudRun()`](#fn-withcloudrun)
* [`fn withCloudRunMixin()`](#fn-withcloudrunmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkEndpointType()`](#fn-withnetworkendpointtype)
* [`fn withProject()`](#fn-withproject)
* [`fn withPscTargetService()`](#fn-withpsctargetservice)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj app_engine`](#obj-app_engine)
  * [`fn new()`](#fn-app_enginenew)
* [`obj cloud_function`](#obj-cloud_function)
  * [`fn new()`](#fn-cloud_functionnew)
* [`obj cloud_run`](#obj-cloud_run)
  * [`fn new()`](#fn-cloud_runnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_region_network_endpoint_group.new` injects a new `google_compute_region_network_endpoint_group` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_region_network_endpoint_group.new('some_id')

You can get the reference to the `id` field of the created `google.compute_region_network_endpoint_group` using the reference:

    $._ref.google_compute_region_network_endpoint_group.some_id.get('id')

This is the same as directly entering `"${ google_compute_region_network_endpoint_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): This field is only used for PSC.
The URL of the network to which all network endpoints in the NEG belong. Uses
&#34;default&#34; project network if unspecified. When `null`, the `network` field will be omitted from the resulting object.
  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group. Defaults to SERVERLESS Default value: &#34;SERVERLESS&#34; Possible values: [&#34;SERVERLESS&#34;, &#34;PRIVATE_SERVICE_CONNECT&#34;] When `null`, the `network_endpoint_type` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `psc_target_service` (`string`): The target service url used to set up private service connection to
a Google API or a PSC Producer Service Attachment. When `null`, the `psc_target_service` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region where the Serverless NEGs Reside.
  - `subnetwork` (`string`): This field is only used for PSC.
Optional URL of the subnetwork to which all network endpoints in the NEG belong. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `app_engine` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.
Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `app_engine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.app_engine.new](#fn-computeregionnetworkendpointgroupappenginenew) constructor.
  - `cloud_function` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.
Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `cloud_function` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.cloud_function.new](#fn-computeregionnetworkendpointgroupcloudfunctionnew) constructor.
  - `cloud_run` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.
Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `cloud_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.cloud_run.new](#fn-computeregionnetworkendpointgroupcloudrunnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.timeouts.new](#fn-computeregionnetworkendpointgrouptimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_region_network_endpoint_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_network_endpoint_group`
Terraform resource.

Unlike [google.compute_region_network_endpoint_group.new](#fn-computeregionnetworkendpointgroupnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): This field is only used for PSC.
The URL of the network to which all network endpoints in the NEG belong. Uses
&#34;default&#34; project network if unspecified. When `null`, the `network` field will be omitted from the resulting object.
  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group. Defaults to SERVERLESS Default value: &#34;SERVERLESS&#34; Possible values: [&#34;SERVERLESS&#34;, &#34;PRIVATE_SERVICE_CONNECT&#34;] When `null`, the `network_endpoint_type` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `psc_target_service` (`string`): The target service url used to set up private service connection to
a Google API or a PSC Producer Service Attachment. When `null`, the `psc_target_service` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region where the Serverless NEGs Reside.
  - `subnetwork` (`string`): This field is only used for PSC.
Optional URL of the subnetwork to which all network endpoints in the NEG belong. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `app_engine` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.
Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `app_engine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.app_engine.new](#fn-computeregionnetworkendpointgroupappenginenew) constructor.
  - `cloud_function` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.
Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `cloud_function` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.cloud_function.new](#fn-computeregionnetworkendpointgroupcloudfunctionnew) constructor.
  - `cloud_run` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.
Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `cloud_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.cloud_run.new](#fn-computeregionnetworkendpointgroupcloudrunnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.timeouts.new](#fn-computeregionnetworkendpointgrouptimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_network_endpoint_group` resource into the root Terraform configuration.


### fn withAppEngine

```ts
withAppEngine()
```

`google.compute_region_network_endpoint_group.withAppEngine` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the app_engine field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `app_engine` field.


### fn withAppEngineMixin

```ts
withAppEngineMixin()
```

`google.compute_region_network_endpoint_group.withAppEngineMixin` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the app_engine field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_region_network_endpoint_group.withAppEngine](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `app_engine` field.


### fn withCloudFunction

```ts
withCloudFunction()
```

`google.compute_region_network_endpoint_group.withCloudFunction` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the cloud_function field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `cloud_function` field.


### fn withCloudFunctionMixin

```ts
withCloudFunctionMixin()
```

`google.compute_region_network_endpoint_group.withCloudFunctionMixin` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the cloud_function field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_region_network_endpoint_group.withCloudFunction](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `cloud_function` field.


### fn withCloudRun

```ts
withCloudRun()
```

`google.compute_region_network_endpoint_group.withCloudRun` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the cloud_run field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `cloud_run` field.


### fn withCloudRunMixin

```ts
withCloudRunMixin()
```

`google.compute_region_network_endpoint_group.withCloudRunMixin` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the cloud_run field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_region_network_endpoint_group.withCloudRun](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `cloud_run` field.


### fn withDescription

```ts
withDescription()
```

`google.compute_region_network_endpoint_group.withDescription` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.compute_region_network_endpoint_group.withName` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.compute_region_network_endpoint_group.withNetwork` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withNetworkEndpointType

```ts
withNetworkEndpointType()
```

`google.compute_region_network_endpoint_group.withNetworkEndpointType` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the network_endpoint_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network_endpoint_type` field.


### fn withProject

```ts
withProject()
```

`google.compute_region_network_endpoint_group.withProject` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withPscTargetService

```ts
withPscTargetService()
```

`google.compute_region_network_endpoint_group.withPscTargetService` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the psc_target_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `psc_target_service` field.


### fn withRegion

```ts
withRegion()
```

`google.compute_region_network_endpoint_group.withRegion` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google.compute_region_network_endpoint_group.withSubnetwork` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `subnetwork` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_region_network_endpoint_group.withTimeouts` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_region_network_endpoint_group.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_region_network_endpoint_group`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_region_network_endpoint_group.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj app_engine



### fn app_engine.new

```ts
new()
```


`google.compute_region_network_endpoint_group.app_engine.new` constructs a new object with attributes and blocks configured for the `app_engine`
Terraform sub block.



**Args**:
  - `service` (`string`): Optional serving service.
The service name must be 1-63 characters long, and comply with RFC1035.
Example value: &#34;default&#34;, &#34;my-service&#34;. When `null`, the `service` field will be omitted from the resulting object.
  - `url_mask` (`string`): A template to parse service and version fields from a request URL.
URL mask allows for routing to multiple App Engine services without
having to create multiple Network Endpoint Groups and backend services.

For example, the request URLs &#34;foo1-dot-appname.appspot.com/v1&#34; and
&#34;foo1-dot-appname.appspot.com/v2&#34; can be backed by the same Serverless NEG with
URL mask &#34;-dot-appname.appspot.com/&#34;. The URL mask will parse
them to { service = &#34;foo1&#34;, version = &#34;v1&#34; } and { service = &#34;foo1&#34;, version = &#34;v2&#34; } respectively. When `null`, the `url_mask` field will be omitted from the resulting object.
  - `version` (`string`): Optional serving version.
The version must be 1-63 characters long, and comply with RFC1035.
Example value: &#34;v1&#34;, &#34;v2&#34;. When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `app_engine` sub block.


## obj cloud_function



### fn cloud_function.new

```ts
new()
```


`google.compute_region_network_endpoint_group.cloud_function.new` constructs a new object with attributes and blocks configured for the `cloud_function`
Terraform sub block.



**Args**:
  - `function_` (`string`): A user-defined name of the Cloud Function.
The function name is case-sensitive and must be 1-63 characters long.
Example value: &#34;func1&#34;. When `null`, the `function_` field will be omitted from the resulting object.
  - `url_mask` (`string`): A template to parse function field from a request URL. URL mask allows
for routing to multiple Cloud Functions without having to create
multiple Network Endpoint Groups and backend services.

For example, request URLs &#34;mydomain.com/function1&#34; and &#34;mydomain.com/function2&#34;
can be backed by the same Serverless NEG with URL mask &#34;/&#34;. The URL mask
will parse them to { function = &#34;function1&#34; } and { function = &#34;function2&#34; } respectively. When `null`, the `url_mask` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cloud_function` sub block.


## obj cloud_run



### fn cloud_run.new

```ts
new()
```


`google.compute_region_network_endpoint_group.cloud_run.new` constructs a new object with attributes and blocks configured for the `cloud_run`
Terraform sub block.



**Args**:
  - `service` (`string`): Cloud Run service is the main resource of Cloud Run.
The service must be 1-63 characters long, and comply with RFC1035.
Example value: &#34;run-service&#34;. When `null`, the `service` field will be omitted from the resulting object.
  - `tag` (`string`): Cloud Run tag represents the &#34;named-revision&#34; to provide
additional fine-grained traffic routing information.
The tag must be 1-63 characters long, and comply with RFC1035.
Example value: &#34;revision-0010&#34;. When `null`, the `tag` field will be omitted from the resulting object.
  - `url_mask` (`string`): A template to parse service and tag fields from a request URL.
URL mask allows for routing to multiple Run services without having
to create multiple network endpoint groups and backend services.

For example, request URLs &#34;foo1.domain.com/bar1&#34; and &#34;foo1.domain.com/bar2&#34;
an be backed by the same Serverless Network Endpoint Group (NEG) with
URL mask &#34;.domain.com/&#34;. The URL mask will parse them to { service=&#34;bar1&#34;, tag=&#34;foo1&#34; }
and { service=&#34;bar2&#34;, tag=&#34;foo2&#34; } respectively. When `null`, the `url_mask` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cloud_run` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_region_network_endpoint_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
