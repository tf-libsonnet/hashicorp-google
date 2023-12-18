local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='workbench_instance', url='', help='`workbench_instance` represents the `google_workbench_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  gce_setup:: {
    accelerator_configs:: {
      '#new':: d.fn(help='\n`google.workbench_instance.gce_setup.accelerator_configs.new` constructs a new object with attributes and blocks configured for the `accelerator_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `core_count` (`string`): Optional. Count of cores of this accelerator. When `null`, the `core_count` field will be omitted from the resulting object.\n  - `type` (`string`): Optional. Type of this accelerator. Possible values: [&#34;NVIDIA_TESLA_P100&#34;, &#34;NVIDIA_TESLA_V100&#34;, &#34;NVIDIA_TESLA_P4&#34;, &#34;NVIDIA_TESLA_T4&#34;, &#34;NVIDIA_TESLA_A100&#34;, &#34;NVIDIA_A100_80GB&#34;, &#34;NVIDIA_L4&#34;, &#34;NVIDIA_TESLA_T4_VWS&#34;, &#34;NVIDIA_TESLA_P100_VWS&#34;, &#34;NVIDIA_TESLA_P4_VWS&#34;] When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `accelerator_configs` sub block.\n', args=[]),
      new(
        core_count=null,
        type=null
      ):: std.prune(a={
        core_count: core_count,
        type: type,
      }),
    },
    boot_disk:: {
      '#new':: d.fn(help='\n`google.workbench_instance.gce_setup.boot_disk.new` constructs a new object with attributes and blocks configured for the `boot_disk`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk_encryption` (`string`): Optional. Input only. Disk encryption method used on the boot and\ndata disks, defaults to GMEK. Possible values: [&#34;GMEK&#34;, &#34;CMEK&#34;] When `null`, the `disk_encryption` field will be omitted from the resulting object.\n  - `disk_size_gb` (`string`): Optional. The size of the boot disk in GB attached to this instance,\nup to a maximum of 64000 GB (64 TB). If not specified, this defaults to the\nrecommended value of 150GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `disk_type` (`string`): Optional. Indicates the type of the disk. Possible values: [&#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `kms_key` (`string`): &#39;Optional. Input only. The KMS key used to encrypt the disks, only\napplicable if disk_encryption is CMEK. Format: &#39;projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}&#39;\nLearn more about using your own encryption keys.&#39; When `null`, the `kms_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `boot_disk` sub block.\n', args=[]),
      new(
        disk_encryption=null,
        disk_size_gb=null,
        disk_type=null,
        kms_key=null
      ):: std.prune(a={
        disk_encryption: disk_encryption,
        disk_size_gb: disk_size_gb,
        disk_type: disk_type,
        kms_key: kms_key,
      }),
    },
    data_disks:: {
      '#new':: d.fn(help='\n`google.workbench_instance.gce_setup.data_disks.new` constructs a new object with attributes and blocks configured for the `data_disks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk_encryption` (`string`): Optional. Input only. Disk encryption method used on the boot\nand data disks, defaults to GMEK. Possible values: [&#34;GMEK&#34;, &#34;CMEK&#34;] When `null`, the `disk_encryption` field will be omitted from the resulting object.\n  - `disk_size_gb` (`string`): Optional. The size of the disk in GB attached to this VM instance,\nup to a maximum of 64000 GB (64 TB). If not specified, this defaults to\n100. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `disk_type` (`string`): Optional. Input only. Indicates the type of the disk. Possible values: [&#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `kms_key` (`string`): &#39;Optional. Input only. The KMS key used to encrypt the disks,\nonly applicable if disk_encryption is CMEK. Format: &#39;projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}&#39;\nLearn more about using your own encryption keys.&#39; When `null`, the `kms_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `data_disks` sub block.\n', args=[]),
      new(
        disk_encryption=null,
        disk_size_gb=null,
        disk_type=null,
        kms_key=null
      ):: std.prune(a={
        disk_encryption: disk_encryption,
        disk_size_gb: disk_size_gb,
        disk_type: disk_type,
        kms_key: kms_key,
      }),
    },
    network_interfaces:: {
      '#new':: d.fn(help='\n`google.workbench_instance.gce_setup.network_interfaces.new` constructs a new object with attributes and blocks configured for the `network_interfaces`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network` (`string`): Optional. The name of the VPC that this VM instance is in. When `null`, the `network` field will be omitted from the resulting object.\n  - `nic_type` (`string`): Optional. The type of vNIC to be used on this interface. This\nmay be gVNIC or VirtioNet. Possible values: [&#34;VIRTIO_NET&#34;, &#34;GVNIC&#34;] When `null`, the `nic_type` field will be omitted from the resulting object.\n  - `subnet` (`string`): Optional. The name of the subnet that this VM instance is in. When `null`, the `subnet` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_interfaces` sub block.\n', args=[]),
      new(
        network=null,
        nic_type=null,
        subnet=null
      ):: std.prune(a={
        network: network,
        nic_type: nic_type,
        subnet: subnet,
      }),
    },
    '#new':: d.fn(help='\n`google.workbench_instance.gce_setup.new` constructs a new object with attributes and blocks configured for the `gce_setup`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disable_public_ip` (`bool`): Optional. If true, no external IP will be assigned to this VM instance. When `null`, the `disable_public_ip` field will be omitted from the resulting object.\n  - `enable_ip_forwarding` (`bool`): Optional. Flag to enable ip forwarding or not, default false/off.\nhttps://cloud.google.com/vpc/docs/using-routes#canipforward When `null`, the `enable_ip_forwarding` field will be omitted from the resulting object.\n  - `machine_type` (`string`): Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `metadata` (`obj`): Optional. Custom metadata to apply to this instance. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `tags` (`list`): Optional. The Compute Engine tags to add to instance (see [Tagging\ninstances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)). When `null`, the `tags` field will be omitted from the resulting object.\n  - `accelerator_configs` (`list[obj]`): The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has\n[enough vCPUs and memory to support the &#39;machine_type&#39; you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).\nCurrently supports only one accelerator configuration. When `null`, the `accelerator_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.accelerator_configs.new](#fn-gce_setupaccelerator_configsnew) constructor.\n  - `boot_disk` (`list[obj]`): The definition of a boot disk. When `null`, the `boot_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.boot_disk.new](#fn-gce_setupboot_disknew) constructor.\n  - `data_disks` (`list[obj]`): Data disks attached to the VM instance. Currently supports only one data disk. When `null`, the `data_disks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.data_disks.new](#fn-gce_setupdata_disksnew) constructor.\n  - `network_interfaces` (`list[obj]`): The network interfaces for the VM. Supports only one interface. When `null`, the `network_interfaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.network_interfaces.new](#fn-gce_setupnetwork_interfacesnew) constructor.\n  - `service_accounts` (`list[obj]`): The service account that serves as an identity for the VM instance. Currently supports only one service account. When `null`, the `service_accounts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.service_accounts.new](#fn-gce_setupservice_accountsnew) constructor.\n  - `vm_image` (`list[obj]`): Definition of a custom Compute Engine virtual machine image for starting\na workbench instance with the environment installed directly on the VM. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.vm_image.new](#fn-gce_setupvm_imagenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `gce_setup` sub block.\n', args=[]),
    new(
      accelerator_configs=null,
      boot_disk=null,
      data_disks=null,
      disable_public_ip=null,
      enable_ip_forwarding=null,
      machine_type=null,
      metadata=null,
      network_interfaces=null,
      service_accounts=null,
      tags=null,
      vm_image=null
    ):: std.prune(a={
      accelerator_configs: accelerator_configs,
      boot_disk: boot_disk,
      data_disks: data_disks,
      disable_public_ip: disable_public_ip,
      enable_ip_forwarding: enable_ip_forwarding,
      machine_type: machine_type,
      metadata: metadata,
      network_interfaces: network_interfaces,
      service_accounts: service_accounts,
      tags: tags,
      vm_image: vm_image,
    }),
    service_accounts:: {
      '#new':: d.fn(help='\n`google.workbench_instance.gce_setup.service_accounts.new` constructs a new object with attributes and blocks configured for the `service_accounts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `email` (`string`): Optional. Email address of the service account. When `null`, the `email` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `service_accounts` sub block.\n', args=[]),
      new(
        email=null
      ):: std.prune(a={
        email: email,
      }),
    },
    vm_image:: {
      '#new':: d.fn(help='\n`google.workbench_instance.gce_setup.vm_image.new` constructs a new object with attributes and blocks configured for the `vm_image`\nTerraform sub block.\n\n\n\n**Args**:\n  - `family` (`string`): Optional. Use this VM image family to find the image; the newest\nimage in this family will be used. When `null`, the `family` field will be omitted from the resulting object.\n  - `name` (`string`): Optional. Use VM image name to find the image. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): The name of the Google Cloud project that this VM image belongs to.\nFormat: {project_id} When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vm_image` sub block.\n', args=[]),
      new(
        family=null,
        name=null,
        project=null
      ):: std.prune(a={
        family: family,
        name: name,
        project: project,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.workbench_instance.new` injects a new `google_workbench_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.workbench_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.workbench_instance` using the reference:\n\n    $._ref.google_workbench_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_workbench_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `disable_proxy_access` (`bool`): Optional. If true, the workbench instance will not register with the proxy. When `null`, the `disable_proxy_access` field will be omitted from the resulting object.\n  - `instance_id` (`string`): Required. User-defined unique ID of this instance. When `null`, the `instance_id` field will be omitted from the resulting object.\n  - `instance_owners` (`list`): \u0026#39;Optional. Input only. The owner of this instance after creation. Format:\n\u0026#39;alias@example.com\u0026#39; Currently supports one owner only. If not specified, all of\nthe service account users of your VM instance\u0026#39;\u0026#39;s service account can use the instance.\u0026#39; When `null`, the `instance_owners` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Labels to apply to this instance. These can be later modified\nby the UpdateInstance method.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Part of \u0026#39;parent\u0026#39;. See documentation of \u0026#39;projectsId\u0026#39;.\n  - `name` (`string`): The name of this workbench instance. Format: \u0026#39;projects/{project_id}/locations/{location}/instances/{instance_id}\u0026#39;\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `gce_setup` (`list[obj]`): The definition of how to configure a VM instance outside of Resources and Identity. When `null`, the `gce_setup` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.new](#fn-gce_setupnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    disable_proxy_access=null,
    gce_setup=null,
    instance_id=null,
    instance_owners=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_workbench_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      disable_proxy_access=disable_proxy_access,
      gce_setup=gce_setup,
      instance_id=instance_id,
      instance_owners=instance_owners,
      labels=labels,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.workbench_instance.newAttrs` constructs a new object with attributes and blocks configured for the `workbench_instance`\nTerraform resource.\n\nUnlike [google.workbench_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `disable_proxy_access` (`bool`): Optional. If true, the workbench instance will not register with the proxy. When `null`, the `disable_proxy_access` field will be omitted from the resulting object.\n  - `instance_id` (`string`): Required. User-defined unique ID of this instance. When `null`, the `instance_id` field will be omitted from the resulting object.\n  - `instance_owners` (`list`): &#39;Optional. Input only. The owner of this instance after creation. Format:\n&#39;alias@example.com&#39; Currently supports one owner only. If not specified, all of\nthe service account users of your VM instance&#39;&#39;s service account can use the instance.&#39; When `null`, the `instance_owners` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Labels to apply to this instance. These can be later modified\nby the UpdateInstance method.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Part of &#39;parent&#39;. See documentation of &#39;projectsId&#39;.\n  - `name` (`string`): The name of this workbench instance. Format: &#39;projects/{project_id}/locations/{location}/instances/{instance_id}&#39;\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `gce_setup` (`list[obj]`): The definition of how to configure a VM instance outside of Resources and Identity. When `null`, the `gce_setup` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.new](#fn-gce_setupnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `workbench_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    disable_proxy_access=null,
    gce_setup=null,
    instance_id=null,
    instance_owners=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    disable_proxy_access: disable_proxy_access,
    gce_setup: gce_setup,
    instance_id: instance_id,
    instance_owners: instance_owners,
    labels: labels,
    location: location,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.workbench_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisableProxyAccess':: d.fn(help='`google.bool.withDisableProxyAccess` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disable_proxy_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disable_proxy_access` field.\n', args=[]),
  withDisableProxyAccess(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          disable_proxy_access: value,
        },
      },
    },
  },
  '#withGceSetup':: d.fn(help='`google.list[obj].withGceSetup` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gce_setup field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGceSetupMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gce_setup` field.\n', args=[]),
  withGceSetup(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          gce_setup: value,
        },
      },
    },
  },
  '#withGceSetupMixin':: d.fn(help='`google.list[obj].withGceSetupMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gce_setup field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGceSetup](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gce_setup` field.\n', args=[]),
  withGceSetupMixin(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          gce_setup+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInstanceId':: d.fn(help='`google.string.withInstanceId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_id` field.\n', args=[]),
  withInstanceId(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          instance_id: value,
        },
      },
    },
  },
  '#withInstanceOwners':: d.fn(help='`google.list.withInstanceOwners` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the instance_owners field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `instance_owners` field.\n', args=[]),
  withInstanceOwners(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          instance_owners: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_workbench_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
