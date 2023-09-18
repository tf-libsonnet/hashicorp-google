local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_pipeline_pipeline', url='', help='`data_pipeline_pipeline` represents the `google_data_pipeline_pipeline` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data_pipeline_pipeline.new` injects a new `google_data_pipeline_pipeline` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_pipeline_pipeline.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_pipeline_pipeline` using the reference:\n\n    $._ref.google_data_pipeline_pipeline.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_pipeline_pipeline.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_). When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): \u0026#34;The pipeline name. For example\u0026#39;: \u0026#39;projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID.\u0026#34;\n\u0026#34;- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects.\u0026#34;\n\u0026#34;LOCATION_ID is the canonical ID for the pipeline\u0026#39;s location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it\u0026#39;s only available in App Engine regions.\u0026#34;\n\u0026#34;PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location.\u0026#34;\n  - `pipeline_sources` (`obj`): The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `pipeline_sources` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `scheduler_service_account_email` (`string`): Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used. When `null`, the `scheduler_service_account_email` field will be omitted from the resulting object.\n  - `state` (`string`): The state of the pipeline. When the pipeline is created, the state is set to \u0026#39;PIPELINE_STATE_ACTIVE\u0026#39; by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state Possible values: [\u0026#34;STATE_UNSPECIFIED\u0026#34;, \u0026#34;STATE_RESUMING\u0026#34;, \u0026#34;STATE_ACTIVE\u0026#34;, \u0026#34;STATE_STOPPING\u0026#34;, \u0026#34;STATE_ARCHIVED\u0026#34;, \u0026#34;STATE_PAUSED\u0026#34;]\n  - `type` (`string`): The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype Possible values: [\u0026#34;PIPELINE_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;PIPELINE_TYPE_BATCH\u0026#34;, \u0026#34;PIPELINE_TYPE_STREAMING\u0026#34;]\n  - `schedule_info` (`list[obj]`): Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec When `null`, the `schedule_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.schedule_info.new](#fn-schedule_infonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.timeouts.new](#fn-timeoutsnew) constructor.\n  - `workload` (`list[obj]`): Workload information for creating new jobs.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload When `null`, the `workload` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.new](#fn-workloadnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    state,
    type,
    display_name=null,
    pipeline_sources=null,
    project=null,
    region=null,
    schedule_info=null,
    scheduler_service_account_email=null,
    timeouts=null,
    workload=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_pipeline_pipeline',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      name=name,
      pipeline_sources=pipeline_sources,
      project=project,
      region=region,
      schedule_info=schedule_info,
      scheduler_service_account_email=scheduler_service_account_email,
      state=state,
      timeouts=timeouts,
      type=type,
      workload=workload
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_pipeline_pipeline.newAttrs` constructs a new object with attributes and blocks configured for the `data_pipeline_pipeline`\nTerraform resource.\n\nUnlike [google.data_pipeline_pipeline.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_). When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): &#34;The pipeline name. For example&#39;: &#39;projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID.&#34;\n&#34;- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects.&#34;\n&#34;LOCATION_ID is the canonical ID for the pipeline&#39;s location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it&#39;s only available in App Engine regions.&#34;\n&#34;PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location.&#34;\n  - `pipeline_sources` (`obj`): The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `pipeline_sources` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.\n  - `scheduler_service_account_email` (`string`): Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used. When `null`, the `scheduler_service_account_email` field will be omitted from the resulting object.\n  - `state` (`string`): The state of the pipeline. When the pipeline is created, the state is set to &#39;PIPELINE_STATE_ACTIVE&#39; by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state Possible values: [&#34;STATE_UNSPECIFIED&#34;, &#34;STATE_RESUMING&#34;, &#34;STATE_ACTIVE&#34;, &#34;STATE_STOPPING&#34;, &#34;STATE_ARCHIVED&#34;, &#34;STATE_PAUSED&#34;]\n  - `type` (`string`): The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype Possible values: [&#34;PIPELINE_TYPE_UNSPECIFIED&#34;, &#34;PIPELINE_TYPE_BATCH&#34;, &#34;PIPELINE_TYPE_STREAMING&#34;]\n  - `schedule_info` (`list[obj]`): Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec When `null`, the `schedule_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.schedule_info.new](#fn-schedule_infonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.timeouts.new](#fn-timeoutsnew) constructor.\n  - `workload` (`list[obj]`): Workload information for creating new jobs.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload When `null`, the `workload` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.new](#fn-workloadnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_pipeline_pipeline` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    state,
    type,
    display_name=null,
    pipeline_sources=null,
    project=null,
    region=null,
    schedule_info=null,
    scheduler_service_account_email=null,
    timeouts=null,
    workload=null
  ):: std.prune(a={
    display_name: display_name,
    name: name,
    pipeline_sources: pipeline_sources,
    project: project,
    region: region,
    schedule_info: schedule_info,
    scheduler_service_account_email: scheduler_service_account_email,
    state: state,
    timeouts: timeouts,
    type: type,
    workload: workload,
  }),
  schedule_info:: {
    '#new':: d.fn(help='\n`google.data_pipeline_pipeline.schedule_info.new` constructs a new object with attributes and blocks configured for the `schedule_info`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schedule` (`string`): Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler. When `null`, the `schedule` field will be omitted from the resulting object.\n  - `time_zone` (`string`): Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed. When `null`, the `time_zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `schedule_info` sub block.\n', args=[]),
    new(
      schedule=null,
      time_zone=null
    ):: std.prune(a={
      schedule: schedule,
      time_zone: time_zone,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_pipeline_pipeline.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPipelineSources':: d.fn(help='`google.obj.withPipelineSources` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the pipeline_sources field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `pipeline_sources` field.\n', args=[]),
  withPipelineSources(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          pipeline_sources: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withScheduleInfo':: d.fn(help='`google.list[obj].withScheduleInfo` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the schedule_info field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withScheduleInfoMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `schedule_info` field.\n', args=[]),
  withScheduleInfo(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          schedule_info: value,
        },
      },
    },
  },
  '#withScheduleInfoMixin':: d.fn(help='`google.list[obj].withScheduleInfoMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the schedule_info field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withScheduleInfo](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `schedule_info` field.\n', args=[]),
  withScheduleInfoMixin(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          schedule_info+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSchedulerServiceAccountEmail':: d.fn(help='`google.string.withSchedulerServiceAccountEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scheduler_service_account_email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scheduler_service_account_email` field.\n', args=[]),
  withSchedulerServiceAccountEmail(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          scheduler_service_account_email: value,
        },
      },
    },
  },
  '#withState':: d.fn(help='`google.string.withState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `state` field.\n', args=[]),
  withState(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          state: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withWorkload':: d.fn(help='`google.list[obj].withWorkload` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the workload field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWorkloadMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `workload` field.\n', args=[]),
  withWorkload(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          workload: value,
        },
      },
    },
  },
  '#withWorkloadMixin':: d.fn(help='`google.list[obj].withWorkloadMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the workload field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWorkload](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `workload` field.\n', args=[]),
  withWorkloadMixin(resourceLabel, value): {
    resource+: {
      google_data_pipeline_pipeline+: {
        [resourceLabel]+: {
          workload+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  workload:: {
    dataflow_flex_template_request:: {
      launch_parameter:: {
        environment:: {
          '#new':: d.fn(help='\n`google.data_pipeline_pipeline.workload.dataflow_flex_template_request.launch_parameter.environment.new` constructs a new object with attributes and blocks configured for the `environment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `additional_experiments` (`list`): Additional experiment flags for the job. When `null`, the `additional_experiments` field will be omitted from the resulting object.\n  - `additional_user_labels` (`obj`): Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. An object containing a list of key/value pairs.\n&#39;Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39;\n&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `additional_user_labels` field will be omitted from the resulting object.\n  - `enable_streaming_engine` (`bool`): Whether to enable Streaming Engine for the job. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.\n  - `flexrs_goal` (`string`): Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#FlexResourceSchedulingGoal Possible values: [&#34;FLEXRS_UNSPECIFIED&#34;, &#34;FLEXRS_SPEED_OPTIMIZED&#34;, &#34;FLEXRS_COST_OPTIMIZED&#34;] When `null`, the `flexrs_goal` field will be omitted from the resulting object.\n  - `ip_configuration` (`string`): Configuration for VM IPs.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration Possible values: [&#34;WORKER_IP_UNSPECIFIED&#34;, &#34;WORKER_IP_PUBLIC&#34;, &#34;WORKER_IP_PRIVATE&#34;] When `null`, the `ip_configuration` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): &#39;Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/&#39; When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to use for the job. Defaults to the value from the template if not specified. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `max_workers` (`number`): The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. When `null`, the `max_workers` field will be omitted from the resulting object.\n  - `network` (`string`): Network to which VMs will be assigned. If empty or unspecified, the service will use the network &#34;default&#34;. When `null`, the `network` field will be omitted from the resulting object.\n  - `num_workers` (`number`): The initial number of Compute Engine instances for the job. When `null`, the `num_workers` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The email address of the service account to run the job as. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form &#34;https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK&#34; or &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. If the subnetwork is located in a Shared VPC network, you must use the complete URL. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `temp_location` (`string`): The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `temp_location` field will be omitted from the resulting object.\n  - `worker_region` (`string`): The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. &#34;us-west1&#34;. Mutually exclusive with workerZone. If neither workerRegion nor workerZone is specified, default to the control plane&#39;s region. When `null`, the `worker_region` field will be omitted from the resulting object.\n  - `worker_zone` (`string`): The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. &#34;us-west1-a&#34;. Mutually exclusive with workerRegion. If neither workerRegion nor workerZone is specified, a zone in the control plane&#39;s region is chosen based on available capacity. If both workerZone and zone are set, workerZone takes precedence. When `null`, the `worker_zone` field will be omitted from the resulting object.\n  - `zone` (`string`): The Compute Engine availability zone for launching worker instances to run your pipeline. In the future, workerZone will take precedence. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `environment` sub block.\n', args=[]),
          new(
            additional_experiments=null,
            additional_user_labels=null,
            enable_streaming_engine=null,
            flexrs_goal=null,
            ip_configuration=null,
            kms_key_name=null,
            machine_type=null,
            max_workers=null,
            network=null,
            num_workers=null,
            service_account_email=null,
            subnetwork=null,
            temp_location=null,
            worker_region=null,
            worker_zone=null,
            zone=null
          ):: std.prune(a={
            additional_experiments: additional_experiments,
            additional_user_labels: additional_user_labels,
            enable_streaming_engine: enable_streaming_engine,
            flexrs_goal: flexrs_goal,
            ip_configuration: ip_configuration,
            kms_key_name: kms_key_name,
            machine_type: machine_type,
            max_workers: max_workers,
            network: network,
            num_workers: num_workers,
            service_account_email: service_account_email,
            subnetwork: subnetwork,
            temp_location: temp_location,
            worker_region: worker_region,
            worker_zone: worker_zone,
            zone: zone,
          }),
        },
        '#new':: d.fn(help='\n`google.data_pipeline_pipeline.workload.dataflow_flex_template_request.launch_parameter.new` constructs a new object with attributes and blocks configured for the `launch_parameter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `container_spec_gcs_path` (`string`): Cloud Storage path to a file with a JSON-serialized ContainerSpec as content. When `null`, the `container_spec_gcs_path` field will be omitted from the resulting object.\n  - `job_name` (`string`): The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.\n  - `launch_options` (`obj`): Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.\n&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `launch_options` field will be omitted from the resulting object.\n  - `parameters` (`obj`): &#39;The parameters for the Flex Template. Example: {&#34;numWorkers&#34;:&#34;5&#34;}&#39;\n&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `parameters` field will be omitted from the resulting object.\n  - `transform_name_mappings` (`obj`): &#39;Use this to pass transform name mappings for streaming update jobs. Example: {&#34;oldTransformName&#34;:&#34;newTransformName&#34;,...}&#39;\n&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `transform_name_mappings` field will be omitted from the resulting object.\n  - `update` (`bool`): Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job. When `null`, the `update` field will be omitted from the resulting object.\n  - `environment` (`list[obj]`): The runtime environment for the Flex Template job.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#FlexTemplateRuntimeEnvironment When `null`, the `environment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_flex_template_request.launch_parameter.environment.new](#fn-workloadworkloaddataflow_flex_template_requestenvironmentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `launch_parameter` sub block.\n', args=[]),
        new(
          job_name,
          container_spec_gcs_path=null,
          environment=null,
          launch_options=null,
          parameters=null,
          transform_name_mappings=null,
          update=null
        ):: std.prune(a={
          container_spec_gcs_path: container_spec_gcs_path,
          environment: environment,
          job_name: job_name,
          launch_options: launch_options,
          parameters: parameters,
          transform_name_mappings: transform_name_mappings,
          update: update,
        }),
      },
      '#new':: d.fn(help='\n`google.data_pipeline_pipeline.workload.dataflow_flex_template_request.new` constructs a new object with attributes and blocks configured for the `dataflow_flex_template_request`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location` (`string`): The regional endpoint to which to direct the request. For example, us-central1, us-west1.\n  - `project_id` (`string`): The ID of the Cloud Platform project that the job belongs to.\n  - `validate_only` (`bool`): If true, the request is validated but not actually executed. Defaults to false. When `null`, the `validate_only` field will be omitted from the resulting object.\n  - `launch_parameter` (`list[obj]`): Parameter to launch a job from a Flex Template.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplateparameter When `null`, the `launch_parameter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_flex_template_request.launch_parameter.new](#fn-workloadworkloadlaunch_parameternew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dataflow_flex_template_request` sub block.\n', args=[]),
      new(
        location,
        project_id,
        launch_parameter=null,
        validate_only=null
      ):: std.prune(a={
        launch_parameter: launch_parameter,
        location: location,
        project_id: project_id,
        validate_only: validate_only,
      }),
    },
    dataflow_launch_template_request:: {
      launch_parameters:: {
        environment:: {
          '#new':: d.fn(help='\n`google.data_pipeline_pipeline.workload.dataflow_launch_template_request.launch_parameters.environment.new` constructs a new object with attributes and blocks configured for the `environment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `additional_experiments` (`list`): Additional experiment flags for the job. When `null`, the `additional_experiments` field will be omitted from the resulting object.\n  - `additional_user_labels` (`obj`): Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. An object containing a list of key/value pairs.\n&#39;Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39;\n&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `additional_user_labels` field will be omitted from the resulting object.\n  - `bypass_temp_dir_validation` (`bool`): Whether to bypass the safety checks for the job&#39;s temporary directory. Use with caution. When `null`, the `bypass_temp_dir_validation` field will be omitted from the resulting object.\n  - `enable_streaming_engine` (`bool`): Whether to enable Streaming Engine for the job. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.\n  - `ip_configuration` (`string`): Configuration for VM IPs.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration Possible values: [&#34;WORKER_IP_UNSPECIFIED&#34;, &#34;WORKER_IP_PUBLIC&#34;, &#34;WORKER_IP_PRIVATE&#34;] When `null`, the `ip_configuration` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): &#39;Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/&#39; When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to use for the job. Defaults to the value from the template if not specified. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `max_workers` (`number`): The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. When `null`, the `max_workers` field will be omitted from the resulting object.\n  - `network` (`string`): Network to which VMs will be assigned. If empty or unspecified, the service will use the network &#34;default&#34;. When `null`, the `network` field will be omitted from the resulting object.\n  - `num_workers` (`number`): The initial number of Compute Engine instances for the job. When `null`, the `num_workers` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The email address of the service account to run the job as. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form &#34;https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK&#34; or &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. If the subnetwork is located in a Shared VPC network, you must use the complete URL. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `temp_location` (`string`): The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `temp_location` field will be omitted from the resulting object.\n  - `worker_region` (`string`): The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. &#34;us-west1&#34;. Mutually exclusive with workerZone. If neither workerRegion nor workerZone is specified, default to the control plane&#39;s region. When `null`, the `worker_region` field will be omitted from the resulting object.\n  - `worker_zone` (`string`): The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. &#34;us-west1-a&#34;. Mutually exclusive with workerRegion. If neither workerRegion nor workerZone is specified, a zone in the control plane&#39;s region is chosen based on available capacity. If both workerZone and zone are set, workerZone takes precedence. When `null`, the `worker_zone` field will be omitted from the resulting object.\n  - `zone` (`string`): The Compute Engine availability zone for launching worker instances to run your pipeline. In the future, workerZone will take precedence. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `environment` sub block.\n', args=[]),
          new(
            additional_experiments=null,
            additional_user_labels=null,
            bypass_temp_dir_validation=null,
            enable_streaming_engine=null,
            ip_configuration=null,
            kms_key_name=null,
            machine_type=null,
            max_workers=null,
            network=null,
            num_workers=null,
            service_account_email=null,
            subnetwork=null,
            temp_location=null,
            worker_region=null,
            worker_zone=null,
            zone=null
          ):: std.prune(a={
            additional_experiments: additional_experiments,
            additional_user_labels: additional_user_labels,
            bypass_temp_dir_validation: bypass_temp_dir_validation,
            enable_streaming_engine: enable_streaming_engine,
            ip_configuration: ip_configuration,
            kms_key_name: kms_key_name,
            machine_type: machine_type,
            max_workers: max_workers,
            network: network,
            num_workers: num_workers,
            service_account_email: service_account_email,
            subnetwork: subnetwork,
            temp_location: temp_location,
            worker_region: worker_region,
            worker_zone: worker_zone,
            zone: zone,
          }),
        },
        '#new':: d.fn(help='\n`google.data_pipeline_pipeline.workload.dataflow_launch_template_request.launch_parameters.new` constructs a new object with attributes and blocks configured for the `launch_parameters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `job_name` (`string`): The job name to use for the created job.\n  - `parameters` (`obj`): The runtime parameters to pass to the job.\n&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `parameters` field will be omitted from the resulting object.\n  - `transform_name_mapping` (`obj`): Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.\n&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `transform_name_mapping` field will be omitted from the resulting object.\n  - `update` (`bool`): If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state. When `null`, the `update` field will be omitted from the resulting object.\n  - `environment` (`list[obj]`): The runtime environment for the job.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#RuntimeEnvironment When `null`, the `environment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_launch_template_request.launch_parameters.environment.new](#fn-workloadworkloaddataflow_launch_template_requestenvironmentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `launch_parameters` sub block.\n', args=[]),
        new(
          job_name,
          environment=null,
          parameters=null,
          transform_name_mapping=null,
          update=null
        ):: std.prune(a={
          environment: environment,
          job_name: job_name,
          parameters: parameters,
          transform_name_mapping: transform_name_mapping,
          update: update,
        }),
      },
      '#new':: d.fn(help='\n`google.data_pipeline_pipeline.workload.dataflow_launch_template_request.new` constructs a new object with attributes and blocks configured for the `dataflow_launch_template_request`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gcs_path` (`string`): A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with &#39;gs://&#39;. When `null`, the `gcs_path` field will be omitted from the resulting object.\n  - `location` (`string`): The regional endpoint to which to direct the request. When `null`, the `location` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the Cloud Platform project that the job belongs to.\n  - `validate_only` (`bool`): Set the `validate_only` field on the resulting object. When `null`, the `validate_only` field will be omitted from the resulting object.\n  - `launch_parameters` (`list[obj]`): The parameters of the template to launch. This should be part of the body of the POST request.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplateparameters When `null`, the `launch_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_launch_template_request.launch_parameters.new](#fn-workloadworkloadlaunch_parametersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dataflow_launch_template_request` sub block.\n', args=[]),
      new(
        project_id,
        gcs_path=null,
        launch_parameters=null,
        location=null,
        validate_only=null
      ):: std.prune(a={
        gcs_path: gcs_path,
        launch_parameters: launch_parameters,
        location: location,
        project_id: project_id,
        validate_only: validate_only,
      }),
    },
    '#new':: d.fn(help='\n`google.data_pipeline_pipeline.workload.new` constructs a new object with attributes and blocks configured for the `workload`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataflow_flex_template_request` (`list[obj]`): Template information and additional parameters needed to launch a Dataflow job using the flex launch API.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplaterequest When `null`, the `dataflow_flex_template_request` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_flex_template_request.new](#fn-workloaddataflow_flex_template_requestnew) constructor.\n  - `dataflow_launch_template_request` (`list[obj]`): Template information and additional parameters needed to launch a Dataflow job using the standard launch API.\nhttps://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplaterequest When `null`, the `dataflow_launch_template_request` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_launch_template_request.new](#fn-workloaddataflow_launch_template_requestnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `workload` sub block.\n', args=[]),
    new(
      dataflow_flex_template_request=null,
      dataflow_launch_template_request=null
    ):: std.prune(a={
      dataflow_flex_template_request: dataflow_flex_template_request,
      dataflow_launch_template_request: dataflow_launch_template_request,
    }),
  },
}
