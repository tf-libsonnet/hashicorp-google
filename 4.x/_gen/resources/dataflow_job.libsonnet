local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataflow_job', url='', help='`dataflow_job` represents the `google_dataflow_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.dataflow_job.new` injects a new `google_dataflow_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataflow_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataflow_job` using the reference:\n\n    $._ref.google_dataflow_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataflow_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `additional_experiments` (`list`): List of experiments that should be used by the job. An example value is [\u0026#34;enable_stackdriver_agent_metrics\u0026#34;]. When `null`, the `additional_experiments` field will be omitted from the resulting object.\n  - `enable_streaming_engine` (`bool`): Indicates if the job should use the streaming engine feature. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.\n  - `ip_configuration` (`string`): The configuration for VM IPs. Options are \u0026#34;WORKER_IP_PUBLIC\u0026#34; or \u0026#34;WORKER_IP_PRIVATE\u0026#34;. When `null`, the `ip_configuration` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: This field is non-authoritative, and will only manage the labels present in your configuration.\n\t\t\t\tPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to use for the job. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `max_workers` (`number`): The number of workers permitted to work on the job. More workers may improve processing speed at additional cost. When `null`, the `max_workers` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the resource, required by Dataflow.\n  - `network` (`string`): The network to which VMs will be assigned. If it is not provided, \u0026#34;default\u0026#34; will be used. When `null`, the `network` field will be omitted from the resulting object.\n  - `on_delete` (`string`): One of \u0026#34;drain\u0026#34; or \u0026#34;cancel\u0026#34;. Specifies behavior of deletion during terraform destroy. When `null`, the `on_delete` field will be omitted from the resulting object.\n  - `parameters` (`obj`): Key/Value pairs to be passed to the Dataflow job (as used in the template). When `null`, the `parameters` field will be omitted from the resulting object.\n  - `project` (`string`): The project in which the resource belongs. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The Service Account email used to create the job. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The subnetwork to which VMs will be assigned. Should be of the form \u0026#34;regions/REGION/subnetworks/SUBNETWORK\u0026#34;. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `temp_gcs_location` (`string`): A writeable location on Google Cloud Storage for the Dataflow job to dump its temporary data.\n  - `template_gcs_path` (`string`): The Google Cloud Storage path to the Dataflow job template.\n  - `transform_name_mapping` (`obj`): Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. When `null`, the `transform_name_mapping` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone in which the created job should run. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataflow_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    temp_gcs_location,
    template_gcs_path,
    additional_experiments=null,
    enable_streaming_engine=null,
    ip_configuration=null,
    kms_key_name=null,
    labels=null,
    machine_type=null,
    max_workers=null,
    network=null,
    on_delete=null,
    parameters=null,
    project=null,
    region=null,
    service_account_email=null,
    skip_wait_on_job_termination=null,
    subnetwork=null,
    timeouts=null,
    transform_name_mapping=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataflow_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      additional_experiments=additional_experiments,
      enable_streaming_engine=enable_streaming_engine,
      ip_configuration=ip_configuration,
      kms_key_name=kms_key_name,
      labels=labels,
      machine_type=machine_type,
      max_workers=max_workers,
      name=name,
      network=network,
      on_delete=on_delete,
      parameters=parameters,
      project=project,
      region=region,
      service_account_email=service_account_email,
      skip_wait_on_job_termination=skip_wait_on_job_termination,
      subnetwork=subnetwork,
      temp_gcs_location=temp_gcs_location,
      template_gcs_path=template_gcs_path,
      timeouts=timeouts,
      transform_name_mapping=transform_name_mapping,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataflow_job.newAttrs` constructs a new object with attributes and blocks configured for the `dataflow_job`\nTerraform resource.\n\nUnlike [google.dataflow_job.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `additional_experiments` (`list`): List of experiments that should be used by the job. An example value is [&#34;enable_stackdriver_agent_metrics&#34;]. When `null`, the `additional_experiments` field will be omitted from the resulting object.\n  - `enable_streaming_engine` (`bool`): Indicates if the job should use the streaming engine feature. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.\n  - `ip_configuration` (`string`): The configuration for VM IPs. Options are &#34;WORKER_IP_PUBLIC&#34; or &#34;WORKER_IP_PRIVATE&#34;. When `null`, the `ip_configuration` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: This field is non-authoritative, and will only manage the labels present in your configuration.\n\t\t\t\tPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to use for the job. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `max_workers` (`number`): The number of workers permitted to work on the job. More workers may improve processing speed at additional cost. When `null`, the `max_workers` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the resource, required by Dataflow.\n  - `network` (`string`): The network to which VMs will be assigned. If it is not provided, &#34;default&#34; will be used. When `null`, the `network` field will be omitted from the resulting object.\n  - `on_delete` (`string`): One of &#34;drain&#34; or &#34;cancel&#34;. Specifies behavior of deletion during terraform destroy. When `null`, the `on_delete` field will be omitted from the resulting object.\n  - `parameters` (`obj`): Key/Value pairs to be passed to the Dataflow job (as used in the template). When `null`, the `parameters` field will be omitted from the resulting object.\n  - `project` (`string`): The project in which the resource belongs. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.\n  - `service_account_email` (`string`): The Service Account email used to create the job. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The subnetwork to which VMs will be assigned. Should be of the form &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `temp_gcs_location` (`string`): A writeable location on Google Cloud Storage for the Dataflow job to dump its temporary data.\n  - `template_gcs_path` (`string`): The Google Cloud Storage path to the Dataflow job template.\n  - `transform_name_mapping` (`obj`): Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. When `null`, the `transform_name_mapping` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone in which the created job should run. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataflow_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataflow_job` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    temp_gcs_location,
    template_gcs_path,
    additional_experiments=null,
    enable_streaming_engine=null,
    ip_configuration=null,
    kms_key_name=null,
    labels=null,
    machine_type=null,
    max_workers=null,
    network=null,
    on_delete=null,
    parameters=null,
    project=null,
    region=null,
    service_account_email=null,
    skip_wait_on_job_termination=null,
    subnetwork=null,
    timeouts=null,
    transform_name_mapping=null,
    zone=null
  ):: std.prune(a={
    additional_experiments: additional_experiments,
    enable_streaming_engine: enable_streaming_engine,
    ip_configuration: ip_configuration,
    kms_key_name: kms_key_name,
    labels: labels,
    machine_type: machine_type,
    max_workers: max_workers,
    name: name,
    network: network,
    on_delete: on_delete,
    parameters: parameters,
    project: project,
    region: region,
    service_account_email: service_account_email,
    skip_wait_on_job_termination: skip_wait_on_job_termination,
    subnetwork: subnetwork,
    temp_gcs_location: temp_gcs_location,
    template_gcs_path: template_gcs_path,
    timeouts: timeouts,
    transform_name_mapping: transform_name_mapping,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataflow_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      update=null
    ):: std.prune(a={
      update: update,
    }),
  },
  '#withAdditionalExperiments':: d.fn(help='`google.list.withAdditionalExperiments` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the additional_experiments field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `additional_experiments` field.\n', args=[]),
  withAdditionalExperiments(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          additional_experiments: value,
        },
      },
    },
  },
  '#withEnableStreamingEngine':: d.fn(help='`google.bool.withEnableStreamingEngine` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_streaming_engine field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_streaming_engine` field.\n', args=[]),
  withEnableStreamingEngine(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          enable_streaming_engine: value,
        },
      },
    },
  },
  '#withIpConfiguration':: d.fn(help='`google.string.withIpConfiguration` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_configuration field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_configuration` field.\n', args=[]),
  withIpConfiguration(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          ip_configuration: value,
        },
      },
    },
  },
  '#withKmsKeyName':: d.fn(help='`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMachineType':: d.fn(help='`google.string.withMachineType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the machine_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `machine_type` field.\n', args=[]),
  withMachineType(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  '#withMaxWorkers':: d.fn(help='`google.number.withMaxWorkers` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_workers field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_workers` field.\n', args=[]),
  withMaxWorkers(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          max_workers: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withOnDelete':: d.fn(help='`google.string.withOnDelete` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the on_delete field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `on_delete` field.\n', args=[]),
  withOnDelete(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          on_delete: value,
        },
      },
    },
  },
  '#withParameters':: d.fn(help='`google.obj.withParameters` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the parameters field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `parameters` field.\n', args=[]),
  withParameters(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          parameters: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withServiceAccountEmail':: d.fn(help='`google.string.withServiceAccountEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account_email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account_email` field.\n', args=[]),
  withServiceAccountEmail(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          service_account_email: value,
        },
      },
    },
  },
  '#withSkipWaitOnJobTermination':: d.fn(help='`google.bool.withSkipWaitOnJobTermination` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the skip_wait_on_job_termination field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `skip_wait_on_job_termination` field.\n', args=[]),
  withSkipWaitOnJobTermination(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          skip_wait_on_job_termination: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTempGcsLocation':: d.fn(help='`google.string.withTempGcsLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the temp_gcs_location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `temp_gcs_location` field.\n', args=[]),
  withTempGcsLocation(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          temp_gcs_location: value,
        },
      },
    },
  },
  '#withTemplateGcsPath':: d.fn(help='`google.string.withTemplateGcsPath` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the template_gcs_path field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `template_gcs_path` field.\n', args=[]),
  withTemplateGcsPath(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          template_gcs_path: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTransformNameMapping':: d.fn(help='`google.obj.withTransformNameMapping` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the transform_name_mapping field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `transform_name_mapping` field.\n', args=[]),
  withTransformNameMapping(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          transform_name_mapping: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
