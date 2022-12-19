local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='eventarc_trigger', url='', help='`eventarc_trigger` represents the `google_eventarc_trigger` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  destination:: {
    cloud_run_service:: {
      '#new':: d.fn(help='\n`google.eventarc_trigger.destination.cloud_run_service.new` constructs a new object with attributes and blocks configured for the `cloud_run_service`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of URI path segment (section 3.3 of RFC2396). Examples: &#34;/route&#34;, &#34;route&#34;, &#34;route/subroute&#34;. When `null`, the `path` field will be omitted from the resulting object.\n  - `region` (`string`): Required. The region the Cloud Run service is deployed in. When `null`, the `region` field will be omitted from the resulting object.\n  - `service` (`string`): Required. The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project of the trigger object can be addressed.\n\n**Returns**:\n  - An attribute object that represents the `cloud_run_service` sub block.\n', args=[]),
      new(
        service,
        path=null,
        region=null
      ):: std.prune(a={
        path: path,
        region: region,
        service: service,
      }),
    },
    gke:: {
      '#new':: d.fn(help='\n`google.eventarc_trigger.destination.gke.new` constructs a new object with attributes and blocks configured for the `gke`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster` (`string`): Required. The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.\n  - `location` (`string`): Required. The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.\n  - `namespace` (`string`): Required. The namespace the GKE service is running in.\n  - `path` (`string`): Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: &#34;/route&#34;, &#34;route&#34;, &#34;route/subroute&#34;. When `null`, the `path` field will be omitted from the resulting object.\n  - `service` (`string`): Required. Name of the GKE service.\n\n**Returns**:\n  - An attribute object that represents the `gke` sub block.\n', args=[]),
      new(
        cluster,
        location,
        namespace,
        service,
        path=null
      ):: std.prune(a={
        cluster: cluster,
        location: location,
        namespace: namespace,
        path: path,
        service: service,
      }),
    },
    '#new':: d.fn(help='\n`google.eventarc_trigger.destination.new` constructs a new object with attributes and blocks configured for the `destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_function` (`string`): [WARNING] Configuring a Cloud Function in Trigger is not supported as of today. The Cloud Function resource name. Format: projects/{project}/locations/{location}/functions/{function} When `null`, the `cloud_function` field will be omitted from the resulting object.\n  - `workflow` (`string`): The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}` When `null`, the `workflow` field will be omitted from the resulting object.\n  - `cloud_run_service` (`list[obj]`): Cloud Run fully-managed service that receives the events. The service should be running in the same project of the trigger. When `null`, the `cloud_run_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.destination.cloud_run_service.new](#fn-cloud_run_servicenew) constructor.\n  - `gke` (`list[obj]`): A GKE service capable of receiving events. The service should be running in the same project as the trigger. When `null`, the `gke` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.destination.gke.new](#fn-gkenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `destination` sub block.\n', args=[]),
    new(
      cloud_function=null,
      cloud_run_service=null,
      gke=null,
      workflow=null
    ):: std.prune(a={
      cloud_function: cloud_function,
      cloud_run_service: cloud_run_service,
      gke: gke,
      workflow: workflow,
    }),
  },
  matching_criteria:: {
    '#new':: d.fn(help='\n`google.eventarc_trigger.matching_criteria.new` constructs a new object with attributes and blocks configured for the `matching_criteria`\nTerraform sub block.\n\n\n\n**Args**:\n  - `attribute` (`string`): Required. The name of a CloudEvents attribute. Currently, only a subset of attributes are supported for filtering. All triggers MUST provide a filter for the &#39;type&#39; attribute.\n  - `operator` (`string`): Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`. When `null`, the `operator` field will be omitted from the resulting object.\n  - `value` (`string`): Required. The value for the attribute. See https://cloud.google.com/eventarc/docs/creating-triggers#trigger-gcloud for available values.\n\n**Returns**:\n  - An attribute object that represents the `matching_criteria` sub block.\n', args=[]),
    new(
      attribute,
      value,
      operator=null
    ):: std.prune(a={
      attribute: attribute,
      operator: operator,
      value: value,
    }),
  },
  '#new':: d.fn(help="\n`google.eventarc_trigger.new` injects a new `google_eventarc_trigger` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.eventarc_trigger.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.eventarc_trigger` using the reference:\n\n    $._ref.google_eventarc_trigger.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_eventarc_trigger.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `channel` (`string`): Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners. When `null`, the `channel` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. User labels attached to the triggers that can be used to group resources. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Required. The resource name of the trigger. Must be unique within the location on the project.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `destination` (`list[obj]`): Required. Destination specifies where the events should be sent to. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.destination.new](#fn-destinationnew) constructor.\n  - `matching_criteria` (`list[obj]`): Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination. When `null`, the `matching_criteria` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.matching_criteria.new](#fn-matching_criterianew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.timeouts.new](#fn-timeoutsnew) constructor.\n  - `transport` (`list[obj]`): Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes. When `null`, the `transport` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.transport.new](#fn-transportnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    channel=null,
    destination=null,
    labels=null,
    matching_criteria=null,
    project=null,
    service_account=null,
    timeouts=null,
    transport=null,
    _meta={}
  ):: tf.withResource(
    type='google_eventarc_trigger',
    label=resourceLabel,
    attrs=self.newAttrs(
      channel=channel,
      destination=destination,
      labels=labels,
      location=location,
      matching_criteria=matching_criteria,
      name=name,
      project=project,
      service_account=service_account,
      timeouts=timeouts,
      transport=transport
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.eventarc_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `eventarc_trigger`\nTerraform resource.\n\nUnlike [google.eventarc_trigger.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `channel` (`string`): Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners. When `null`, the `channel` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. User labels attached to the triggers that can be used to group resources. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Required. The resource name of the trigger. Must be unique within the location on the project.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `destination` (`list[obj]`): Required. Destination specifies where the events should be sent to. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.destination.new](#fn-destinationnew) constructor.\n  - `matching_criteria` (`list[obj]`): Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination. When `null`, the `matching_criteria` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.matching_criteria.new](#fn-matching_criterianew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.timeouts.new](#fn-timeoutsnew) constructor.\n  - `transport` (`list[obj]`): Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes. When `null`, the `transport` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.transport.new](#fn-transportnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `eventarc_trigger` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    channel=null,
    destination=null,
    labels=null,
    matching_criteria=null,
    project=null,
    service_account=null,
    timeouts=null,
    transport=null
  ):: std.prune(a={
    channel: channel,
    destination: destination,
    labels: labels,
    location: location,
    matching_criteria: matching_criteria,
    name: name,
    project: project,
    service_account: service_account,
    timeouts: timeouts,
    transport: transport,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.eventarc_trigger.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  transport:: {
    '#new':: d.fn(help='\n`google.eventarc_trigger.transport.new` constructs a new object with attributes and blocks configured for the `transport`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pubsub` (`list[obj]`): The Pub/Sub topic and subscription used by Eventarc as delivery intermediary. When `null`, the `pubsub` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.eventarc_trigger.transport.pubsub.new](#fn-pubsubnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `transport` sub block.\n', args=[]),
    new(
      pubsub=null
    ):: std.prune(a={
      pubsub: pubsub,
    }),
    pubsub:: {
      '#new':: d.fn(help='\n`google.eventarc_trigger.transport.pubsub.new` constructs a new object with attributes and blocks configured for the `pubsub`\nTerraform sub block.\n\n\n\n**Args**:\n  - `topic` (`string`): Optional. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}. You may set an existing topic for triggers of the type google.cloud.pubsub.topic.v1.messagePublished` only. The topic you provide here will not be deleted by Eventarc at trigger deletion. When `null`, the `topic` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `pubsub` sub block.\n', args=[]),
      new(
        topic=null
      ):: std.prune(a={
        topic: topic,
      }),
    },
  },
  '#withChannel':: d.fn(help='`google.string.withChannel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the channel field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `channel` field.\n', args=[]),
  withChannel(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          channel: value,
        },
      },
    },
  },
  '#withDestination':: d.fn(help='`google.list[obj].withDestination` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDestinationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination` field.\n', args=[]),
  withDestination(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          destination: value,
        },
      },
    },
  },
  '#withDestinationMixin':: d.fn(help='`google.list[obj].withDestinationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDestination](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination` field.\n', args=[]),
  withDestinationMixin(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          destination+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMatchingCriteria':: d.fn(help='`google.list[obj].withMatchingCriteria` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the matching_criteria field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMatchingCriteriaMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `matching_criteria` field.\n', args=[]),
  withMatchingCriteria(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          matching_criteria: value,
        },
      },
    },
  },
  '#withMatchingCriteriaMixin':: d.fn(help='`google.list[obj].withMatchingCriteriaMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the matching_criteria field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMatchingCriteria](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `matching_criteria` field.\n', args=[]),
  withMatchingCriteriaMixin(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          matching_criteria+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTransport':: d.fn(help='`google.list[obj].withTransport` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the transport field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTransportMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `transport` field.\n', args=[]),
  withTransport(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          transport: value,
        },
      },
    },
  },
  '#withTransportMixin':: d.fn(help='`google.list[obj].withTransportMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the transport field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTransport](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `transport` field.\n', args=[]),
  withTransportMixin(resourceLabel, value): {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          transport+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
