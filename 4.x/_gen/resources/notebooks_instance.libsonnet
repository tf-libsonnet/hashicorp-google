local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='notebooks_instance', url='', help='`notebooks_instance` represents the `google_notebooks_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  accelerator_config:: {
    '#new':: d.fn(help='\n`google.notebooks_instance.accelerator_config.new` constructs a new object with attributes and blocks configured for the `accelerator_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `core_count` (`number`): Count of cores of this accelerator.\n  - `type` (`string`): Type of this accelerator. Possible values: [&#34;ACCELERATOR_TYPE_UNSPECIFIED&#34;, &#34;NVIDIA_TESLA_K80&#34;, &#34;NVIDIA_TESLA_P100&#34;, &#34;NVIDIA_TESLA_V100&#34;, &#34;NVIDIA_TESLA_P4&#34;, &#34;NVIDIA_TESLA_T4&#34;, &#34;NVIDIA_TESLA_T4_VWS&#34;, &#34;NVIDIA_TESLA_P100_VWS&#34;, &#34;NVIDIA_TESLA_P4_VWS&#34;, &#34;NVIDIA_TESLA_A100&#34;, &#34;TPU_V2&#34;, &#34;TPU_V3&#34;]\n\n**Returns**:\n  - An attribute object that represents the `accelerator_config` sub block.\n', args=[]),
    new(
      core_count,
      type
    ):: std.prune(a={
      core_count: core_count,
      type: type,
    }),
  },
  container_image:: {
    '#new':: d.fn(help='\n`google.notebooks_instance.container_image.new` constructs a new object with attributes and blocks configured for the `container_image`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repository` (`string`): The path to the container image repository.\nFor example: gcr.io/{project_id}/{imageName}\n  - `tag` (`string`): The tag of the container image. If not specified, this defaults to the latest tag. When `null`, the `tag` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `container_image` sub block.\n', args=[]),
    new(
      repository,
      tag=null
    ):: std.prune(a={
      repository: repository,
      tag: tag,
    }),
  },
  '#new':: d.fn(help="\n`google.notebooks_instance.new` injects a new `google_notebooks_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.notebooks_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.notebooks_instance` using the reference:\n\n    $._ref.google_notebooks_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_notebooks_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `boot_disk_size_gb` (`number`): The size of the boot disk in GB attached to this instance,\nup to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.\nIf not specified, this defaults to 100. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `boot_disk_type` (`string`): Possible disk types for notebook instances. Possible values: [\u0026#34;DISK_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;PD_STANDARD\u0026#34;, \u0026#34;PD_SSD\u0026#34;, \u0026#34;PD_BALANCED\u0026#34;, \u0026#34;PD_EXTREME\u0026#34;] When `null`, the `boot_disk_type` field will be omitted from the resulting object.\n  - `create_time` (`string`): Instance creation time When `null`, the `create_time` field will be omitted from the resulting object.\n  - `custom_gpu_driver_path` (`string`): Specify a custom Cloud Storage path where the GPU driver is stored.\nIf not specified, we\u0026#39;ll automatically choose from official GPU drivers. When `null`, the `custom_gpu_driver_path` field will be omitted from the resulting object.\n  - `data_disk_size_gb` (`number`): The size of the data disk in GB attached to this instance,\nup to a maximum of 64000 GB (64 TB).\nYou can choose the size of the data disk based on how big your notebooks and data are.\nIf not specified, this defaults to 100. When `null`, the `data_disk_size_gb` field will be omitted from the resulting object.\n  - `data_disk_type` (`string`): Possible disk types for notebook instances. Possible values: [\u0026#34;DISK_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;PD_STANDARD\u0026#34;, \u0026#34;PD_SSD\u0026#34;, \u0026#34;PD_BALANCED\u0026#34;, \u0026#34;PD_EXTREME\u0026#34;] When `null`, the `data_disk_type` field will be omitted from the resulting object.\n  - `disk_encryption` (`string`): Disk encryption method used on the boot and data disks, defaults to GMEK. Possible values: [\u0026#34;DISK_ENCRYPTION_UNSPECIFIED\u0026#34;, \u0026#34;GMEK\u0026#34;, \u0026#34;CMEK\u0026#34;] When `null`, the `disk_encryption` field will be omitted from the resulting object.\n  - `install_gpu_driver` (`bool`): Whether the end user authorizes Google Cloud to install GPU driver\non this instance. If this field is empty or set to false, the GPU driver\nwon\u0026#39;t be installed. Only applicable to instances with GPUs. When `null`, the `install_gpu_driver` field will be omitted from the resulting object.\n  - `instance_owners` (`list`): The list of owners of this instance after creation.\nFormat: alias@example.com.\nCurrently supports one owner only.\nIf not specified, all of the service account users of\nyour VM instance\u0026#39;s service account can use the instance. When `null`, the `instance_owners` field will be omitted from the resulting object.\n  - `kms_key` (`string`): The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.\nFormat: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id} When `null`, the `kms_key` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this instance. These can be later modified by the setLabels method.\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): A reference to the zone where the machine resides.\n  - `machine_type` (`string`): A reference to a machine type which defines VM kind.\n  - `metadata` (`obj`): Custom metadata to apply to this instance.\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `name` (`string`): The name specified for the Notebook instance.\n  - `network` (`string`): The name of the VPC that this instance is in.\nFormat: projects/{project_id}/global/networks/{network_id} When `null`, the `network` field will be omitted from the resulting object.\n  - `nic_type` (`string`): The type of vNIC driver. Possible values: [\u0026#34;UNSPECIFIED_NIC_TYPE\u0026#34;, \u0026#34;VIRTIO_NET\u0026#34;, \u0026#34;GVNIC\u0026#34;] When `null`, the `nic_type` field will be omitted from the resulting object.\n  - `no_proxy_access` (`bool`): The notebook instance will not register with the proxy.. When `null`, the `no_proxy_access` field will be omitted from the resulting object.\n  - `no_public_ip` (`bool`): No public IP will be assigned to this instance. When `null`, the `no_public_ip` field will be omitted from the resulting object.\n  - `no_remove_data_disk` (`bool`): If true, the data disk will not be auto deleted when deleting the instance. When `null`, the `no_remove_data_disk` field will be omitted from the resulting object.\n  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a\nnotebook instance fully boots up. The path must be a URL\nor Cloud Storage path (gs://path-to-file/file-name). When `null`, the `post_startup_script` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): The service account on this instance, giving access to other\nGoogle Cloud services. You can use any service account within\nthe same project, but you must have the service account user\npermission to use the instance. If not specified,\nthe Compute Engine default service account is used. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `service_account_scopes` (`list`): Optional. The URIs of service account scopes to be included in Compute Engine instances.\nIf not specified, the following scopes are defined:\n- https://www.googleapis.com/auth/cloud-platform\n- https://www.googleapis.com/auth/userinfo.email When `null`, the `service_account_scopes` field will be omitted from the resulting object.\n  - `subnet` (`string`): The name of the subnet that this instance is in.\nFormat: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id} When `null`, the `subnet` field will be omitted from the resulting object.\n  - `tags` (`list`): The Compute Engine tags to add to instance. When `null`, the `tags` field will be omitted from the resulting object.\n  - `update_time` (`string`): Instance update time. When `null`, the `update_time` field will be omitted from the resulting object.\n  - `accelerator_config` (`list[obj]`): The hardware accelerator used on this instance. If you use accelerators,\nmake sure that your configuration has enough vCPUs and memory to support the\nmachineType you have selected. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.accelerator_config.new](#fn-notebooksinstanceacceleratorconfignew) constructor.\n  - `container_image` (`list[obj]`): Use a container image to start the notebook instance. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.container_image.new](#fn-notebooksinstancecontainerimagenew) constructor.\n  - `reservation_affinity` (`list[obj]`): Reservation Affinity for consuming Zonal reservation. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.reservation_affinity.new](#fn-notebooksinstancereservationaffinitynew) constructor.\n  - `shielded_instance_config` (`list[obj]`): A set of Shielded Instance options. Check [Images using supported Shielded VM features]\nNot all combinations are valid When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.shielded_instance_config.new](#fn-notebooksinstanceshieldedinstanceconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.timeouts.new](#fn-notebooksinstancetimeoutsnew) constructor.\n  - `vm_image` (`list[obj]`): Use a Compute Engine VM image to start the notebook instance. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.vm_image.new](#fn-notebooksinstancevmimagenew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    machine_type,
    name,
    accelerator_config=null,
    boot_disk_size_gb=null,
    boot_disk_type=null,
    container_image=null,
    create_time=null,
    custom_gpu_driver_path=null,
    data_disk_size_gb=null,
    data_disk_type=null,
    disk_encryption=null,
    install_gpu_driver=null,
    instance_owners=null,
    kms_key=null,
    labels=null,
    metadata=null,
    network=null,
    nic_type=null,
    no_proxy_access=null,
    no_public_ip=null,
    no_remove_data_disk=null,
    post_startup_script=null,
    project=null,
    reservation_affinity=null,
    service_account=null,
    service_account_scopes=null,
    shielded_instance_config=null,
    subnet=null,
    tags=null,
    timeouts=null,
    update_time=null,
    vm_image=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      accelerator_config=accelerator_config,
      boot_disk_size_gb=boot_disk_size_gb,
      boot_disk_type=boot_disk_type,
      container_image=container_image,
      create_time=create_time,
      custom_gpu_driver_path=custom_gpu_driver_path,
      data_disk_size_gb=data_disk_size_gb,
      data_disk_type=data_disk_type,
      disk_encryption=disk_encryption,
      install_gpu_driver=install_gpu_driver,
      instance_owners=instance_owners,
      kms_key=kms_key,
      labels=labels,
      location=location,
      machine_type=machine_type,
      metadata=metadata,
      name=name,
      network=network,
      nic_type=nic_type,
      no_proxy_access=no_proxy_access,
      no_public_ip=no_public_ip,
      no_remove_data_disk=no_remove_data_disk,
      post_startup_script=post_startup_script,
      project=project,
      reservation_affinity=reservation_affinity,
      service_account=service_account,
      service_account_scopes=service_account_scopes,
      shielded_instance_config=shielded_instance_config,
      subnet=subnet,
      tags=tags,
      timeouts=timeouts,
      update_time=update_time,
      vm_image=vm_image
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.notebooks_instance.newAttrs` constructs a new object with attributes and blocks configured for the `notebooks_instance`\nTerraform resource.\n\nUnlike [google.notebooks_instance.new](#fn-notebooksinstancenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): The size of the boot disk in GB attached to this instance,\nup to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.\nIf not specified, this defaults to 100. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `boot_disk_type` (`string`): Possible disk types for notebook instances. Possible values: [&#34;DISK_TYPE_UNSPECIFIED&#34;, &#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `boot_disk_type` field will be omitted from the resulting object.\n  - `create_time` (`string`): Instance creation time When `null`, the `create_time` field will be omitted from the resulting object.\n  - `custom_gpu_driver_path` (`string`): Specify a custom Cloud Storage path where the GPU driver is stored.\nIf not specified, we&#39;ll automatically choose from official GPU drivers. When `null`, the `custom_gpu_driver_path` field will be omitted from the resulting object.\n  - `data_disk_size_gb` (`number`): The size of the data disk in GB attached to this instance,\nup to a maximum of 64000 GB (64 TB).\nYou can choose the size of the data disk based on how big your notebooks and data are.\nIf not specified, this defaults to 100. When `null`, the `data_disk_size_gb` field will be omitted from the resulting object.\n  - `data_disk_type` (`string`): Possible disk types for notebook instances. Possible values: [&#34;DISK_TYPE_UNSPECIFIED&#34;, &#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `data_disk_type` field will be omitted from the resulting object.\n  - `disk_encryption` (`string`): Disk encryption method used on the boot and data disks, defaults to GMEK. Possible values: [&#34;DISK_ENCRYPTION_UNSPECIFIED&#34;, &#34;GMEK&#34;, &#34;CMEK&#34;] When `null`, the `disk_encryption` field will be omitted from the resulting object.\n  - `install_gpu_driver` (`bool`): Whether the end user authorizes Google Cloud to install GPU driver\non this instance. If this field is empty or set to false, the GPU driver\nwon&#39;t be installed. Only applicable to instances with GPUs. When `null`, the `install_gpu_driver` field will be omitted from the resulting object.\n  - `instance_owners` (`list`): The list of owners of this instance after creation.\nFormat: alias@example.com.\nCurrently supports one owner only.\nIf not specified, all of the service account users of\nyour VM instance&#39;s service account can use the instance. When `null`, the `instance_owners` field will be omitted from the resulting object.\n  - `kms_key` (`string`): The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.\nFormat: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id} When `null`, the `kms_key` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this instance. These can be later modified by the setLabels method.\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): A reference to the zone where the machine resides.\n  - `machine_type` (`string`): A reference to a machine type which defines VM kind.\n  - `metadata` (`obj`): Custom metadata to apply to this instance.\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `name` (`string`): The name specified for the Notebook instance.\n  - `network` (`string`): The name of the VPC that this instance is in.\nFormat: projects/{project_id}/global/networks/{network_id} When `null`, the `network` field will be omitted from the resulting object.\n  - `nic_type` (`string`): The type of vNIC driver. Possible values: [&#34;UNSPECIFIED_NIC_TYPE&#34;, &#34;VIRTIO_NET&#34;, &#34;GVNIC&#34;] When `null`, the `nic_type` field will be omitted from the resulting object.\n  - `no_proxy_access` (`bool`): The notebook instance will not register with the proxy.. When `null`, the `no_proxy_access` field will be omitted from the resulting object.\n  - `no_public_ip` (`bool`): No public IP will be assigned to this instance. When `null`, the `no_public_ip` field will be omitted from the resulting object.\n  - `no_remove_data_disk` (`bool`): If true, the data disk will not be auto deleted when deleting the instance. When `null`, the `no_remove_data_disk` field will be omitted from the resulting object.\n  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a\nnotebook instance fully boots up. The path must be a URL\nor Cloud Storage path (gs://path-to-file/file-name). When `null`, the `post_startup_script` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): The service account on this instance, giving access to other\nGoogle Cloud services. You can use any service account within\nthe same project, but you must have the service account user\npermission to use the instance. If not specified,\nthe Compute Engine default service account is used. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `service_account_scopes` (`list`): Optional. The URIs of service account scopes to be included in Compute Engine instances.\nIf not specified, the following scopes are defined:\n- https://www.googleapis.com/auth/cloud-platform\n- https://www.googleapis.com/auth/userinfo.email When `null`, the `service_account_scopes` field will be omitted from the resulting object.\n  - `subnet` (`string`): The name of the subnet that this instance is in.\nFormat: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id} When `null`, the `subnet` field will be omitted from the resulting object.\n  - `tags` (`list`): The Compute Engine tags to add to instance. When `null`, the `tags` field will be omitted from the resulting object.\n  - `update_time` (`string`): Instance update time. When `null`, the `update_time` field will be omitted from the resulting object.\n  - `accelerator_config` (`list[obj]`): The hardware accelerator used on this instance. If you use accelerators,\nmake sure that your configuration has enough vCPUs and memory to support the\nmachineType you have selected. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.accelerator_config.new](#fn-notebooksinstanceacceleratorconfignew) constructor.\n  - `container_image` (`list[obj]`): Use a container image to start the notebook instance. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.container_image.new](#fn-notebooksinstancecontainerimagenew) constructor.\n  - `reservation_affinity` (`list[obj]`): Reservation Affinity for consuming Zonal reservation. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.reservation_affinity.new](#fn-notebooksinstancereservationaffinitynew) constructor.\n  - `shielded_instance_config` (`list[obj]`): A set of Shielded Instance options. Check [Images using supported Shielded VM features]\nNot all combinations are valid When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.shielded_instance_config.new](#fn-notebooksinstanceshieldedinstanceconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.timeouts.new](#fn-notebooksinstancetimeoutsnew) constructor.\n  - `vm_image` (`list[obj]`): Use a Compute Engine VM image to start the notebook instance. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.vm_image.new](#fn-notebooksinstancevmimagenew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `notebooks_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    machine_type,
    name,
    accelerator_config=null,
    boot_disk_size_gb=null,
    boot_disk_type=null,
    container_image=null,
    create_time=null,
    custom_gpu_driver_path=null,
    data_disk_size_gb=null,
    data_disk_type=null,
    disk_encryption=null,
    install_gpu_driver=null,
    instance_owners=null,
    kms_key=null,
    labels=null,
    metadata=null,
    network=null,
    nic_type=null,
    no_proxy_access=null,
    no_public_ip=null,
    no_remove_data_disk=null,
    post_startup_script=null,
    project=null,
    reservation_affinity=null,
    service_account=null,
    service_account_scopes=null,
    shielded_instance_config=null,
    subnet=null,
    tags=null,
    timeouts=null,
    update_time=null,
    vm_image=null
  ):: std.prune(a={
    accelerator_config: accelerator_config,
    boot_disk_size_gb: boot_disk_size_gb,
    boot_disk_type: boot_disk_type,
    container_image: container_image,
    create_time: create_time,
    custom_gpu_driver_path: custom_gpu_driver_path,
    data_disk_size_gb: data_disk_size_gb,
    data_disk_type: data_disk_type,
    disk_encryption: disk_encryption,
    install_gpu_driver: install_gpu_driver,
    instance_owners: instance_owners,
    kms_key: kms_key,
    labels: labels,
    location: location,
    machine_type: machine_type,
    metadata: metadata,
    name: name,
    network: network,
    nic_type: nic_type,
    no_proxy_access: no_proxy_access,
    no_public_ip: no_public_ip,
    no_remove_data_disk: no_remove_data_disk,
    post_startup_script: post_startup_script,
    project: project,
    reservation_affinity: reservation_affinity,
    service_account: service_account,
    service_account_scopes: service_account_scopes,
    shielded_instance_config: shielded_instance_config,
    subnet: subnet,
    tags: tags,
    timeouts: timeouts,
    update_time: update_time,
    vm_image: vm_image,
  }),
  reservation_affinity:: {
    '#new':: d.fn(help='\n`google.notebooks_instance.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `consume_reservation_type` (`string`): The type of Compute Reservation. Possible values: [&#34;NO_RESERVATION&#34;, &#34;ANY_RESERVATION&#34;, &#34;SPECIFIC_RESERVATION&#34;]\n  - `key` (`string`): Corresponds to the label key of reservation resource. When `null`, the `key` field will be omitted from the resulting object.\n  - `values` (`list`): Corresponds to the label values of reservation resource. When `null`, the `values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `reservation_affinity` sub block.\n', args=[]),
    new(
      consume_reservation_type,
      key=null,
      values=null
    ):: std.prune(a={
      consume_reservation_type: consume_reservation_type,
      key: key,
      values: values,
    }),
  },
  shielded_instance_config:: {
    '#new':: d.fn(help='\n`google.notebooks_instance.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the\nboot integrity of the instance. The attestation is performed against the integrity policy baseline.\nThis baseline is initially derived from the implicitly trusted boot image when the instance is created.\nEnabled by default. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs\nauthentic software by verifying the digital signature of all boot components, and halting the boot process\nif signature verification fails.\nDisabled by default. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n  - `enable_vtpm` (`bool`): Defines whether the instance has the vTPM enabled.\nEnabled by default. When `null`, the `enable_vtpm` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
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
  timeouts:: {
    '#new':: d.fn(help='\n`google.notebooks_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  vm_image:: {
    '#new':: d.fn(help='\n`google.notebooks_instance.vm_image.new` constructs a new object with attributes and blocks configured for the `vm_image`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image_family` (`string`): Use this VM image family to find the image; the newest image in this family will be used. When `null`, the `image_family` field will be omitted from the resulting object.\n  - `image_name` (`string`): Use VM image name to find the image. When `null`, the `image_name` field will be omitted from the resulting object.\n  - `project` (`string`): The name of the Google Cloud project that this VM image belongs to.\nFormat: projects/{project_id}\n\n**Returns**:\n  - An attribute object that represents the `vm_image` sub block.\n', args=[]),
    new(
      project,
      image_family=null,
      image_name=null
    ):: std.prune(a={
      image_family: image_family,
      image_name: image_name,
      project: project,
    }),
  },
  '#withAcceleratorConfig':: d.fn(help='`google.list[obj].withAcceleratorConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the accelerator_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAcceleratorConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `accelerator_config` field.\n', args=[]),
  withAcceleratorConfig(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          accelerator_config: value,
        },
      },
    },
  },
  '#withAcceleratorConfigMixin':: d.fn(help='`google.list[obj].withAcceleratorConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the accelerator_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAcceleratorConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `accelerator_config` field.\n', args=[]),
  withAcceleratorConfigMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          accelerator_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBootDiskSizeGb':: d.fn(help='`google.number.withBootDiskSizeGb` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the boot_disk_size_gb field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `boot_disk_size_gb` field.\n', args=[]),
  withBootDiskSizeGb(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          boot_disk_size_gb: value,
        },
      },
    },
  },
  '#withBootDiskType':: d.fn(help='`google.string.withBootDiskType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the boot_disk_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `boot_disk_type` field.\n', args=[]),
  withBootDiskType(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          boot_disk_type: value,
        },
      },
    },
  },
  '#withContainerImage':: d.fn(help='`google.list[obj].withContainerImage` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the container_image field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withContainerImageMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `container_image` field.\n', args=[]),
  withContainerImage(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          container_image: value,
        },
      },
    },
  },
  '#withContainerImageMixin':: d.fn(help='`google.list[obj].withContainerImageMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the container_image field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withContainerImage](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `container_image` field.\n', args=[]),
  withContainerImageMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          container_image+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCreateTime':: d.fn(help='`google.string.withCreateTime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the create_time field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `create_time` field.\n', args=[]),
  withCreateTime(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          create_time: value,
        },
      },
    },
  },
  '#withCustomGpuDriverPath':: d.fn(help='`google.string.withCustomGpuDriverPath` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the custom_gpu_driver_path field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `custom_gpu_driver_path` field.\n', args=[]),
  withCustomGpuDriverPath(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          custom_gpu_driver_path: value,
        },
      },
    },
  },
  '#withDataDiskSizeGb':: d.fn(help='`google.number.withDataDiskSizeGb` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the data_disk_size_gb field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `data_disk_size_gb` field.\n', args=[]),
  withDataDiskSizeGb(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          data_disk_size_gb: value,
        },
      },
    },
  },
  '#withDataDiskType':: d.fn(help='`google.string.withDataDiskType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the data_disk_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `data_disk_type` field.\n', args=[]),
  withDataDiskType(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          data_disk_type: value,
        },
      },
    },
  },
  '#withDiskEncryption':: d.fn(help='`google.string.withDiskEncryption` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the disk_encryption field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `disk_encryption` field.\n', args=[]),
  withDiskEncryption(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          disk_encryption: value,
        },
      },
    },
  },
  '#withInstallGpuDriver':: d.fn(help='`google.bool.withInstallGpuDriver` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the install_gpu_driver field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `install_gpu_driver` field.\n', args=[]),
  withInstallGpuDriver(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          install_gpu_driver: value,
        },
      },
    },
  },
  '#withInstanceOwners':: d.fn(help='`google.list.withInstanceOwners` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the instance_owners field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `instance_owners` field.\n', args=[]),
  withInstanceOwners(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          instance_owners: value,
        },
      },
    },
  },
  '#withKmsKey':: d.fn(help='`google.string.withKmsKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key` field.\n', args=[]),
  withKmsKey(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          kms_key: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMachineType':: d.fn(help='`google.string.withMachineType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the machine_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `machine_type` field.\n', args=[]),
  withMachineType(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google.obj.withMetadata` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the metadata field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNicType':: d.fn(help='`google.string.withNicType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the nic_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `nic_type` field.\n', args=[]),
  withNicType(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          nic_type: value,
        },
      },
    },
  },
  '#withNoProxyAccess':: d.fn(help='`google.bool.withNoProxyAccess` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the no_proxy_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `no_proxy_access` field.\n', args=[]),
  withNoProxyAccess(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          no_proxy_access: value,
        },
      },
    },
  },
  '#withNoPublicIp':: d.fn(help='`google.bool.withNoPublicIp` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the no_public_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `no_public_ip` field.\n', args=[]),
  withNoPublicIp(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          no_public_ip: value,
        },
      },
    },
  },
  '#withNoRemoveDataDisk':: d.fn(help='`google.bool.withNoRemoveDataDisk` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the no_remove_data_disk field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `no_remove_data_disk` field.\n', args=[]),
  withNoRemoveDataDisk(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          no_remove_data_disk: value,
        },
      },
    },
  },
  '#withPostStartupScript':: d.fn(help='`google.string.withPostStartupScript` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the post_startup_script field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `post_startup_script` field.\n', args=[]),
  withPostStartupScript(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          post_startup_script: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReservationAffinity':: d.fn(help='`google.list[obj].withReservationAffinity` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the reservation_affinity field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReservationAffinityMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `reservation_affinity` field.\n', args=[]),
  withReservationAffinity(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          reservation_affinity: value,
        },
      },
    },
  },
  '#withReservationAffinityMixin':: d.fn(help='`google.list[obj].withReservationAffinityMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the reservation_affinity field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReservationAffinity](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `reservation_affinity` field.\n', args=[]),
  withReservationAffinityMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          reservation_affinity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withServiceAccountScopes':: d.fn(help='`google.list.withServiceAccountScopes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the service_account_scopes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `service_account_scopes` field.\n', args=[]),
  withServiceAccountScopes(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          service_account_scopes: value,
        },
      },
    },
  },
  '#withShieldedInstanceConfig':: d.fn(help='`google.list[obj].withShieldedInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the shielded_instance_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withShieldedInstanceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.\n', args=[]),
  withShieldedInstanceConfig(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          shielded_instance_config: value,
        },
      },
    },
  },
  '#withShieldedInstanceConfigMixin':: d.fn(help='`google.list[obj].withShieldedInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the shielded_instance_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withShieldedInstanceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.\n', args=[]),
  withShieldedInstanceConfigMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          shielded_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSubnet':: d.fn(help='`google.string.withSubnet` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnet field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnet` field.\n', args=[]),
  withSubnet(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          subnet: value,
        },
      },
    },
  },
  '#withTags':: d.fn(help='`google.list.withTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `tags` field.\n', args=[]),
  withTags(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUpdateTime':: d.fn(help='`google.string.withUpdateTime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the update_time field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `update_time` field.\n', args=[]),
  withUpdateTime(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          update_time: value,
        },
      },
    },
  },
  '#withVmImage':: d.fn(help='`google.list[obj].withVmImage` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vm_image field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVmImageMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vm_image` field.\n', args=[]),
  withVmImage(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          vm_image: value,
        },
      },
    },
  },
  '#withVmImageMixin':: d.fn(help='`google.list[obj].withVmImageMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vm_image field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVmImage](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vm_image` field.\n', args=[]),
  withVmImageMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          vm_image+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
