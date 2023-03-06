---
permalink: /cloud_run_v2_service/
---

# cloud_run_v2_service

`cloud_run_v2_service` represents the `google_cloud_run_v2_service` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withBinaryAuthorization()`](#fn-withbinaryauthorization)
* [`fn withBinaryAuthorizationMixin()`](#fn-withbinaryauthorizationmixin)
* [`fn withClient()`](#fn-withclient)
* [`fn withClientVersion()`](#fn-withclientversion)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIngress()`](#fn-withingress)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLaunchStage()`](#fn-withlaunchstage)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTemplate()`](#fn-withtemplate)
* [`fn withTemplateMixin()`](#fn-withtemplatemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTraffic()`](#fn-withtraffic)
* [`fn withTrafficMixin()`](#fn-withtrafficmixin)
* [`obj binary_authorization`](#obj-binary_authorization)
  * [`fn new()`](#fn-binary_authorizationnew)
* [`obj template`](#obj-template)
  * [`fn new()`](#fn-templatenew)
  * [`obj template.containers`](#obj-templatecontainers)
    * [`fn new()`](#fn-templatecontainersnew)
    * [`obj template.containers.env`](#obj-templatecontainersenv)
      * [`fn new()`](#fn-templatecontainersenvnew)
      * [`obj template.containers.env.value_source`](#obj-templatecontainersenvvalue_source)
        * [`fn new()`](#fn-templatecontainersenvvalue_sourcenew)
        * [`obj template.containers.env.value_source.secret_key_ref`](#obj-templatecontainersenvvalue_sourcesecret_key_ref)
          * [`fn new()`](#fn-templatecontainersenvvalue_sourcesecret_key_refnew)
    * [`obj template.containers.liveness_probe`](#obj-templatecontainersliveness_probe)
      * [`fn new()`](#fn-templatecontainersliveness_probenew)
      * [`obj template.containers.liveness_probe.grpc`](#obj-templatecontainersliveness_probegrpc)
        * [`fn new()`](#fn-templatecontainersliveness_probegrpcnew)
      * [`obj template.containers.liveness_probe.http_get`](#obj-templatecontainersliveness_probehttp_get)
        * [`fn new()`](#fn-templatecontainersliveness_probehttp_getnew)
        * [`obj template.containers.liveness_probe.http_get.http_headers`](#obj-templatecontainersliveness_probehttp_gethttp_headers)
          * [`fn new()`](#fn-templatecontainersliveness_probehttp_gethttp_headersnew)
      * [`obj template.containers.liveness_probe.tcp_socket`](#obj-templatecontainersliveness_probetcp_socket)
        * [`fn new()`](#fn-templatecontainersliveness_probetcp_socketnew)
    * [`obj template.containers.ports`](#obj-templatecontainersports)
      * [`fn new()`](#fn-templatecontainersportsnew)
    * [`obj template.containers.resources`](#obj-templatecontainersresources)
      * [`fn new()`](#fn-templatecontainersresourcesnew)
    * [`obj template.containers.startup_probe`](#obj-templatecontainersstartup_probe)
      * [`fn new()`](#fn-templatecontainersstartup_probenew)
      * [`obj template.containers.startup_probe.grpc`](#obj-templatecontainersstartup_probegrpc)
        * [`fn new()`](#fn-templatecontainersstartup_probegrpcnew)
      * [`obj template.containers.startup_probe.http_get`](#obj-templatecontainersstartup_probehttp_get)
        * [`fn new()`](#fn-templatecontainersstartup_probehttp_getnew)
        * [`obj template.containers.startup_probe.http_get.http_headers`](#obj-templatecontainersstartup_probehttp_gethttp_headers)
          * [`fn new()`](#fn-templatecontainersstartup_probehttp_gethttp_headersnew)
      * [`obj template.containers.startup_probe.tcp_socket`](#obj-templatecontainersstartup_probetcp_socket)
        * [`fn new()`](#fn-templatecontainersstartup_probetcp_socketnew)
    * [`obj template.containers.volume_mounts`](#obj-templatecontainersvolume_mounts)
      * [`fn new()`](#fn-templatecontainersvolume_mountsnew)
  * [`obj template.scaling`](#obj-templatescaling)
    * [`fn new()`](#fn-templatescalingnew)
  * [`obj template.volumes`](#obj-templatevolumes)
    * [`fn new()`](#fn-templatevolumesnew)
    * [`obj template.volumes.cloud_sql_instance`](#obj-templatevolumescloud_sql_instance)
      * [`fn new()`](#fn-templatevolumescloud_sql_instancenew)
    * [`obj template.volumes.secret`](#obj-templatevolumessecret)
      * [`fn new()`](#fn-templatevolumessecretnew)
      * [`obj template.volumes.secret.items`](#obj-templatevolumessecretitems)
        * [`fn new()`](#fn-templatevolumessecretitemsnew)
  * [`obj template.vpc_access`](#obj-templatevpc_access)
    * [`fn new()`](#fn-templatevpc_accessnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj traffic`](#obj-traffic)
  * [`fn new()`](#fn-trafficnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_run_v2_service.new` injects a new `google_cloud_run_v2_service` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_run_v2_service.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_run_v2_service` using the reference:

    $._ref.google_cloud_run_v2_service.some_id.get('id')

This is the same as directly entering `"${ google_cloud_run_v2_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run will populate some annotations using &#39;run.googleapis.com&#39; or &#39;serving.knative.dev&#39; namespaces. This field follows Kubernetes annotations&#39; namespacing, limits, and rules. More info: https://kubernetes.io/docs/user-guide/annotations When `null`, the `annotations` field will be omitted from the resulting object.
  - `client` (`string`): Arbitrary identifier for the API client. When `null`, the `client` field will be omitted from the resulting object.
  - `client_version` (`string`): Arbitrary version identifier for the API client. When `null`, the `client_version` field will be omitted from the resulting object.
  - `description` (`string`): User-provided description of the Service. This field currently has a 512-character limit. When `null`, the `description` field will be omitted from the resulting object.
  - `ingress` (`string`): Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active. Possible values: [&#34;INGRESS_TRAFFIC_ALL&#34;, &#34;INGRESS_TRAFFIC_INTERNAL_ONLY&#34;, &#34;INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER&#34;] When `null`, the `ingress` field will be omitted from the resulting object.
  - `labels` (`obj`): Map of string keys and values that can be used to organize and categorize objects. User-provided labels are shared with Google&#39;s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels Cloud Run will populate some labels with &#39;run.googleapis.com&#39; or &#39;serving.knative.dev&#39; namespaces. Those labels are read-only, and user changes will not be preserved. When `null`, the `labels` field will be omitted from the resulting object.
  - `launch_stage` (`string`): The launch stage as defined by Google Cloud Platform Launch Stages. Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Possible values: [&#34;UNIMPLEMENTED&#34;, &#34;PRELAUNCH&#34;, &#34;EARLY_ACCESS&#34;, &#34;ALPHA&#34;, &#34;BETA&#34;, &#34;GA&#34;, &#34;DEPRECATED&#34;] When `null`, the `launch_stage` field will be omitted from the resulting object.
  - `location` (`string`): The location of the cloud run service When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the Service.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `binary_authorization` (`list[obj]`): Settings for the Binary Authorization feature. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.binary_authorization.new](#fn-binary_authorizationnew) constructor.
  - `template` (`list[obj]`): The template used to create revisions for this Service. When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.new](#fn-templatenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.timeouts.new](#fn-timeoutsnew) constructor.
  - `traffic` (`list[obj]`): Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision. When `null`, the `traffic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.traffic.new](#fn-trafficnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_run_v2_service.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_run_v2_service`
Terraform resource.

Unlike [google.cloud_run_v2_service.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run will populate some annotations using &#39;run.googleapis.com&#39; or &#39;serving.knative.dev&#39; namespaces. This field follows Kubernetes annotations&#39; namespacing, limits, and rules. More info: https://kubernetes.io/docs/user-guide/annotations When `null`, the `annotations` field will be omitted from the resulting object.
  - `client` (`string`): Arbitrary identifier for the API client. When `null`, the `client` field will be omitted from the resulting object.
  - `client_version` (`string`): Arbitrary version identifier for the API client. When `null`, the `client_version` field will be omitted from the resulting object.
  - `description` (`string`): User-provided description of the Service. This field currently has a 512-character limit. When `null`, the `description` field will be omitted from the resulting object.
  - `ingress` (`string`): Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active. Possible values: [&#34;INGRESS_TRAFFIC_ALL&#34;, &#34;INGRESS_TRAFFIC_INTERNAL_ONLY&#34;, &#34;INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER&#34;] When `null`, the `ingress` field will be omitted from the resulting object.
  - `labels` (`obj`): Map of string keys and values that can be used to organize and categorize objects. User-provided labels are shared with Google&#39;s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels Cloud Run will populate some labels with &#39;run.googleapis.com&#39; or &#39;serving.knative.dev&#39; namespaces. Those labels are read-only, and user changes will not be preserved. When `null`, the `labels` field will be omitted from the resulting object.
  - `launch_stage` (`string`): The launch stage as defined by Google Cloud Platform Launch Stages. Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Possible values: [&#34;UNIMPLEMENTED&#34;, &#34;PRELAUNCH&#34;, &#34;EARLY_ACCESS&#34;, &#34;ALPHA&#34;, &#34;BETA&#34;, &#34;GA&#34;, &#34;DEPRECATED&#34;] When `null`, the `launch_stage` field will be omitted from the resulting object.
  - `location` (`string`): The location of the cloud run service When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the Service.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `binary_authorization` (`list[obj]`): Settings for the Binary Authorization feature. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.binary_authorization.new](#fn-binary_authorizationnew) constructor.
  - `template` (`list[obj]`): The template used to create revisions for this Service. When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.new](#fn-templatenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.timeouts.new](#fn-timeoutsnew) constructor.
  - `traffic` (`list[obj]`): Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision. When `null`, the `traffic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.traffic.new](#fn-trafficnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_run_v2_service` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withBinaryAuthorization

```ts
withBinaryAuthorization()
```

`google.list[obj].withBinaryAuthorization` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the binary_authorization field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBinaryAuthorizationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.


### fn withBinaryAuthorizationMixin

```ts
withBinaryAuthorizationMixin()
```

`google.list[obj].withBinaryAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the binary_authorization field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBinaryAuthorization](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.


### fn withClient

```ts
withClient()
```

`google.string.withClient` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the client field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `client` field.


### fn withClientVersion

```ts
withClientVersion()
```

`google.string.withClientVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the client_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `client_version` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withIngress

```ts
withIngress()
```

`google.string.withIngress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ingress field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ingress` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLaunchStage

```ts
withLaunchStage()
```

`google.string.withLaunchStage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the launch_stage field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `launch_stage` field.


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


### fn withTemplate

```ts
withTemplate()
```

`google.list[obj].withTemplate` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the template field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTemplateMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `template` field.


### fn withTemplateMixin

```ts
withTemplateMixin()
```

`google.list[obj].withTemplateMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the template field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTemplate](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `template` field.


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


### fn withTraffic

```ts
withTraffic()
```

`google.list[obj].withTraffic` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the traffic field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTrafficMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `traffic` field.


### fn withTrafficMixin

```ts
withTrafficMixin()
```

`google.list[obj].withTrafficMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the traffic field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTraffic](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `traffic` field.


## obj binary_authorization



### fn binary_authorization.new

```ts
new()
```


`google.cloud_run_v2_service.binary_authorization.new` constructs a new object with attributes and blocks configured for the `binary_authorization`
Terraform sub block.



**Args**:
  - `breakglass_justification` (`string`): If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass When `null`, the `breakglass_justification` field will be omitted from the resulting object.
  - `use_default` (`bool`): If True, indicates to use the default project&#39;s binary authorization policy. If False, binary authorization will be disabled. When `null`, the `use_default` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `binary_authorization` sub block.


## obj template



### fn template.new

```ts
new()
```


`google.cloud_run_v2_service.template.new` constructs a new object with attributes and blocks configured for the `template`
Terraform sub block.



**Args**:
  - `annotations` (`obj`): KRM-style annotations for the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `encryption_key` (`string`): A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek When `null`, the `encryption_key` field will be omitted from the resulting object.
  - `execution_environment` (`string`): The sandbox environment to host this Revision. Possible values: [&#34;EXECUTION_ENVIRONMENT_GEN1&#34;, &#34;EXECUTION_ENVIRONMENT_GEN2&#34;] When `null`, the `execution_environment` field will be omitted from the resulting object.
  - `labels` (`obj`): KRM-style labels for the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `max_instance_request_concurrency` (`number`): Sets the maximum number of requests that each serving instance can receive. When `null`, the `max_instance_request_concurrency` field will be omitted from the resulting object.
  - `revision` (`string`): The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name. When `null`, the `revision` field will be omitted from the resulting object.
  - `service_account` (`string`): Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project&#39;s default service account. When `null`, the `service_account` field will be omitted from the resulting object.
  - `timeout` (`string`): Max allowed time for an instance to respond to a request.

A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `timeout` field will be omitted from the resulting object.
  - `containers` (`list[obj]`): Holds the single container that defines the unit of execution for this task. When `null`, the `containers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.new](#fn-templatecontainersnew) constructor.
  - `scaling` (`list[obj]`): Scaling settings for this Revision. When `null`, the `scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.scaling.new](#fn-templatescalingnew) constructor.
  - `volumes` (`list[obj]`): A list of Volumes to make available to containers. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.volumes.new](#fn-templatevolumesnew) constructor.
  - `vpc_access` (`list[obj]`): VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. When `null`, the `vpc_access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.vpc_access.new](#fn-templatevpc_accessnew) constructor.

**Returns**:
  - An attribute object that represents the `template` sub block.


## obj template.containers



### fn template.containers.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.new` constructs a new object with attributes and blocks configured for the `containers`
Terraform sub block.



**Args**:
  - `args` (`list`): Arguments to the entrypoint. The docker image&#39;s CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container&#39;s environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell When `null`, the `args` field will be omitted from the resulting object.
  - `command` (`list`): Entrypoint array. Not executed within a shell. The docker image&#39;s ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container&#39;s environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell When `null`, the `command` field will be omitted from the resulting object.
  - `image` (`string`): URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  - `name` (`string`): Name of the container specified as a DNS_LABEL. When `null`, the `name` field will be omitted from the resulting object.
  - `working_dir` (`string`): Container&#39;s working directory. If not specified, the container runtime&#39;s default will be used, which might be configured in the container image. When `null`, the `working_dir` field will be omitted from the resulting object.
  - `env` (`list[obj]`): List of environment variables to set in the container. When `null`, the `env` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.env.new](#fn-templatetemplateenvnew) constructor.
  - `liveness_probe` (`list[obj]`): Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `liveness_probe` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.liveness_probe.new](#fn-templatetemplateliveness_probenew) constructor.
  - `ports` (`list[obj]`): List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.

If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on When `null`, the `ports` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.ports.new](#fn-templatetemplateportsnew) constructor.
  - `resources` (`list[obj]`): Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.resources.new](#fn-templatetemplateresourcesnew) constructor.
  - `startup_probe` (`list[obj]`): Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `startup_probe` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.startup_probe.new](#fn-templatetemplatestartup_probenew) constructor.
  - `volume_mounts` (`list[obj]`): Volume to mount into the container&#39;s filesystem. When `null`, the `volume_mounts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.volume_mounts.new](#fn-templatetemplatevolume_mountsnew) constructor.

**Returns**:
  - An attribute object that represents the `containers` sub block.


## obj template.containers.env



### fn template.containers.env.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.env.new` constructs a new object with attributes and blocks configured for the `env`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters.
  - `value` (`string`): Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to &#34;&#34;, and the maximum length is 32768 bytes When `null`, the `value` field will be omitted from the resulting object.
  - `value_source` (`list[obj]`): Source for the environment variable&#39;s value. When `null`, the `value_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.env.value_source.new](#fn-templatetemplatecontainersvalue_sourcenew) constructor.

**Returns**:
  - An attribute object that represents the `env` sub block.


## obj template.containers.env.value_source



### fn template.containers.env.value_source.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.env.value_source.new` constructs a new object with attributes and blocks configured for the `value_source`
Terraform sub block.



**Args**:
  - `secret_key_ref` (`list[obj]`): Selects a secret and a specific version from Cloud Secret Manager. When `null`, the `secret_key_ref` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.env.value_source.secret_key_ref.new](#fn-templatetemplatecontainersenvsecret_key_refnew) constructor.

**Returns**:
  - An attribute object that represents the `value_source` sub block.


## obj template.containers.env.value_source.secret_key_ref



### fn template.containers.env.value_source.secret_key_ref.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.env.value_source.secret_key_ref.new` constructs a new object with attributes and blocks configured for the `secret_key_ref`
Terraform sub block.



**Args**:
  - `secret` (`string`): The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project.
  - `version` (`string`): The Cloud Secret Manager secret version. Can be &#39;latest&#39; for the latest value or an integer for a specific version. When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `secret_key_ref` sub block.


## obj template.containers.liveness_probe



### fn template.containers.liveness_probe.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.liveness_probe.new` constructs a new object with attributes and blocks configured for the `liveness_probe`
Terraform sub block.



**Args**:
  - `failure_threshold` (`number`): Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. When `null`, the `failure_threshold` field will be omitted from the resulting object.
  - `initial_delay_seconds` (`number`): Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `initial_delay_seconds` field will be omitted from the resulting object.
  - `period_seconds` (`number`): How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds When `null`, the `period_seconds` field will be omitted from the resulting object.
  - `timeout_seconds` (`number`): Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `timeout_seconds` field will be omitted from the resulting object.
  - `grpc` (`list[obj]`): GRPC specifies an action involving a GRPC port. When `null`, the `grpc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.liveness_probe.grpc.new](#fn-templatetemplatecontainersgrpcnew) constructor.
  - `http_get` (`list[obj]`): HTTPGet specifies the http request to perform. When `null`, the `http_get` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.liveness_probe.http_get.new](#fn-templatetemplatecontainershttp_getnew) constructor.
  - `tcp_socket` (`list[obj]`): TCPSocket specifies an action involving a TCP port. This field is not supported in liveness probe currently. When `null`, the `tcp_socket` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.liveness_probe.tcp_socket.new](#fn-templatetemplatecontainerstcp_socketnew) constructor.

**Returns**:
  - An attribute object that represents the `liveness_probe` sub block.


## obj template.containers.liveness_probe.grpc



### fn template.containers.liveness_probe.grpc.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.liveness_probe.grpc.new` constructs a new object with attributes and blocks configured for the `grpc`
Terraform sub block.



**Args**:
  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535. If not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service to place in the gRPC HealthCheckRequest
(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
If this is not specified, the default behavior is defined by gRPC. When `null`, the `service` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `grpc` sub block.


## obj template.containers.liveness_probe.http_get



### fn template.containers.liveness_probe.http_get.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.liveness_probe.http_get.new` constructs a new object with attributes and blocks configured for the `http_get`
Terraform sub block.



**Args**:
  - `path` (`string`): Path to access on the HTTP server. Defaults to &#39;/&#39;. When `null`, the `path` field will be omitted from the resulting object.
  - `http_headers` (`list[obj]`): Custom headers to set in the request. HTTP allows repeated headers. When `null`, the `http_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.liveness_probe.http_get.http_headers.new](#fn-templatetemplatecontainersliveness_probehttp_headersnew) constructor.

**Returns**:
  - An attribute object that represents the `http_get` sub block.


## obj template.containers.liveness_probe.http_get.http_headers



### fn template.containers.liveness_probe.http_get.http_headers.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.liveness_probe.http_get.http_headers.new` constructs a new object with attributes and blocks configured for the `http_headers`
Terraform sub block.



**Args**:
  - `name` (`string`): The header field name
  - `value` (`string`): The header field value When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `http_headers` sub block.


## obj template.containers.liveness_probe.tcp_socket



### fn template.containers.liveness_probe.tcp_socket.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.liveness_probe.tcp_socket.new` constructs a new object with attributes and blocks configured for the `tcp_socket`
Terraform sub block.



**Args**:
  - `port` (`number`): Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to 8080. When `null`, the `port` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `tcp_socket` sub block.


## obj template.containers.ports



### fn template.containers.ports.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.ports.new` constructs a new object with attributes and blocks configured for the `ports`
Terraform sub block.



**Args**:
  - `container_port` (`number`): Port number the container listens on. This must be a valid TCP port number, 0 &lt; containerPort &lt; 65536. When `null`, the `container_port` field will be omitted from the resulting object.
  - `name` (`string`): If specified, used to specify which protocol to use. Allowed values are &#34;http1&#34; and &#34;h2c&#34;. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ports` sub block.


## obj template.containers.resources



### fn template.containers.resources.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.resources.new` constructs a new object with attributes and blocks configured for the `resources`
Terraform sub block.



**Args**:
  - `cpu_idle` (`bool`): Determines whether CPU should be throttled or not outside of requests. When `null`, the `cpu_idle` field will be omitted from the resulting object.
  - `limits` (`obj`): Only memory and CPU are supported. Note: The only supported values for CPU are &#39;1&#39;, &#39;2&#39;, &#39;4&#39;, and &#39;8&#39;. Setting 4 CPU requires at least 2Gi of memory. The values of the map is string form of the &#39;quantity&#39; k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go When `null`, the `limits` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `resources` sub block.


## obj template.containers.startup_probe



### fn template.containers.startup_probe.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.startup_probe.new` constructs a new object with attributes and blocks configured for the `startup_probe`
Terraform sub block.



**Args**:
  - `failure_threshold` (`number`): Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. When `null`, the `failure_threshold` field will be omitted from the resulting object.
  - `initial_delay_seconds` (`number`): Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `initial_delay_seconds` field will be omitted from the resulting object.
  - `period_seconds` (`number`): How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds When `null`, the `period_seconds` field will be omitted from the resulting object.
  - `timeout_seconds` (`number`): Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes When `null`, the `timeout_seconds` field will be omitted from the resulting object.
  - `grpc` (`list[obj]`): GRPC specifies an action involving a GRPC port. When `null`, the `grpc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.startup_probe.grpc.new](#fn-templatetemplatecontainersgrpcnew) constructor.
  - `http_get` (`list[obj]`): HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified. When `null`, the `http_get` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.startup_probe.http_get.new](#fn-templatetemplatecontainershttp_getnew) constructor.
  - `tcp_socket` (`list[obj]`): TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified. When `null`, the `tcp_socket` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.startup_probe.tcp_socket.new](#fn-templatetemplatecontainerstcp_socketnew) constructor.

**Returns**:
  - An attribute object that represents the `startup_probe` sub block.


## obj template.containers.startup_probe.grpc



### fn template.containers.startup_probe.grpc.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.startup_probe.grpc.new` constructs a new object with attributes and blocks configured for the `grpc`
Terraform sub block.



**Args**:
  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535. If not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service to place in the gRPC HealthCheckRequest
(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
If this is not specified, the default behavior is defined by gRPC. When `null`, the `service` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `grpc` sub block.


## obj template.containers.startup_probe.http_get



### fn template.containers.startup_probe.http_get.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.startup_probe.http_get.new` constructs a new object with attributes and blocks configured for the `http_get`
Terraform sub block.



**Args**:
  - `path` (`string`): Path to access on the HTTP server. Defaults to &#39;/&#39;. When `null`, the `path` field will be omitted from the resulting object.
  - `http_headers` (`list[obj]`): Custom headers to set in the request. HTTP allows repeated headers. When `null`, the `http_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.containers.startup_probe.http_get.http_headers.new](#fn-templatetemplatecontainersstartup_probehttp_headersnew) constructor.

**Returns**:
  - An attribute object that represents the `http_get` sub block.


## obj template.containers.startup_probe.http_get.http_headers



### fn template.containers.startup_probe.http_get.http_headers.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.startup_probe.http_get.http_headers.new` constructs a new object with attributes and blocks configured for the `http_headers`
Terraform sub block.



**Args**:
  - `name` (`string`): The header field name
  - `value` (`string`): The header field value When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `http_headers` sub block.


## obj template.containers.startup_probe.tcp_socket



### fn template.containers.startup_probe.tcp_socket.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.startup_probe.tcp_socket.new` constructs a new object with attributes and blocks configured for the `tcp_socket`
Terraform sub block.



**Args**:
  - `port` (`number`): Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to 8080. When `null`, the `port` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `tcp_socket` sub block.


## obj template.containers.volume_mounts



### fn template.containers.volume_mounts.new

```ts
new()
```


`google.cloud_run_v2_service.template.containers.volume_mounts.new` constructs a new object with attributes and blocks configured for the `volume_mounts`
Terraform sub block.



**Args**:
  - `mount_path` (`string`): Path within the container at which the volume should be mounted. Must not contain &#39;:&#39;. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  - `name` (`string`): This must match the Name of a Volume.

**Returns**:
  - An attribute object that represents the `volume_mounts` sub block.


## obj template.scaling



### fn template.scaling.new

```ts
new()
```


`google.cloud_run_v2_service.template.scaling.new` constructs a new object with attributes and blocks configured for the `scaling`
Terraform sub block.



**Args**:
  - `max_instance_count` (`number`): Maximum number of serving instances that this resource should have. When `null`, the `max_instance_count` field will be omitted from the resulting object.
  - `min_instance_count` (`number`): Minimum number of serving instances that this resource should have. When `null`, the `min_instance_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `scaling` sub block.


## obj template.volumes



### fn template.volumes.new

```ts
new()
```


`google.cloud_run_v2_service.template.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`
Terraform sub block.



**Args**:
  - `name` (`string`): Volume&#39;s name.
  - `cloud_sql_instance` (`list[obj]`): For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. When `null`, the `cloud_sql_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.volumes.cloud_sql_instance.new](#fn-templatetemplatecloud_sql_instancenew) constructor.
  - `secret` (`list[obj]`): Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret When `null`, the `secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.volumes.secret.new](#fn-templatetemplatesecretnew) constructor.

**Returns**:
  - An attribute object that represents the `volumes` sub block.


## obj template.volumes.cloud_sql_instance



### fn template.volumes.cloud_sql_instance.new

```ts
new()
```


`google.cloud_run_v2_service.template.volumes.cloud_sql_instance.new` constructs a new object with attributes and blocks configured for the `cloud_sql_instance`
Terraform sub block.



**Args**:
  - `instances` (`list`): The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance} When `null`, the `instances` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cloud_sql_instance` sub block.


## obj template.volumes.secret



### fn template.volumes.secret.new

```ts
new()
```


`google.cloud_run_v2_service.template.volumes.secret.new` constructs a new object with attributes and blocks configured for the `secret`
Terraform sub block.



**Args**:
  - `default_mode` (`number`): Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. When `null`, the `default_mode` field will be omitted from the resulting object.
  - `secret` (`string`): The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.
  - `items` (`list[obj]`): If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version. When `null`, the `items` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_v2_service.template.volumes.secret.items.new](#fn-templatetemplatevolumesitemsnew) constructor.

**Returns**:
  - An attribute object that represents the `secret` sub block.


## obj template.volumes.secret.items



### fn template.volumes.secret.items.new

```ts
new()
```


`google.cloud_run_v2_service.template.volumes.secret.items.new` constructs a new object with attributes and blocks configured for the `items`
Terraform sub block.



**Args**:
  - `mode` (`number`): Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume&#39;s default mode will be used.
  - `path` (`string`): The relative path of the secret in the container.
  - `version` (`string`): The Cloud Secret Manager secret version. Can be &#39;latest&#39; for the latest value or an integer for a specific version When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `items` sub block.


## obj template.vpc_access



### fn template.vpc_access.new

```ts
new()
```


`google.cloud_run_v2_service.template.vpc_access.new` constructs a new object with attributes and blocks configured for the `vpc_access`
Terraform sub block.



**Args**:
  - `connector` (`string`): VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. When `null`, the `connector` field will be omitted from the resulting object.
  - `egress` (`string`): Traffic VPC egress settings. Possible values: [&#34;ALL_TRAFFIC&#34;, &#34;PRIVATE_RANGES_ONLY&#34;] When `null`, the `egress` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vpc_access` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloud_run_v2_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj traffic



### fn traffic.new

```ts
new()
```


`google.cloud_run_v2_service.traffic.new` constructs a new object with attributes and blocks configured for the `traffic`
Terraform sub block.



**Args**:
  - `percent` (`number`): Specifies percent of the traffic to this Revision. This defaults to zero if unspecified. When `null`, the `percent` field will be omitted from the resulting object.
  - `revision` (`string`): Revision to which to send this portion of traffic, if traffic allocation is by revision. When `null`, the `revision` field will be omitted from the resulting object.
  - `tag` (`string`): Indicates a string to be part of the URI to exclusively reference this target. When `null`, the `tag` field will be omitted from the resulting object.
  - `type` (`string`): The allocation type for this traffic target. Possible values: [&#34;TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST&#34;, &#34;TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION&#34;] When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `traffic` sub block.
