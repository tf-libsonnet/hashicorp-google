---
permalink: /cloud_run_service/
---

# cloud_run_service

`cloud_run_service` represents the `google_cloud_run_service` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutogenerateRevisionName()`](#fn-withautogeneraterevisionname)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withMetadataMixin()`](#fn-withmetadatamixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTemplate()`](#fn-withtemplate)
* [`fn withTemplateMixin()`](#fn-withtemplatemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTraffic()`](#fn-withtraffic)
* [`fn withTrafficMixin()`](#fn-withtrafficmixin)
* [`obj metadata`](#obj-metadata)
  * [`fn new()`](#fn-metadatanew)
* [`obj template`](#obj-template)
  * [`fn new()`](#fn-templatenew)
  * [`obj template.metadata`](#obj-templatemetadata)
    * [`fn new()`](#fn-templatemetadatanew)
  * [`obj template.spec`](#obj-templatespec)
    * [`fn new()`](#fn-templatespecnew)
    * [`obj template.spec.containers`](#obj-templatespeccontainers)
      * [`fn new()`](#fn-templatespeccontainersnew)
      * [`obj template.spec.containers.env`](#obj-templatespeccontainersenv)
        * [`fn new()`](#fn-templatespeccontainersenvnew)
        * [`obj template.spec.containers.env.value_from`](#obj-templatespeccontainersenvvalue_from)
          * [`fn new()`](#fn-templatespeccontainersenvvalue_fromnew)
          * [`obj template.spec.containers.env.value_from.secret_key_ref`](#obj-templatespeccontainersenvvalue_fromsecret_key_ref)
            * [`fn new()`](#fn-templatespeccontainersenvvalue_fromsecret_key_refnew)
      * [`obj template.spec.containers.env_from`](#obj-templatespeccontainersenv_from)
        * [`fn new()`](#fn-templatespeccontainersenv_fromnew)
        * [`obj template.spec.containers.env_from.config_map_ref`](#obj-templatespeccontainersenv_fromconfig_map_ref)
          * [`fn new()`](#fn-templatespeccontainersenv_fromconfig_map_refnew)
          * [`obj template.spec.containers.env_from.config_map_ref.local_object_reference`](#obj-templatespeccontainersenv_fromconfig_map_reflocal_object_reference)
            * [`fn new()`](#fn-templatespeccontainersenv_fromconfig_map_reflocal_object_referencenew)
        * [`obj template.spec.containers.env_from.secret_ref`](#obj-templatespeccontainersenv_fromsecret_ref)
          * [`fn new()`](#fn-templatespeccontainersenv_fromsecret_refnew)
          * [`obj template.spec.containers.env_from.secret_ref.local_object_reference`](#obj-templatespeccontainersenv_fromsecret_reflocal_object_reference)
            * [`fn new()`](#fn-templatespeccontainersenv_fromsecret_reflocal_object_referencenew)
      * [`obj template.spec.containers.liveness_probe`](#obj-templatespeccontainersliveness_probe)
        * [`fn new()`](#fn-templatespeccontainersliveness_probenew)
        * [`obj template.spec.containers.liveness_probe.grpc`](#obj-templatespeccontainersliveness_probegrpc)
          * [`fn new()`](#fn-templatespeccontainersliveness_probegrpcnew)
        * [`obj template.spec.containers.liveness_probe.http_get`](#obj-templatespeccontainersliveness_probehttp_get)
          * [`fn new()`](#fn-templatespeccontainersliveness_probehttp_getnew)
          * [`obj template.spec.containers.liveness_probe.http_get.http_headers`](#obj-templatespeccontainersliveness_probehttp_gethttp_headers)
            * [`fn new()`](#fn-templatespeccontainersliveness_probehttp_gethttp_headersnew)
      * [`obj template.spec.containers.ports`](#obj-templatespeccontainersports)
        * [`fn new()`](#fn-templatespeccontainersportsnew)
      * [`obj template.spec.containers.resources`](#obj-templatespeccontainersresources)
        * [`fn new()`](#fn-templatespeccontainersresourcesnew)
      * [`obj template.spec.containers.startup_probe`](#obj-templatespeccontainersstartup_probe)
        * [`fn new()`](#fn-templatespeccontainersstartup_probenew)
        * [`obj template.spec.containers.startup_probe.grpc`](#obj-templatespeccontainersstartup_probegrpc)
          * [`fn new()`](#fn-templatespeccontainersstartup_probegrpcnew)
        * [`obj template.spec.containers.startup_probe.http_get`](#obj-templatespeccontainersstartup_probehttp_get)
          * [`fn new()`](#fn-templatespeccontainersstartup_probehttp_getnew)
          * [`obj template.spec.containers.startup_probe.http_get.http_headers`](#obj-templatespeccontainersstartup_probehttp_gethttp_headers)
            * [`fn new()`](#fn-templatespeccontainersstartup_probehttp_gethttp_headersnew)
        * [`obj template.spec.containers.startup_probe.tcp_socket`](#obj-templatespeccontainersstartup_probetcp_socket)
          * [`fn new()`](#fn-templatespeccontainersstartup_probetcp_socketnew)
      * [`obj template.spec.containers.volume_mounts`](#obj-templatespeccontainersvolume_mounts)
        * [`fn new()`](#fn-templatespeccontainersvolume_mountsnew)
    * [`obj template.spec.volumes`](#obj-templatespecvolumes)
      * [`fn new()`](#fn-templatespecvolumesnew)
      * [`obj template.spec.volumes.secret`](#obj-templatespecvolumessecret)
        * [`fn new()`](#fn-templatespecvolumessecretnew)
        * [`obj template.spec.volumes.secret.items`](#obj-templatespecvolumessecretitems)
          * [`fn new()`](#fn-templatespecvolumessecretitemsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj traffic`](#obj-traffic)
  * [`fn new()`](#fn-trafficnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_run_service.new` injects a new `google_cloud_run_service` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_run_service.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_run_service` using the reference:

    $._ref.google_cloud_run_service.some_id.get('id')

This is the same as directly entering `"${ google_cloud_run_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `autogenerate_revision_name` (`bool`): If set to &#39;true&#39;, the revision name (template.metadata.name) will be omitted and
autogenerated by Cloud Run. This cannot be set to &#39;true&#39; while &#39;template.metadata.name&#39;
is also set.
(For legacy support, if &#39;template.metadata.name&#39; is unset in state while
this field is set to false, the revision name will still autogenerate.) When `null`, the `autogenerate_revision_name` field will be omitted from the resulting object.
  - `location` (`string`): The location of the cloud run instance. eg us-central1
  - `name` (`string`): Name must be unique within a Google Cloud project and region.
Is required when creating resources. Name is primarily intended
for creation idempotence and configuration definition. Cannot be updated.
More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `metadata` (`list[obj]`): Metadata associated with this Service, including name, namespace, labels,
and annotations. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.metadata.new](#fn-metadatanew) constructor.
  - `template` (`list[obj]`): template holds the latest specification for the Revision to
be stamped out. The template references the container image, and may also
include labels and annotations that should be attached to the Revision.
To correlate a Revision, and/or to force a Revision to be created when the
spec doesn&#39;t otherwise change, a nonce label may be provided in the
template metadata. For more details, see:
https://github.com/knative/serving/blob/main/docs/client-conventions.md#associate-modifications-with-revisions

Cloud Run does not currently support referencing a build that is
responsible for materializing the container image from source. When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.new](#fn-templatenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.timeouts.new](#fn-timeoutsnew) constructor.
  - `traffic` (`list[obj]`): Traffic specifies how to distribute traffic over a collection of Knative Revisions
and Configurations When `null`, the `traffic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.traffic.new](#fn-trafficnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_run_service.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_run_service`
Terraform resource.

Unlike [google.cloud_run_service.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `autogenerate_revision_name` (`bool`): If set to &#39;true&#39;, the revision name (template.metadata.name) will be omitted and
autogenerated by Cloud Run. This cannot be set to &#39;true&#39; while &#39;template.metadata.name&#39;
is also set.
(For legacy support, if &#39;template.metadata.name&#39; is unset in state while
this field is set to false, the revision name will still autogenerate.) When `null`, the `autogenerate_revision_name` field will be omitted from the resulting object.
  - `location` (`string`): The location of the cloud run instance. eg us-central1
  - `name` (`string`): Name must be unique within a Google Cloud project and region.
Is required when creating resources. Name is primarily intended
for creation idempotence and configuration definition. Cannot be updated.
More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `metadata` (`list[obj]`): Metadata associated with this Service, including name, namespace, labels,
and annotations. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.metadata.new](#fn-metadatanew) constructor.
  - `template` (`list[obj]`): template holds the latest specification for the Revision to
be stamped out. The template references the container image, and may also
include labels and annotations that should be attached to the Revision.
To correlate a Revision, and/or to force a Revision to be created when the
spec doesn&#39;t otherwise change, a nonce label may be provided in the
template metadata. For more details, see:
https://github.com/knative/serving/blob/main/docs/client-conventions.md#associate-modifications-with-revisions

Cloud Run does not currently support referencing a build that is
responsible for materializing the container image from source. When `null`, the `template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.new](#fn-templatenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.timeouts.new](#fn-timeoutsnew) constructor.
  - `traffic` (`list[obj]`): Traffic specifies how to distribute traffic over a collection of Knative Revisions
and Configurations When `null`, the `traffic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.traffic.new](#fn-trafficnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_run_service` resource into the root Terraform configuration.


### fn withAutogenerateRevisionName

```ts
withAutogenerateRevisionName()
```

`google.bool.withAutogenerateRevisionName` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the autogenerate_revision_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `autogenerate_revision_name` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMetadata

```ts
withMetadata()
```

`google.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMetadataMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata` field.


### fn withMetadataMixin

```ts
withMetadataMixin()
```

`google.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMetadata](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata` field.


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


## obj metadata



### fn metadata.new

```ts
new()
```


`google.cloud_run_service.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`
Terraform sub block.



**Args**:
  - `annotations` (`obj`): Annotations is a key value map stored with a resource that
may be set by external tools to store and retrieve arbitrary metadata. More
info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations

**Note**: The Cloud Run API may add additional annotations that were not provided in your config.
If terraform plan shows a diff where a server-side annotation is added, you can add it to your config
or apply the lifecycle.ignore_changes rule to the metadata.0.annotations field.

Annotations with &#39;run.googleapis.com/&#39; and &#39;autoscaling.knative.dev&#39; are restricted. Use the following annotation
keys to configure features on a Service:

- &#39;run.googleapis.com/binary-authorization-breakglass&#39; sets the [Binary Authorization breakglass](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--breakglass).
- &#39;run.googleapis.com/binary-authorization&#39; sets the [Binary Authorization](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--binary-authorization).
- &#39;run.googleapis.com/client-name&#39; sets the client name calling the Cloud Run API.
- &#39;run.googleapis.com/custom-audiences&#39; sets the [custom audiences](https://cloud.google.com/sdk/gcloud/reference/alpha/run/deploy#--add-custom-audiences)
  that can be used in the audience field of ID token for authenticated requests.
- &#39;run.googleapis.com/description&#39; sets a user defined description for the Service.
- &#39;run.googleapis.com/ingress&#39; sets the [ingress settings](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--ingress)
  for the Service. For example, &#39;&#34;run.googleapis.com/ingress&#34; = &#34;all&#34;&#39;.
- &#39;run.googleapis.com/launch-stage&#39; sets the [launch stage](https://cloud.google.com/run/docs/troubleshooting#launch-stage-validation)
  when a preview feature is used. For example, &#39;&#34;run.googleapis.com/launch-stage&#34;: &#34;BETA&#34;&#39;

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `labels` (`obj`): Map of string keys and values that can be used to organize and categorize
(scope and select) objects. May match selectors of replication controllers
and routes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `namespace` (`string`): In Cloud Run the namespace must be equal to either the
project ID or project number. When `null`, the `namespace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `metadata` sub block.


## obj template



### fn template.new

```ts
new()
```


`google.cloud_run_service.template.new` constructs a new object with attributes and blocks configured for the `template`
Terraform sub block.



**Args**:
  - `metadata` (`list[obj]`): Optional metadata for this Revision, including labels and annotations.
Name will be generated by the Configuration. To set minimum instances
for this revision, use the &#34;autoscaling.knative.dev/minScale&#34; annotation
key. To set maximum instances for this revision, use the
&#34;autoscaling.knative.dev/maxScale&#34; annotation key. To set Cloud SQL
connections for the revision, use the &#34;run.googleapis.com/cloudsql-instances&#34;
annotation key. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.metadata.new](#fn-templatemetadatanew) constructor.
  - `spec` (`list[obj]`): RevisionSpec holds the desired state of the Revision (from the client). When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.new](#fn-templatespecnew) constructor.

**Returns**:
  - An attribute object that represents the `template` sub block.


## obj template.metadata



### fn template.metadata.new

```ts
new()
```


`google.cloud_run_service.template.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`
Terraform sub block.



**Args**:
  - `annotations` (`obj`): Annotations is a key value map stored with a resource that
may be set by external tools to store and retrieve arbitrary metadata. More
info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations

**Note**: The Cloud Run API may add additional annotations that were not provided in your config.
If terraform plan shows a diff where a server-side annotation is added, you can add it to your config
or apply the lifecycle.ignore_changes rule to the metadata.0.annotations field.

Annotations with &#39;run.googleapis.com/&#39; and &#39;autoscaling.knative.dev&#39; are restricted. Use the following annotation
keys to configure features on a Revision template:

- &#39;autoscaling.knative.dev/maxScale&#39; sets the [maximum number of container
  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--max-instances) of the Revision to run.
- &#39;autoscaling.knative.dev/minScale&#39; sets the [minimum number of container
  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--min-instances) of the Revision to run.
- &#39;run.googleapis.com/client-name&#39; sets the client name calling the Cloud Run API.
- &#39;run.googleapis.com/cloudsql-instances&#39; sets the [Cloud SQL
  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--add-cloudsql-instances) the Revision connects to.
- &#39;run.googleapis.com/cpu-throttling&#39; sets whether to throttle the CPU when the container is not actively serving
  requests. See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--[no-]cpu-throttling.
- &#39;run.googleapis.com/encryption-key-shutdown-hours&#39; sets the number of hours to wait before an automatic shutdown
  server after CMEK key revocation is detected.
- &#39;run.googleapis.com/encryption-key&#39; sets the [CMEK key](https://cloud.google.com/run/docs/securing/using-cmek)
  reference to encrypt the container with.
- &#39;run.googleapis.com/execution-environment&#39; sets the [execution
  environment](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--execution-environment)
  where the application will run.
- &#39;run.googleapis.com/post-key-revocation-action-type&#39; sets the
  [action type](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--post-key-revocation-action-type)
  after CMEK key revocation.
- &#39;run.googleapis.com/secrets&#39; sets a list of key-value pairs to set as
  [secrets](https://cloud.google.com/run/docs/configuring/secrets#yaml).
- &#39;run.googleapis.com/sessionAffinity&#39; sets whether to enable
  [session affinity](https://cloud.google.com/sdk/gcloud/reference/beta/run/deploy#--[no-]session-affinity)
  for connections to the Revision.
- &#39;run.googleapis.com/startup-cpu-boost&#39; sets whether to allocate extra CPU to containers on startup.
  See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--[no-]cpu-boost.
- &#39;run.googleapis.com/vpc-access-connector&#39; sets a [VPC connector](https://cloud.google.com/run/docs/configuring/connecting-vpc#terraform_1)
  for the Revision.
- &#39;run.googleapis.com/vpc-access-egress&#39; sets the outbound traffic to send through the VPC connector for this resource.
  See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--vpc-egress. When `null`, the `annotations` field will be omitted from the resulting object.
  - `labels` (`obj`): Map of string keys and values that can be used to organize and categorize
(scope and select) objects. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name must be unique within a Google Cloud project and region.
Is required when creating resources. Name is primarily intended
for creation idempotence and configuration definition. Cannot be updated. When `null`, the `name` field will be omitted from the resulting object.
  - `namespace` (`string`): In Cloud Run the namespace must be equal to either the
project ID or project number. It will default to the resource&#39;s project. When `null`, the `namespace` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `metadata` sub block.


## obj template.spec



### fn template.spec.new

```ts
new()
```


`google.cloud_run_service.template.spec.new` constructs a new object with attributes and blocks configured for the `spec`
Terraform sub block.



**Args**:
  - `container_concurrency` (`number`): ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
requests per container of the Revision. Values are:
- &#39;0&#39; thread-safe, the system should manage the max concurrency. This is
    the default value.
- &#39;1&#39; not-thread-safe. Single concurrency
- &#39;2-N&#39; thread-safe, max concurrency of N When `null`, the `container_concurrency` field will be omitted from the resulting object.
  - `service_account_name` (`string`): Email address of the IAM service account associated with the revision of the
service. The service account represents the identity of the running revision,
and determines what permissions the revision has. If not provided, the revision
will use the project&#39;s default service account. When `null`, the `service_account_name` field will be omitted from the resulting object.
  - `timeout_seconds` (`number`): TimeoutSeconds holds the max duration the instance is allowed for responding to a request. When `null`, the `timeout_seconds` field will be omitted from the resulting object.
  - `containers` (`list[obj]`): Containers defines the unit of execution for this Revision. When `null`, the `containers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.new](#fn-templatetemplatecontainersnew) constructor.
  - `volumes` (`list[obj]`): Volume represents a named volume in a container. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.volumes.new](#fn-templatetemplatevolumesnew) constructor.

**Returns**:
  - An attribute object that represents the `spec` sub block.


## obj template.spec.containers



### fn template.spec.containers.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.new` constructs a new object with attributes and blocks configured for the `containers`
Terraform sub block.



**Args**:
  - `args` (`list`): Arguments to the entrypoint.
The docker image&#39;s CMD is used if this is not provided. When `null`, the `args` field will be omitted from the resulting object.
  - `command` (`list`): Entrypoint array. Not executed within a shell.
The docker image&#39;s ENTRYPOINT is used if this is not provided. When `null`, the `command` field will be omitted from the resulting object.
  - `image` (`string`): Docker image name. This is most often a reference to a container located
in the container registry, such as gcr.io/cloudrun/hello
  - `name` (`string`): Name of the container When `null`, the `name` field will be omitted from the resulting object.
  - `working_dir` (`string`): Container&#39;s working directory.
If not specified, the container runtime&#39;s default will be used, which
might be configured in the container image. When `null`, the `working_dir` field will be omitted from the resulting object.
  - `env` (`list[obj]`): List of environment variables to set in the container. When `null`, the `env` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.env.new](#fn-templatetemplatespecenvnew) constructor.
  - `env_from` (`list[obj]`): List of sources to populate environment variables in the container.
All invalid keys will be reported as an event when the container is starting.
When a key exists in multiple sources, the value associated with the last source will
take precedence. Values defined by an Env with a duplicate key will take
precedence. When `null`, the `env_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.env_from.new](#fn-templatetemplatespecenv_fromnew) constructor.
  - `liveness_probe` (`list[obj]`): Periodic probe of container liveness. Container will be restarted if the probe fails. When `null`, the `liveness_probe` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.liveness_probe.new](#fn-templatetemplatespecliveness_probenew) constructor.
  - `ports` (`list[obj]`): List of open ports in the container. When `null`, the `ports` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.ports.new](#fn-templatetemplatespecportsnew) constructor.
  - `resources` (`list[obj]`): Compute Resources required by this container. Used to set values such as max memory When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.resources.new](#fn-templatetemplatespecresourcesnew) constructor.
  - `startup_probe` (`list[obj]`): Startup probe of application within the container.
All other probes are disabled if a startup probe is provided, until it
succeeds. Container will not be added to service endpoints if the probe fails. When `null`, the `startup_probe` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.startup_probe.new](#fn-templatetemplatespecstartup_probenew) constructor.
  - `volume_mounts` (`list[obj]`): Volume to mount into the container&#39;s filesystem.
Only supports SecretVolumeSources. When `null`, the `volume_mounts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.volume_mounts.new](#fn-templatetemplatespecvolume_mountsnew) constructor.

**Returns**:
  - An attribute object that represents the `containers` sub block.


## obj template.spec.containers.env



### fn template.spec.containers.env.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.env.new` constructs a new object with attributes and blocks configured for the `env`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the environment variable. When `null`, the `name` field will be omitted from the resulting object.
  - `value` (`string`): Defaults to &#34;&#34;. When `null`, the `value` field will be omitted from the resulting object.
  - `value_from` (`list[obj]`): Source for the environment variable&#39;s value. Only supports secret_key_ref. When `null`, the `value_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.env.value_from.new](#fn-templatetemplatespeccontainersvalue_fromnew) constructor.

**Returns**:
  - An attribute object that represents the `env` sub block.


## obj template.spec.containers.env.value_from



### fn template.spec.containers.env.value_from.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.env.value_from.new` constructs a new object with attributes and blocks configured for the `value_from`
Terraform sub block.



**Args**:
  - `secret_key_ref` (`list[obj]`): Selects a key (version) of a secret in Secret Manager. When `null`, the `secret_key_ref` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.env.value_from.secret_key_ref.new](#fn-templatetemplatespeccontainersenvsecret_key_refnew) constructor.

**Returns**:
  - An attribute object that represents the `value_from` sub block.


## obj template.spec.containers.env.value_from.secret_key_ref



### fn template.spec.containers.env.value_from.secret_key_ref.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.env.value_from.secret_key_ref.new` constructs a new object with attributes and blocks configured for the `secret_key_ref`
Terraform sub block.



**Args**:
  - `key` (`string`): A Cloud Secret Manager secret version. Must be &#39;latest&#39; for the latest
version or an integer for a specific version.
  - `name` (`string`): The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project.
If the secret is in another project, you must define an alias.
An alias definition has the form: :projects/{project-id|project-number}/secrets/.
If multiple alias definitions are needed, they must be separated by commas.
The alias definitions must be set on the run.googleapis.com/secrets annotation.

**Returns**:
  - An attribute object that represents the `secret_key_ref` sub block.


## obj template.spec.containers.env_from



### fn template.spec.containers.env_from.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.env_from.new` constructs a new object with attributes and blocks configured for the `env_from`
Terraform sub block.



**Args**:
  - `prefix` (`string`): An optional identifier to prepend to each key in the ConfigMap. When `null`, the `prefix` field will be omitted from the resulting object.
  - `config_map_ref` (`list[obj]`): The ConfigMap to select from. When `null`, the `config_map_ref` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.env_from.config_map_ref.new](#fn-templatetemplatespeccontainersconfig_map_refnew) constructor.
  - `secret_ref` (`list[obj]`): The Secret to select from. When `null`, the `secret_ref` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.env_from.secret_ref.new](#fn-templatetemplatespeccontainerssecret_refnew) constructor.

**Returns**:
  - An attribute object that represents the `env_from` sub block.


## obj template.spec.containers.env_from.config_map_ref



### fn template.spec.containers.env_from.config_map_ref.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.env_from.config_map_ref.new` constructs a new object with attributes and blocks configured for the `config_map_ref`
Terraform sub block.



**Args**:
  - `optional` (`bool`): Specify whether the ConfigMap must be defined When `null`, the `optional` field will be omitted from the resulting object.
  - `local_object_reference` (`list[obj]`): The ConfigMap to select from. When `null`, the `local_object_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.env_from.config_map_ref.local_object_reference.new](#fn-templatetemplatespeccontainersenv_fromlocal_object_referencenew) constructor.

**Returns**:
  - An attribute object that represents the `config_map_ref` sub block.


## obj template.spec.containers.env_from.config_map_ref.local_object_reference



### fn template.spec.containers.env_from.config_map_ref.local_object_reference.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.env_from.config_map_ref.local_object_reference.new` constructs a new object with attributes and blocks configured for the `local_object_reference`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the referent.

**Returns**:
  - An attribute object that represents the `local_object_reference` sub block.


## obj template.spec.containers.env_from.secret_ref



### fn template.spec.containers.env_from.secret_ref.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.env_from.secret_ref.new` constructs a new object with attributes and blocks configured for the `secret_ref`
Terraform sub block.



**Args**:
  - `optional` (`bool`): Specify whether the Secret must be defined When `null`, the `optional` field will be omitted from the resulting object.
  - `local_object_reference` (`list[obj]`): The Secret to select from. When `null`, the `local_object_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.env_from.secret_ref.local_object_reference.new](#fn-templatetemplatespeccontainersenv_fromlocal_object_referencenew) constructor.

**Returns**:
  - An attribute object that represents the `secret_ref` sub block.


## obj template.spec.containers.env_from.secret_ref.local_object_reference



### fn template.spec.containers.env_from.secret_ref.local_object_reference.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.env_from.secret_ref.local_object_reference.new` constructs a new object with attributes and blocks configured for the `local_object_reference`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the referent.

**Returns**:
  - An attribute object that represents the `local_object_reference` sub block.


## obj template.spec.containers.liveness_probe



### fn template.spec.containers.liveness_probe.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.liveness_probe.new` constructs a new object with attributes and blocks configured for the `liveness_probe`
Terraform sub block.



**Args**:
  - `failure_threshold` (`number`): Minimum consecutive failures for the probe to be considered failed after
having succeeded. Defaults to 3. Minimum value is 1. When `null`, the `failure_threshold` field will be omitted from the resulting object.
  - `initial_delay_seconds` (`number`): Number of seconds after the container has started before the probe is
initiated.
Defaults to 0 seconds. Minimum value is 0. Maximum value is 3600. When `null`, the `initial_delay_seconds` field will be omitted from the resulting object.
  - `period_seconds` (`number`): How often (in seconds) to perform the probe.
Default to 10 seconds. Minimum value is 1. Maximum value is 3600. When `null`, the `period_seconds` field will be omitted from the resulting object.
  - `timeout_seconds` (`number`): Number of seconds after which the probe times out.
Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
Must be smaller than period_seconds. When `null`, the `timeout_seconds` field will be omitted from the resulting object.
  - `grpc` (`list[obj]`): GRPC specifies an action involving a GRPC port. When `null`, the `grpc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.liveness_probe.grpc.new](#fn-templatetemplatespeccontainersgrpcnew) constructor.
  - `http_get` (`list[obj]`): HttpGet specifies the http request to perform. When `null`, the `http_get` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.liveness_probe.http_get.new](#fn-templatetemplatespeccontainershttp_getnew) constructor.

**Returns**:
  - An attribute object that represents the `liveness_probe` sub block.


## obj template.spec.containers.liveness_probe.grpc



### fn template.spec.containers.liveness_probe.grpc.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.liveness_probe.grpc.new` constructs a new object with attributes and blocks configured for the `grpc`
Terraform sub block.



**Args**:
  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service to place in the gRPC HealthCheckRequest
(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
If this is not specified, the default behavior is defined by gRPC. When `null`, the `service` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `grpc` sub block.


## obj template.spec.containers.liveness_probe.http_get



### fn template.spec.containers.liveness_probe.http_get.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.liveness_probe.http_get.new` constructs a new object with attributes and blocks configured for the `http_get`
Terraform sub block.



**Args**:
  - `path` (`string`): Path to access on the HTTP server. If set, it should not be empty string. When `null`, the `path` field will be omitted from the resulting object.
  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.
  - `http_headers` (`list[obj]`): Custom headers to set in the request. HTTP allows repeated headers. When `null`, the `http_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.liveness_probe.http_get.http_headers.new](#fn-templatetemplatespeccontainersliveness_probehttp_headersnew) constructor.

**Returns**:
  - An attribute object that represents the `http_get` sub block.


## obj template.spec.containers.liveness_probe.http_get.http_headers



### fn template.spec.containers.liveness_probe.http_get.http_headers.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.liveness_probe.http_get.http_headers.new` constructs a new object with attributes and blocks configured for the `http_headers`
Terraform sub block.



**Args**:
  - `name` (`string`): The header field name.
  - `value` (`string`): The header field value. When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `http_headers` sub block.


## obj template.spec.containers.ports



### fn template.spec.containers.ports.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.ports.new` constructs a new object with attributes and blocks configured for the `ports`
Terraform sub block.



**Args**:
  - `container_port` (`number`): Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to &#34;8080&#34;. When `null`, the `container_port` field will be omitted from the resulting object.
  - `name` (`string`): If specified, used to specify which protocol to use. Allowed values are &#34;http1&#34; (HTTP/1) and &#34;h2c&#34; (HTTP/2 end-to-end). Defaults to &#34;http1&#34;. When `null`, the `name` field will be omitted from the resulting object.
  - `protocol` (`string`): Protocol for port. Must be &#34;TCP&#34;. Defaults to &#34;TCP&#34;. When `null`, the `protocol` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ports` sub block.


## obj template.spec.containers.resources



### fn template.spec.containers.resources.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.resources.new` constructs a new object with attributes and blocks configured for the `resources`
Terraform sub block.



**Args**:
  - `limits` (`obj`): Limits describes the maximum amount of compute resources allowed.
The values of the map is string form of the &#39;quantity&#39; k8s type:
https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go When `null`, the `limits` field will be omitted from the resulting object.
  - `requests` (`obj`): Requests describes the minimum amount of compute resources required.
If Requests is omitted for a container, it defaults to Limits if that is
explicitly specified, otherwise to an implementation-defined value.
The values of the map is string form of the &#39;quantity&#39; k8s type:
https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go When `null`, the `requests` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `resources` sub block.


## obj template.spec.containers.startup_probe



### fn template.spec.containers.startup_probe.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.startup_probe.new` constructs a new object with attributes and blocks configured for the `startup_probe`
Terraform sub block.



**Args**:
  - `failure_threshold` (`number`): Minimum consecutive failures for the probe to be considered failed after
having succeeded. Defaults to 3. Minimum value is 1. When `null`, the `failure_threshold` field will be omitted from the resulting object.
  - `initial_delay_seconds` (`number`): Number of seconds after the container has started before the probe is
initiated.
Defaults to 0 seconds. Minimum value is 0. Maximum value is 240. When `null`, the `initial_delay_seconds` field will be omitted from the resulting object.
  - `period_seconds` (`number`): How often (in seconds) to perform the probe.
Default to 10 seconds. Minimum value is 1. Maximum value is 240. When `null`, the `period_seconds` field will be omitted from the resulting object.
  - `timeout_seconds` (`number`): Number of seconds after which the probe times out.
Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
Must be smaller than periodSeconds. When `null`, the `timeout_seconds` field will be omitted from the resulting object.
  - `grpc` (`list[obj]`): GRPC specifies an action involving a GRPC port. When `null`, the `grpc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.startup_probe.grpc.new](#fn-templatetemplatespeccontainersgrpcnew) constructor.
  - `http_get` (`list[obj]`): HttpGet specifies the http request to perform. When `null`, the `http_get` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.startup_probe.http_get.new](#fn-templatetemplatespeccontainershttp_getnew) constructor.
  - `tcp_socket` (`list[obj]`): TcpSocket specifies an action involving a TCP port. When `null`, the `tcp_socket` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.startup_probe.tcp_socket.new](#fn-templatetemplatespeccontainerstcp_socketnew) constructor.

**Returns**:
  - An attribute object that represents the `startup_probe` sub block.


## obj template.spec.containers.startup_probe.grpc



### fn template.spec.containers.startup_probe.grpc.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.startup_probe.grpc.new` constructs a new object with attributes and blocks configured for the `grpc`
Terraform sub block.



**Args**:
  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.
  - `service` (`string`): The name of the service to place in the gRPC HealthCheckRequest
(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
If this is not specified, the default behavior is defined by gRPC. When `null`, the `service` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `grpc` sub block.


## obj template.spec.containers.startup_probe.http_get



### fn template.spec.containers.startup_probe.http_get.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.startup_probe.http_get.new` constructs a new object with attributes and blocks configured for the `http_get`
Terraform sub block.



**Args**:
  - `path` (`string`): Path to access on the HTTP server. If set, it should not be empty string. When `null`, the `path` field will be omitted from the resulting object.
  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.
  - `http_headers` (`list[obj]`): Custom headers to set in the request. HTTP allows repeated headers. When `null`, the `http_headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.containers.startup_probe.http_get.http_headers.new](#fn-templatetemplatespeccontainersstartup_probehttp_headersnew) constructor.

**Returns**:
  - An attribute object that represents the `http_get` sub block.


## obj template.spec.containers.startup_probe.http_get.http_headers



### fn template.spec.containers.startup_probe.http_get.http_headers.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.startup_probe.http_get.http_headers.new` constructs a new object with attributes and blocks configured for the `http_headers`
Terraform sub block.



**Args**:
  - `name` (`string`): The header field name.
  - `value` (`string`): The header field value. When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `http_headers` sub block.


## obj template.spec.containers.startup_probe.tcp_socket



### fn template.spec.containers.startup_probe.tcp_socket.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.startup_probe.tcp_socket.new` constructs a new object with attributes and blocks configured for the `tcp_socket`
Terraform sub block.



**Args**:
  - `port` (`number`): Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. When `null`, the `port` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `tcp_socket` sub block.


## obj template.spec.containers.volume_mounts



### fn template.spec.containers.volume_mounts.new

```ts
new()
```


`google.cloud_run_service.template.spec.containers.volume_mounts.new` constructs a new object with attributes and blocks configured for the `volume_mounts`
Terraform sub block.



**Args**:
  - `mount_path` (`string`): Path within the container at which the volume should be mounted.  Must
not contain &#39;:&#39;.
  - `name` (`string`): This must match the Name of a Volume.

**Returns**:
  - An attribute object that represents the `volume_mounts` sub block.


## obj template.spec.volumes



### fn template.spec.volumes.new

```ts
new()
```


`google.cloud_run_service.template.spec.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`
Terraform sub block.



**Args**:
  - `name` (`string`): Volume&#39;s name.
  - `secret` (`list[obj]`): The secret&#39;s value will be presented as the content of a file whose
name is defined in the item path. If no items are defined, the name of
the file is the secret_name. When `null`, the `secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.volumes.secret.new](#fn-templatetemplatespecsecretnew) constructor.

**Returns**:
  - An attribute object that represents the `volumes` sub block.


## obj template.spec.volumes.secret



### fn template.spec.volumes.secret.new

```ts
new()
```


`google.cloud_run_service.template.spec.volumes.secret.new` constructs a new object with attributes and blocks configured for the `secret`
Terraform sub block.



**Args**:
  - `default_mode` (`number`): Mode bits to use on created files by default. Must be a value between 0000
and 0777. Defaults to 0644. Directories within the path are not affected by
this setting. This might be in conflict with other options that affect the
file mode, like fsGroup, and the result can be other mode bits set. When `null`, the `default_mode` field will be omitted from the resulting object.
  - `secret_name` (`string`): The name of the secret in Cloud Secret Manager. By default, the secret
is assumed to be in the same project.
If the secret is in another project, you must define an alias.
An alias definition has the form:
{alias}:projects/{project-id|project-number}/secrets/{secret-name}.
If multiple alias definitions are needed, they must be separated by
commas.
The alias definitions must be set on the run.googleapis.com/secrets
annotation.
  - `items` (`list[obj]`): If unspecified, the volume will expose a file whose name is the
secret_name.
If specified, the key will be used as the version to fetch from Cloud
Secret Manager and the path will be the name of the file exposed in the
volume. When items are defined, they must specify a key and a path. When `null`, the `items` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_service.template.spec.volumes.secret.items.new](#fn-templatetemplatespecvolumesitemsnew) constructor.

**Returns**:
  - An attribute object that represents the `secret` sub block.


## obj template.spec.volumes.secret.items



### fn template.spec.volumes.secret.items.new

```ts
new()
```


`google.cloud_run_service.template.spec.volumes.secret.items.new` constructs a new object with attributes and blocks configured for the `items`
Terraform sub block.



**Args**:
  - `key` (`string`): The Cloud Secret Manager secret version.
Can be &#39;latest&#39; for the latest value or an integer for a specific version.
  - `mode` (`number`): Mode bits to use on this file, must be a value between 0000 and 0777. If
not specified, the volume defaultMode will be used. This might be in
conflict with other options that affect the file mode, like fsGroup, and
the result can be other mode bits set. When `null`, the `mode` field will be omitted from the resulting object.
  - `path` (`string`): The relative path of the file to map the key to.
May not be an absolute path.
May not contain the path element &#39;..&#39;.
May not start with the string &#39;..&#39;.

**Returns**:
  - An attribute object that represents the `items` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloud_run_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
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


`google.cloud_run_service.traffic.new` constructs a new object with attributes and blocks configured for the `traffic`
Terraform sub block.



**Args**:
  - `latest_revision` (`bool`): LatestRevision may be optionally provided to indicate that the latest ready
Revision of the Configuration should be used for this traffic target. When
provided LatestRevision must be true if RevisionName is empty; it must be
false when RevisionName is non-empty. When `null`, the `latest_revision` field will be omitted from the resulting object.
  - `percent` (`number`): Percent specifies percent of the traffic to this Revision or Configuration.
  - `revision_name` (`string`): RevisionName of a specific revision to which to send this portion of traffic. When `null`, the `revision_name` field will be omitted from the resulting object.
  - `tag` (`string`): Tag is optionally used to expose a dedicated url for referencing this target exclusively. When `null`, the `tag` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `traffic` sub block.
