local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_fusion_instance', url='', help='`data_fusion_instance` represents the `google_data_fusion_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  crypto_key_config:: {
    '#new':: d.fn(help='\n`google.data_fusion_instance.crypto_key_config.new` constructs a new object with attributes and blocks configured for the `crypto_key_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key_reference` (`string`): The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of projects/*/locations/*/keyRings/*/cryptoKeys/*.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key_config` sub block.\n', args=[]),
    new(
      key_reference
    ):: std.prune(a={
      key_reference: key_reference,
    }),
  },
  event_publish_config:: {
    '#new':: d.fn(help='\n`google.data_fusion_instance.event_publish_config.new` constructs a new object with attributes and blocks configured for the `event_publish_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Option to enable Event Publishing.\n  - `topic` (`string`): The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id}\n\n**Returns**:\n  - An attribute object that represents the `event_publish_config` sub block.\n', args=[]),
    new(
      enabled,
      topic
    ):: std.prune(a={
      enabled: enabled,
      topic: topic,
    }),
  },
  network_config:: {
    '#new':: d.fn(help='\n`google.data_fusion_instance.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_allocation` (`string`): The IP range in CIDR notation to use for the managed Data Fusion instance\nnodes. This range must not overlap with any other ranges used in the Data Fusion instance network.\n  - `network` (`string`): Name of the network in the project with which the tenant project\nwill be peered for executing pipelines. In case of shared VPC where the network resides in another host\nproject the network should specified in the form of projects/{host-project-id}/global/networks/{network}\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      ip_allocation,
      network
    ):: std.prune(a={
      ip_allocation: ip_allocation,
      network: network,
    }),
  },
  '#new':: d.fn(help="\n`google.data_fusion_instance.new` injects a new `google_data_fusion_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_fusion_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_fusion_instance` using the reference:\n\n    $._ref.google_data_fusion_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_fusion_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dataproc_service_account` (`string`): User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. When `null`, the `dataproc_service_account` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of the instance. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name for an instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `enable_rbac` (`bool`): Option to enable granular role-based access control. When `null`, the `enable_rbac` field will be omitted from the resulting object.\n  - `enable_stackdriver_logging` (`bool`): Option to enable Stackdriver Logging. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.\n  - `enable_stackdriver_monitoring` (`bool`): Option to enable Stackdriver Monitoring. When `null`, the `enable_stackdriver_monitoring` field will be omitted from the resulting object.\n  - `labels` (`obj`): The resource labels for instance to use to annotate any related underlying resources,\nsuch as Compute Engine VMs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.\n  - `options` (`obj`): Map of additional options used to configure the behavior of Data Fusion instance. When `null`, the `options` field will be omitted from the resulting object.\n  - `private_instance` (`bool`): Specifies whether the Data Fusion instance should be private. If set to\ntrue, all Data Fusion nodes will have private IP addresses and will not be\nable to access the public internet. When `null`, the `private_instance` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the Data Fusion instance. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): Represents the type of Data Fusion instance. Each type is configured with\nthe default settings for processing and memory.\n- BASIC: Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines\nusing point and click UI. However, there are certain limitations, such as fewer number\nof concurrent pipelines, no support for streaming pipelines, etc.\n- ENTERPRISE: Enterprise Data Fusion instance. In Enterprise type, the user will have more features\navailable, such as support for streaming pipelines, higher number of concurrent pipelines, etc.\n- DEVELOPER: Developer Data Fusion instance. In Developer type, the user will have all features available but\nwith restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration \npipelines at low cost. Possible values: [\u0026#34;BASIC\u0026#34;, \u0026#34;ENTERPRISE\u0026#34;, \u0026#34;DEVELOPER\u0026#34;]\n  - `version` (`string`): Current version of the Data Fusion. When `null`, the `version` field will be omitted from the resulting object.\n  - `zone` (`string`): Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field. When `null`, the `zone` field will be omitted from the resulting object.\n  - `crypto_key_config` (`list[obj]`): The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature. When `null`, the `crypto_key_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.crypto_key_config.new](#fn-datafusioninstancecryptokeyconfignew) constructor.\n  - `event_publish_config` (`list[obj]`): Option to enable and pass metadata for event publishing. When `null`, the `event_publish_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.event_publish_config.new](#fn-datafusioninstanceeventpublishconfignew) constructor.\n  - `network_config` (`list[obj]`): Network configuration options. These are required when a private Data Fusion instance is to be created. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.network_config.new](#fn-datafusioninstancenetworkconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.timeouts.new](#fn-datafusioninstancetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    type,
    crypto_key_config=null,
    dataproc_service_account=null,
    description=null,
    display_name=null,
    enable_rbac=null,
    enable_stackdriver_logging=null,
    enable_stackdriver_monitoring=null,
    event_publish_config=null,
    labels=null,
    network_config=null,
    options=null,
    private_instance=null,
    project=null,
    region=null,
    timeouts=null,
    version=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_fusion_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      crypto_key_config=crypto_key_config,
      dataproc_service_account=dataproc_service_account,
      description=description,
      display_name=display_name,
      enable_rbac=enable_rbac,
      enable_stackdriver_logging=enable_stackdriver_logging,
      enable_stackdriver_monitoring=enable_stackdriver_monitoring,
      event_publish_config=event_publish_config,
      labels=labels,
      name=name,
      network_config=network_config,
      options=options,
      private_instance=private_instance,
      project=project,
      region=region,
      timeouts=timeouts,
      type=type,
      version=version,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_fusion_instance.newAttrs` constructs a new object with attributes and blocks configured for the `data_fusion_instance`\nTerraform resource.\n\nUnlike [google.data_fusion_instance.new](#fn-datafusioninstancenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataproc_service_account` (`string`): User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. When `null`, the `dataproc_service_account` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of the instance. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name for an instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `enable_rbac` (`bool`): Option to enable granular role-based access control. When `null`, the `enable_rbac` field will be omitted from the resulting object.\n  - `enable_stackdriver_logging` (`bool`): Option to enable Stackdriver Logging. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.\n  - `enable_stackdriver_monitoring` (`bool`): Option to enable Stackdriver Monitoring. When `null`, the `enable_stackdriver_monitoring` field will be omitted from the resulting object.\n  - `labels` (`obj`): The resource labels for instance to use to annotate any related underlying resources,\nsuch as Compute Engine VMs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.\n  - `options` (`obj`): Map of additional options used to configure the behavior of Data Fusion instance. When `null`, the `options` field will be omitted from the resulting object.\n  - `private_instance` (`bool`): Specifies whether the Data Fusion instance should be private. If set to\ntrue, all Data Fusion nodes will have private IP addresses and will not be\nable to access the public internet. When `null`, the `private_instance` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the Data Fusion instance. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): Represents the type of Data Fusion instance. Each type is configured with\nthe default settings for processing and memory.\n- BASIC: Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines\nusing point and click UI. However, there are certain limitations, such as fewer number\nof concurrent pipelines, no support for streaming pipelines, etc.\n- ENTERPRISE: Enterprise Data Fusion instance. In Enterprise type, the user will have more features\navailable, such as support for streaming pipelines, higher number of concurrent pipelines, etc.\n- DEVELOPER: Developer Data Fusion instance. In Developer type, the user will have all features available but\nwith restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration \npipelines at low cost. Possible values: [&#34;BASIC&#34;, &#34;ENTERPRISE&#34;, &#34;DEVELOPER&#34;]\n  - `version` (`string`): Current version of the Data Fusion. When `null`, the `version` field will be omitted from the resulting object.\n  - `zone` (`string`): Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field. When `null`, the `zone` field will be omitted from the resulting object.\n  - `crypto_key_config` (`list[obj]`): The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature. When `null`, the `crypto_key_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.crypto_key_config.new](#fn-datafusioninstancecryptokeyconfignew) constructor.\n  - `event_publish_config` (`list[obj]`): Option to enable and pass metadata for event publishing. When `null`, the `event_publish_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.event_publish_config.new](#fn-datafusioninstanceeventpublishconfignew) constructor.\n  - `network_config` (`list[obj]`): Network configuration options. These are required when a private Data Fusion instance is to be created. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.network_config.new](#fn-datafusioninstancenetworkconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.timeouts.new](#fn-datafusioninstancetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_fusion_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    type,
    crypto_key_config=null,
    dataproc_service_account=null,
    description=null,
    display_name=null,
    enable_rbac=null,
    enable_stackdriver_logging=null,
    enable_stackdriver_monitoring=null,
    event_publish_config=null,
    labels=null,
    network_config=null,
    options=null,
    private_instance=null,
    project=null,
    region=null,
    timeouts=null,
    version=null,
    zone=null
  ):: std.prune(a={
    crypto_key_config: crypto_key_config,
    dataproc_service_account: dataproc_service_account,
    description: description,
    display_name: display_name,
    enable_rbac: enable_rbac,
    enable_stackdriver_logging: enable_stackdriver_logging,
    enable_stackdriver_monitoring: enable_stackdriver_monitoring,
    event_publish_config: event_publish_config,
    labels: labels,
    name: name,
    network_config: network_config,
    options: options,
    private_instance: private_instance,
    project: project,
    region: region,
    timeouts: timeouts,
    type: type,
    version: version,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_fusion_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCryptoKeyConfig':: d.fn(help='`google.list[obj].withCryptoKeyConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the crypto_key_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCryptoKeyConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `crypto_key_config` field.\n', args=[]),
  withCryptoKeyConfig(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          crypto_key_config: value,
        },
      },
    },
  },
  '#withCryptoKeyConfigMixin':: d.fn(help='`google.list[obj].withCryptoKeyConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the crypto_key_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCryptoKeyConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `crypto_key_config` field.\n', args=[]),
  withCryptoKeyConfigMixin(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          crypto_key_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDataprocServiceAccount':: d.fn(help='`google.string.withDataprocServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataproc_service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataproc_service_account` field.\n', args=[]),
  withDataprocServiceAccount(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          dataproc_service_account: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnableRbac':: d.fn(help='`google.bool.withEnableRbac` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_rbac field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_rbac` field.\n', args=[]),
  withEnableRbac(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          enable_rbac: value,
        },
      },
    },
  },
  '#withEnableStackdriverLogging':: d.fn(help='`google.bool.withEnableStackdriverLogging` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_stackdriver_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_stackdriver_logging` field.\n', args=[]),
  withEnableStackdriverLogging(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          enable_stackdriver_logging: value,
        },
      },
    },
  },
  '#withEnableStackdriverMonitoring':: d.fn(help='`google.bool.withEnableStackdriverMonitoring` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_stackdriver_monitoring field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_stackdriver_monitoring` field.\n', args=[]),
  withEnableStackdriverMonitoring(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          enable_stackdriver_monitoring: value,
        },
      },
    },
  },
  '#withEventPublishConfig':: d.fn(help='`google.list[obj].withEventPublishConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_publish_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEventPublishConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_publish_config` field.\n', args=[]),
  withEventPublishConfig(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          event_publish_config: value,
        },
      },
    },
  },
  '#withEventPublishConfigMixin':: d.fn(help='`google.list[obj].withEventPublishConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_publish_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEventPublishConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_publish_config` field.\n', args=[]),
  withEventPublishConfigMixin(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          event_publish_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOptions':: d.fn(help='`google.obj.withOptions` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the options field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `options` field.\n', args=[]),
  withOptions(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          options: value,
        },
      },
    },
  },
  '#withPrivateInstance':: d.fn(help='`google.bool.withPrivateInstance` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the private_instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `private_instance` field.\n', args=[]),
  withPrivateInstance(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          private_instance: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google.string.withVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version` field.\n', args=[]),
  withVersion(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
