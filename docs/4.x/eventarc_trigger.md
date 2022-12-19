---
permalink: /eventarc_trigger/
---

# eventarc_trigger

`eventarc_trigger` represents the `google_eventarc_trigger` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withChannel()`](#fn-withchannel)
* [`fn withDestination()`](#fn-withdestination)
* [`fn withDestinationMixin()`](#fn-withdestinationmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMatchingCriteria()`](#fn-withmatchingcriteria)
* [`fn withMatchingCriteriaMixin()`](#fn-withmatchingcriteriamixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTransport()`](#fn-withtransport)
* [`fn withTransportMixin()`](#fn-withtransportmixin)
* [`obj destination`](#obj-destination)
  * [`fn new()`](#fn-destinationnew)
  * [`obj destination.cloud_run_service`](#obj-destinationcloud_run_service)
    * [`fn new()`](#fn-destinationcloud_run_servicenew)
  * [`obj destination.gke`](#obj-destinationgke)
    * [`fn new()`](#fn-destinationgkenew)
* [`obj matching_criteria`](#obj-matching_criteria)
  * [`fn new()`](#fn-matching_criterianew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj transport`](#obj-transport)
  * [`fn new()`](#fn-transportnew)
  * [`obj transport.pubsub`](#obj-transportpubsub)
    * [`fn new()`](#fn-transportpubsubnew)

## Fields

### fn new

```ts
new()
```


`google.eventarc_trigger.new` injects a new `google_eventarc_trigger` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.eventarc_trigger.new('some_id')

You can get the reference to the `id` field of the created `google.eventarc_trigger` using the reference:

    $._ref.google_eventarc_trigger.some_id.get('id')

This is the same as directly entering `"${ google_eventarc_trigger.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `channel` (`string`): Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners. When `null`, the `channel` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. User labels attached to the triggers that can be used to group resources. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Required. The resource name of the trigger. Must be unique within the location on the project.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role. When `null`, the `service_account` field will be omitted from the resulting object.
  - `destination` (`list[obj]`): Required. Destination specifies where the events should be sent to. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.destination.new](#fn-eventarctriggerdestinationnew) constructor.
  - `matching_criteria` (`list[obj]`): Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination. When `null`, the `matching_criteria` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.matching_criteria.new](#fn-eventarctriggermatchingcriterianew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.timeouts.new](#fn-eventarctriggertimeoutsnew) constructor.
  - `transport` (`list[obj]`): Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes. When `null`, the `transport` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.transport.new](#fn-eventarctriggertransportnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.eventarc_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `eventarc_trigger`
Terraform resource.

Unlike [google.eventarc_trigger.new](#fn-eventarctriggernew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `channel` (`string`): Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners. When `null`, the `channel` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. User labels attached to the triggers that can be used to group resources. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Required. The resource name of the trigger. Must be unique within the location on the project.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role. When `null`, the `service_account` field will be omitted from the resulting object.
  - `destination` (`list[obj]`): Required. Destination specifies where the events should be sent to. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.destination.new](#fn-eventarctriggerdestinationnew) constructor.
  - `matching_criteria` (`list[obj]`): Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination. When `null`, the `matching_criteria` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.matching_criteria.new](#fn-eventarctriggermatchingcriterianew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.timeouts.new](#fn-eventarctriggertimeoutsnew) constructor.
  - `transport` (`list[obj]`): Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes. When `null`, the `transport` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.transport.new](#fn-eventarctriggertransportnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `eventarc_trigger` resource into the root Terraform configuration.


### fn withChannel

```ts
withChannel()
```

`google.eventarc_trigger.withChannel` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the channel field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `channel` field.


### fn withDestination

```ts
withDestination()
```

`google.eventarc_trigger.withDestination` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the destination field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `destination` field.


### fn withDestinationMixin

```ts
withDestinationMixin()
```

`google.eventarc_trigger.withDestinationMixin` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the destination field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.eventarc_trigger.withDestination](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `destination` field.


### fn withLabels

```ts
withLabels()
```

`google.eventarc_trigger.withLabels` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.eventarc_trigger.withLocation` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withMatchingCriteria

```ts
withMatchingCriteria()
```

`google.eventarc_trigger.withMatchingCriteria` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the matching_criteria field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `matching_criteria` field.


### fn withMatchingCriteriaMixin

```ts
withMatchingCriteriaMixin()
```

`google.eventarc_trigger.withMatchingCriteriaMixin` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the matching_criteria field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.eventarc_trigger.withMatchingCriteria](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `matching_criteria` field.


### fn withName

```ts
withName()
```

`google.eventarc_trigger.withName` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.eventarc_trigger.withProject` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.eventarc_trigger.withServiceAccount` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `service_account` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.eventarc_trigger.withTimeouts` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.eventarc_trigger.withTimeoutsMixin` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.eventarc_trigger.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTransport

```ts
withTransport()
```

`google.eventarc_trigger.withTransport` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the transport field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `transport` field.


### fn withTransportMixin

```ts
withTransportMixin()
```

`google.eventarc_trigger.withTransportMixin` constructs a mixin object that can be merged into the `eventarc_trigger`
Terraform resource block to set or update the transport field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.eventarc_trigger.withTransport](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `transport` field.


## obj destination



### fn destination.new

```ts
new()
```


`google.eventarc_trigger.destination.new` constructs a new object with attributes and blocks configured for the `destination`
Terraform sub block.



**Args**:
  - `cloud_function` (`string`): [WARNING] Configuring a Cloud Function in Trigger is not supported as of today. The Cloud Function resource name. Format: projects/{project}/locations/{location}/functions/{function} When `null`, the `cloud_function` field will be omitted from the resulting object.
  - `workflow` (`string`): The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}` When `null`, the `workflow` field will be omitted from the resulting object.
  - `cloud_run_service` (`list[obj]`): Cloud Run fully-managed service that receives the events. The service should be running in the same project of the trigger. When `null`, the `cloud_run_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.destination.cloud_run_service.new](#fn-destinationcloudrunservicenew) constructor.
  - `gke` (`list[obj]`): A GKE service capable of receiving events. The service should be running in the same project as the trigger. When `null`, the `gke` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.destination.gke.new](#fn-destinationgkenew) constructor.

**Returns**:
  - An attribute object that represents the `destination` sub block.


## obj destination.cloud_run_service



### fn destination.cloud_run_service.new

```ts
new()
```


`google.eventarc_trigger.destination.cloud_run_service.new` constructs a new object with attributes and blocks configured for the `cloud_run_service`
Terraform sub block.



**Args**:
  - `path` (`string`): Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of URI path segment (section 3.3 of RFC2396). Examples: &#34;/route&#34;, &#34;route&#34;, &#34;route/subroute&#34;. When `null`, the `path` field will be omitted from the resulting object.
  - `region` (`string`): Required. The region the Cloud Run service is deployed in. When `null`, the `region` field will be omitted from the resulting object.
  - `service` (`string`): Required. The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project of the trigger object can be addressed.

**Returns**:
  - An attribute object that represents the `cloud_run_service` sub block.


## obj destination.gke



### fn destination.gke.new

```ts
new()
```


`google.eventarc_trigger.destination.gke.new` constructs a new object with attributes and blocks configured for the `gke`
Terraform sub block.



**Args**:
  - `cluster` (`string`): Required. The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.
  - `location` (`string`): Required. The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.
  - `namespace` (`string`): Required. The namespace the GKE service is running in.
  - `path` (`string`): Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: &#34;/route&#34;, &#34;route&#34;, &#34;route/subroute&#34;. When `null`, the `path` field will be omitted from the resulting object.
  - `service` (`string`): Required. Name of the GKE service.

**Returns**:
  - An attribute object that represents the `gke` sub block.


## obj matching_criteria



### fn matching_criteria.new

```ts
new()
```


`google.eventarc_trigger.matching_criteria.new` constructs a new object with attributes and blocks configured for the `matching_criteria`
Terraform sub block.



**Args**:
  - `attribute` (`string`): Required. The name of a CloudEvents attribute. Currently, only a subset of attributes are supported for filtering. All triggers MUST provide a filter for the &#39;type&#39; attribute.
  - `operator` (`string`): Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`. When `null`, the `operator` field will be omitted from the resulting object.
  - `value` (`string`): Required. The value for the attribute. See https://cloud.google.com/eventarc/docs/creating-triggers#trigger-gcloud for available values.

**Returns**:
  - An attribute object that represents the `matching_criteria` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.eventarc_trigger.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj transport



### fn transport.new

```ts
new()
```


`google.eventarc_trigger.transport.new` constructs a new object with attributes and blocks configured for the `transport`
Terraform sub block.



**Args**:
  - `pubsub` (`list[obj]`): The Pub/Sub topic and subscription used by Eventarc as delivery intermediary. When `null`, the `pubsub` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.transport.pubsub.new](#fn-transportpubsubnew) constructor.

**Returns**:
  - An attribute object that represents the `transport` sub block.


## obj transport.pubsub



### fn transport.pubsub.new

```ts
new()
```


`google.eventarc_trigger.transport.pubsub.new` constructs a new object with attributes and blocks configured for the `pubsub`
Terraform sub block.



**Args**:
  - `topic` (`string`): Optional. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}. You may set an existing topic for triggers of the type google.cloud.pubsub.topic.v1.messagePublished` only. The topic you provide here will not be deleted by Eventarc at trigger deletion. When `null`, the `topic` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `pubsub` sub block.
