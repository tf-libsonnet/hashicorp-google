local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='notebooks_runtime', url='', help='`notebooks_runtime` represents the `google_notebooks_runtime` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  access_config:: {
    '#new':: d.fn(help='\n`google.notebooks_runtime.access_config.new` constructs a new object with attributes and blocks configured for the `access_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_type` (`string`): The type of access mode this instance. For valid values, see\n&#39;https://cloud.google.com/vertex-ai/docs/workbench/reference/\nrest/v1/projects.locations.runtimes#RuntimeAccessType&#39;. When `null`, the `access_type` field will be omitted from the resulting object.\n  - `runtime_owner` (`string`): The owner of this runtime after creation. Format: &#39;alias@example.com&#39;.\nCurrently supports one owner only. When `null`, the `runtime_owner` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `access_config` sub block.\n', args=[]),
    new(
      access_type=null,
      runtime_owner=null
    ):: std.prune(a={
      access_type: access_type,
      runtime_owner: runtime_owner,
    }),
  },
  '#new':: d.fn(help="\n`google.notebooks_runtime.new` injects a new `google_notebooks_runtime` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.notebooks_runtime.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.notebooks_runtime` using the reference:\n\n    $._ref.google_notebooks_runtime.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_notebooks_runtime.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): A reference to the zone where the machine resides.\n  - `name` (`string`): The name specified for the Notebook runtime.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `access_config` (`list[obj]`): The config settings for accessing runtime. When `null`, the `access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.access_config.new](#fn-access_confignew) constructor.\n  - `software_config` (`list[obj]`): The config settings for software inside the runtime. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.software_config.new](#fn-software_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.timeouts.new](#fn-timeoutsnew) constructor.\n  - `virtual_machine` (`list[obj]`): Use a Compute Engine VM image to start the managed notebook instance. When `null`, the `virtual_machine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.new](#fn-virtual_machinenew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    access_config=null,
    project=null,
    software_config=null,
    timeouts=null,
    virtual_machine=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_runtime',
    label=resourceLabel,
    attrs=self.newAttrs(
      access_config=access_config,
      location=location,
      name=name,
      project=project,
      software_config=software_config,
      timeouts=timeouts,
      virtual_machine=virtual_machine
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.notebooks_runtime.newAttrs` constructs a new object with attributes and blocks configured for the `notebooks_runtime`\nTerraform resource.\n\nUnlike [google.notebooks_runtime.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): A reference to the zone where the machine resides.\n  - `name` (`string`): The name specified for the Notebook runtime.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `access_config` (`list[obj]`): The config settings for accessing runtime. When `null`, the `access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.access_config.new](#fn-access_confignew) constructor.\n  - `software_config` (`list[obj]`): The config settings for software inside the runtime. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.software_config.new](#fn-software_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.timeouts.new](#fn-timeoutsnew) constructor.\n  - `virtual_machine` (`list[obj]`): Use a Compute Engine VM image to start the managed notebook instance. When `null`, the `virtual_machine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.new](#fn-virtual_machinenew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `notebooks_runtime` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    access_config=null,
    project=null,
    software_config=null,
    timeouts=null,
    virtual_machine=null
  ):: std.prune(a={
    access_config: access_config,
    location: location,
    name: name,
    project: project,
    software_config: software_config,
    timeouts: timeouts,
    virtual_machine: virtual_machine,
  }),
  software_config:: {
    kernels:: {
      '#new':: d.fn(help='\n`google.notebooks_runtime.software_config.kernels.new` constructs a new object with attributes and blocks configured for the `kernels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repository` (`string`): The path to the container image repository.\nFor example: gcr.io/{project_id}/{imageName}\n  - `tag` (`string`): The tag of the container image. If not specified, this defaults to the latest tag. When `null`, the `tag` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `kernels` sub block.\n', args=[]),
      new(
        repository,
        tag=null
      ):: std.prune(a={
        repository: repository,
        tag: tag,
      }),
    },
    '#new':: d.fn(help='\n`google.notebooks_runtime.software_config.new` constructs a new object with attributes and blocks configured for the `software_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `custom_gpu_driver_path` (`string`): Specify a custom Cloud Storage path where the GPU driver is stored.\nIf not specified, we&#39;ll automatically choose from official GPU drivers. When `null`, the `custom_gpu_driver_path` field will be omitted from the resulting object.\n  - `enable_health_monitoring` (`bool`): Verifies core internal services are running. Default: True. When `null`, the `enable_health_monitoring` field will be omitted from the resulting object.\n  - `idle_shutdown` (`bool`): Runtime will automatically shutdown after idle_shutdown_time.\nDefault: True When `null`, the `idle_shutdown` field will be omitted from the resulting object.\n  - `idle_shutdown_timeout` (`number`): Time in minutes to wait before shuting down runtime.\nDefault: 180 minutes When `null`, the `idle_shutdown_timeout` field will be omitted from the resulting object.\n  - `install_gpu_driver` (`bool`): Install Nvidia Driver automatically. When `null`, the `install_gpu_driver` field will be omitted from the resulting object.\n  - `notebook_upgrade_schedule` (`string`): Cron expression in UTC timezone for schedule instance auto upgrade.\nPlease follow the [cron format](https://en.wikipedia.org/wiki/Cron). When `null`, the `notebook_upgrade_schedule` field will be omitted from the resulting object.\n  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a notebook instance\nfully boots up. The path must be a URL or\nCloud Storage path (gs://path-to-file/file-name). When `null`, the `post_startup_script` field will be omitted from the resulting object.\n  - `post_startup_script_behavior` (`string`): Behavior for the post startup script. Possible values: [&#34;POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED&#34;, &#34;RUN_EVERY_START&#34;, &#34;DOWNLOAD_AND_RUN_EVERY_START&#34;] When `null`, the `post_startup_script_behavior` field will be omitted from the resulting object.\n  - `kernels` (`list[obj]`): Use a list of container images to use as Kernels in the notebook instance. When `null`, the `kernels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.software_config.kernels.new](#fn-software_configkernelsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `software_config` sub block.\n', args=[]),
    new(
      custom_gpu_driver_path=null,
      enable_health_monitoring=null,
      idle_shutdown=null,
      idle_shutdown_timeout=null,
      install_gpu_driver=null,
      kernels=null,
      notebook_upgrade_schedule=null,
      post_startup_script=null,
      post_startup_script_behavior=null
    ):: std.prune(a={
      custom_gpu_driver_path: custom_gpu_driver_path,
      enable_health_monitoring: enable_health_monitoring,
      idle_shutdown: idle_shutdown,
      idle_shutdown_timeout: idle_shutdown_timeout,
      install_gpu_driver: install_gpu_driver,
      kernels: kernels,
      notebook_upgrade_schedule: notebook_upgrade_schedule,
      post_startup_script: post_startup_script,
      post_startup_script_behavior: post_startup_script_behavior,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.notebooks_runtime.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  virtual_machine:: {
    '#new':: d.fn(help='\n`google.notebooks_runtime.virtual_machine.new` constructs a new object with attributes and blocks configured for the `virtual_machine`\nTerraform sub block.\n\n\n\n**Args**:\n  - `virtual_machine_config` (`list[obj]`): Virtual Machine configuration settings. When `null`, the `virtual_machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.new](#fn-virtual_machinevirtual_machine_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `virtual_machine` sub block.\n', args=[]),
    new(
      virtual_machine_config=null
    ):: std.prune(a={
      virtual_machine_config: virtual_machine_config,
    }),
    virtual_machine_config:: {
      accelerator_config:: {
        '#new':: d.fn(help='\n`google.notebooks_runtime.virtual_machine.virtual_machine_config.accelerator_config.new` constructs a new object with attributes and blocks configured for the `accelerator_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `core_count` (`number`): Count of cores of this accelerator. When `null`, the `core_count` field will be omitted from the resulting object.\n  - `type` (`string`): Accelerator model. For valid values, see\n&#39;https://cloud.google.com/vertex-ai/docs/workbench/reference/\nrest/v1/projects.locations.runtimes#AcceleratorType&#39; When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `accelerator_config` sub block.\n', args=[]),
        new(
          core_count=null,
          type=null
        ):: std.prune(a={
          core_count: core_count,
          type: type,
        }),
      },
      container_images:: {
        '#new':: d.fn(help='\n`google.notebooks_runtime.virtual_machine.virtual_machine_config.container_images.new` constructs a new object with attributes and blocks configured for the `container_images`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repository` (`string`): The path to the container image repository.\nFor example: gcr.io/{project_id}/{imageName}\n  - `tag` (`string`): The tag of the container image. If not specified, this defaults to the latest tag. When `null`, the `tag` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `container_images` sub block.\n', args=[]),
        new(
          repository,
          tag=null
        ):: std.prune(a={
          repository: repository,
          tag: tag,
        }),
      },
      data_disk:: {
        initialize_params:: {
          '#new':: d.fn(help='\n`google.notebooks_runtime.virtual_machine.virtual_machine_config.data_disk.initialize_params.new` constructs a new object with attributes and blocks configured for the `initialize_params`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Provide this property when creating the disk. When `null`, the `description` field will be omitted from the resulting object.\n  - `disk_name` (`string`): Specifies the disk name. If not specified, the default is\nto use the name of the instance. If the disk with the\ninstance name exists already in the given zone/region, a\nnew name will be automatically generated. When `null`, the `disk_name` field will be omitted from the resulting object.\n  - `disk_size_gb` (`number`): Specifies the size of the disk in base-2 GB. If not\nspecified, the disk will be the same size as the image\n(usually 10GB). If specified, the size must be equal to\nor larger than 10GB. Default 100 GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `disk_type` (`string`): The type of the boot disk attached to this runtime,\ndefaults to standard persistent disk. For valid values,\nsee &#39;https://cloud.google.com/vertex-ai/docs/workbench/\nreference/rest/v1/projects.locations.runtimes#disktype&#39; When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this disk. These can be later modified\nby the disks.setLabels method. This field is only\napplicable for persistent disks. When `null`, the `labels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `initialize_params` sub block.\n', args=[]),
          new(
            description=null,
            disk_name=null,
            disk_size_gb=null,
            disk_type=null,
            labels=null
          ):: std.prune(a={
            description: description,
            disk_name: disk_name,
            disk_size_gb: disk_size_gb,
            disk_type: disk_type,
            labels: labels,
          }),
        },
        '#new':: d.fn(help='\n`google.notebooks_runtime.virtual_machine.virtual_machine_config.data_disk.new` constructs a new object with attributes and blocks configured for the `data_disk`\nTerraform sub block.\n\n\n\n**Args**:\n  - `interface` (`string`): &#34;Specifies the disk interface to use for attaching this disk,\nwhich is either SCSI or NVME. The default is SCSI. Persistent\ndisks must always use SCSI and the request will fail if you attempt\nto attach a persistent disk in any other format than SCSI. Local SSDs\ncan use either NVME or SCSI. For performance characteristics of SCSI\nover NVMe, see Local SSD performance. Valid values: * NVME * SCSI&#34;. When `null`, the `interface` field will be omitted from the resulting object.\n  - `mode` (`string`): The mode in which to attach this disk, either READ_WRITE\nor READ_ONLY. If not specified, the default is to attach\nthe disk in READ_WRITE mode. When `null`, the `mode` field will be omitted from the resulting object.\n  - `source` (`string`): Specifies a valid partial or full URL to an existing\nPersistent Disk resource. When `null`, the `source` field will be omitted from the resulting object.\n  - `type` (`string`): Specifies the type of the disk, either SCRATCH or PERSISTENT.\nIf not specified, the default is PERSISTENT. When `null`, the `type` field will be omitted from the resulting object.\n  - `initialize_params` (`list[obj]`): Input only. Specifies the parameters for a new disk that will\nbe created alongside the new instance. Use initialization\nparameters to create boot disks or local SSDs attached to the\nnew instance. This property is mutually exclusive with the\nsource property; you can only define one or the other, but not\nboth. When `null`, the `initialize_params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.data_disk.initialize_params.new](#fn-virtual_machinevirtual_machinevirtual_machine_configinitialize_paramsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `data_disk` sub block.\n', args=[]),
        new(
          initialize_params=null,
          interface=null,
          mode=null,
          source=null,
          type=null
        ):: std.prune(a={
          initialize_params: initialize_params,
          interface: interface,
          mode: mode,
          source: source,
          type: type,
        }),
      },
      encryption_config:: {
        '#new':: d.fn(help='\n`google.notebooks_runtime.virtual_machine.virtual_machine_config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key` (`string`): The Cloud KMS resource identifier of the customer-managed\nencryption key used to protect a resource, such as a disks.\nIt has the following format:\n&#39;projects/{PROJECT_ID}/locations/{REGION}/keyRings/\n{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}&#39; When `null`, the `kms_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
        new(
          kms_key=null
        ):: std.prune(a={
          kms_key: kms_key,
        }),
      },
      '#new':: d.fn(help='\n`google.notebooks_runtime.virtual_machine.virtual_machine_config.new` constructs a new object with attributes and blocks configured for the `virtual_machine_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `internal_ip_only` (`bool`): If true, runtime will only have internal IP addresses. By default,\nruntimes are not restricted to internal IP addresses, and will\nhave ephemeral external IP addresses assigned to each vm. This\n&#39;internal_ip_only&#39; restriction can only be enabled for subnetwork\nenabled networks, and all dependencies must be configured to be\naccessible without external IP addresses. When `null`, the `internal_ip_only` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels to associate with this runtime. Label **keys** must\ncontain 1 to 63 characters, and must conform to [RFC 1035]\n(https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be\nempty, but, if present, must contain 1 to 63 characters, and must\nconform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No\nmore than 32 labels can be associated with a cluster. When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The Compute Engine machine type used for runtimes.\n  - `metadata` (`obj`): The Compute Engine metadata entries to add to virtual machine.\n(see [Project and instance metadata](https://cloud.google.com\n/compute/docs/storing-retrieving-metadata#project_and_instance\n_metadata)). When `null`, the `metadata` field will be omitted from the resulting object.\n  - `network` (`string`): The Compute Engine network to be used for machine communications.\nCannot be specified with subnetwork. If neither &#39;network&#39; nor\n&#39;subnet&#39; is specified, the &#34;default&#34; network of the project is\nused, if it exists. A full URL or partial URI. Examples:\n  * &#39;https://www.googleapis.com/compute/v1/projects/[project_id]/\n  regions/global/default&#39;\n  * &#39;projects/[project_id]/regions/global/default&#39;\nRuntimes are managed resources inside Google Infrastructure.\nRuntimes support the following network configurations:\n  * Google Managed Network (Network &amp; subnet are empty)\n  * Consumer Project VPC (network &amp; subnet are required). Requires\n  configuring Private Service Access.\n  * Shared VPC (network &amp; subnet are required). Requires\n  configuring Private Service Access. When `null`, the `network` field will be omitted from the resulting object.\n  - `nic_type` (`string`): The type of vNIC to be used on this interface. This may be gVNIC\nor VirtioNet. Possible values: [&#34;UNSPECIFIED_NIC_TYPE&#34;, &#34;VIRTIO_NET&#34;, &#34;GVNIC&#34;] When `null`, the `nic_type` field will be omitted from the resulting object.\n  - `reserved_ip_range` (`string`): Reserved IP Range name is used for VPC Peering. The\nsubnetwork allocation will use the range *name* if it&#39;s assigned. When `null`, the `reserved_ip_range` field will be omitted from the resulting object.\n  - `subnet` (`string`): The Compute Engine subnetwork to be used for machine\ncommunications. Cannot be specified with network. A full URL or\npartial URI are valid. Examples:\n  * &#39;https://www.googleapis.com/compute/v1/projects/[project_id]/\n  regions/us-east1/subnetworks/sub0&#39;\n  * &#39;projects/[project_id]/regions/us-east1/subnetworks/sub0&#39; When `null`, the `subnet` field will be omitted from the resulting object.\n  - `tags` (`list`): The Compute Engine tags to add to runtime (see [Tagging instances]\n(https://cloud.google.com/compute/docs/\nlabel-or-tag-resources#tags)). When `null`, the `tags` field will be omitted from the resulting object.\n  - `accelerator_config` (`list[obj]`): The Compute Engine accelerator configuration for this runtime. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.accelerator_config.new](#fn-virtual_machinevirtual_machineaccelerator_confignew) constructor.\n  - `container_images` (`list[obj]`): Use a list of container images to start the notebook instance. When `null`, the `container_images` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.container_images.new](#fn-virtual_machinevirtual_machinecontainer_imagesnew) constructor.\n  - `data_disk` (`list[obj]`): Data disk option configuration settings. When `null`, the `data_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.data_disk.new](#fn-virtual_machinevirtual_machinedata_disknew) constructor.\n  - `encryption_config` (`list[obj]`): Encryption settings for virtual machine data disk. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.encryption_config.new](#fn-virtual_machinevirtual_machineencryption_confignew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Shielded VM Instance configuration settings. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.shielded_instance_config.new](#fn-virtual_machinevirtual_machineshielded_instance_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `virtual_machine_config` sub block.\n', args=[]),
      new(
        machine_type,
        accelerator_config=null,
        container_images=null,
        data_disk=null,
        encryption_config=null,
        internal_ip_only=null,
        labels=null,
        metadata=null,
        network=null,
        nic_type=null,
        reserved_ip_range=null,
        shielded_instance_config=null,
        subnet=null,
        tags=null
      ):: std.prune(a={
        accelerator_config: accelerator_config,
        container_images: container_images,
        data_disk: data_disk,
        encryption_config: encryption_config,
        internal_ip_only: internal_ip_only,
        labels: labels,
        machine_type: machine_type,
        metadata: metadata,
        network: network,
        nic_type: nic_type,
        reserved_ip_range: reserved_ip_range,
        shielded_instance_config: shielded_instance_config,
        subnet: subnet,
        tags: tags,
      }),
      shielded_instance_config:: {
        '#new':: d.fn(help='\n`google.notebooks_runtime.virtual_machine.virtual_machine_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled.\nEnables monitoring and attestation of the boot integrity of\nthe instance. The attestation is performed against the\nintegrity policy baseline. This baseline is initially derived\nfrom the implicitly trusted boot image when the instance is\ncreated. Enabled by default. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled.Secure\nBoot helps ensure that the system only runs authentic software\nby verifying the digital signature of all boot components, and\nhalting the boot process if signature verification fails.\nDisabled by default. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n  - `enable_vtpm` (`bool`): Defines whether the instance has the vTPM enabled. Enabled by\ndefault. When `null`, the `enable_vtpm` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
        new(
          enable_integrity_monitoring=null,
          enable_secure_boot=null,
          enable_vtpm=null
        ):: std.prune(a={
          enable_integrity_monitoring: enable_integrity_monitoring,
          enable_secure_boot: enable_secure_boot,
          enable_vtpm: enable_vtpm,
        }),
      },
    },
  },
  '#withAccessConfig':: d.fn(help='`google.list[obj].withAccessConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the access_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAccessConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `access_config` field.\n', args=[]),
  withAccessConfig(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          access_config: value,
        },
      },
    },
  },
  '#withAccessConfigMixin':: d.fn(help='`google.list[obj].withAccessConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the access_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAccessConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `access_config` field.\n', args=[]),
  withAccessConfigMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          access_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSoftwareConfig':: d.fn(help='`google.list[obj].withSoftwareConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the software_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSoftwareConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `software_config` field.\n', args=[]),
  withSoftwareConfig(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          software_config: value,
        },
      },
    },
  },
  '#withSoftwareConfigMixin':: d.fn(help='`google.list[obj].withSoftwareConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the software_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSoftwareConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `software_config` field.\n', args=[]),
  withSoftwareConfigMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          software_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVirtualMachine':: d.fn(help='`google.list[obj].withVirtualMachine` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the virtual_machine field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVirtualMachineMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `virtual_machine` field.\n', args=[]),
  withVirtualMachine(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          virtual_machine: value,
        },
      },
    },
  },
  '#withVirtualMachineMixin':: d.fn(help='`google.list[obj].withVirtualMachineMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the virtual_machine field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVirtualMachine](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `virtual_machine` field.\n', args=[]),
  withVirtualMachineMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          virtual_machine+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
