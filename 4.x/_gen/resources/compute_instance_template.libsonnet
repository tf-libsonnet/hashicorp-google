local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_instance_template', url='', help='`compute_instance_template` represents the `google_compute_instance_template` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  advanced_machine_features:: {
    '#new':: d.fn(help='\n`google.compute_instance_template.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_nested_virtualization` (`bool`): Whether to enable nested virtualization or not. When `null`, the `enable_nested_virtualization` field will be omitted from the resulting object.\n  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. When `null`, the `threads_per_core` field will be omitted from the resulting object.\n  - `visible_core_count` (`number`): The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\\&#39;s nominal CPU count and the underlying platform\\&#39;s SMT width. When `null`, the `visible_core_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `advanced_machine_features` sub block.\n', args=[]),
    new(
      enable_nested_virtualization=null,
      threads_per_core=null,
      visible_core_count=null
    ):: std.prune(a={
      enable_nested_virtualization: enable_nested_virtualization,
      threads_per_core: threads_per_core,
      visible_core_count: visible_core_count,
    }),
  },
  confidential_instance_config:: {
    '#new':: d.fn(help='\n`google.compute_instance_template.confidential_instance_config.new` constructs a new object with attributes and blocks configured for the `confidential_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_confidential_compute` (`bool`): Defines whether the instance should have confidential compute enabled.\n\n**Returns**:\n  - An attribute object that represents the `confidential_instance_config` sub block.\n', args=[]),
    new(
      enable_confidential_compute
    ):: std.prune(a={
      enable_confidential_compute: enable_confidential_compute,
    }),
  },
  disk:: {
    disk_encryption_key:: {
      '#new':: d.fn(help='\n`google.compute_instance_template.disk.disk_encryption_key.new` constructs a new object with attributes and blocks configured for the `disk_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_self_link` (`string`): The self link of the encryption key that is stored in Google Cloud KMS.\n\n**Returns**:\n  - An attribute object that represents the `disk_encryption_key` sub block.\n', args=[]),
      new(
        kms_key_self_link
      ):: std.prune(a={
        kms_key_self_link: kms_key_self_link,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_instance_template.disk.new` constructs a new object with attributes and blocks configured for the `disk`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_delete` (`bool`): Whether or not the disk should be auto-deleted. This defaults to true. When `null`, the `auto_delete` field will be omitted from the resulting object.\n  - `boot` (`bool`): Indicates that this is a boot disk. When `null`, the `boot` field will be omitted from the resulting object.\n  - `device_name` (`string`): A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk. When `null`, the `device_name` field will be omitted from the resulting object.\n  - `disk_name` (`string`): Name of the disk. When not provided, this defaults to the name of the instance. When `null`, the `disk_name` field will be omitted from the resulting object.\n  - `disk_size_gb` (`number`): The size of the image in gigabytes. If not specified, it will inherit the size of its base image. For SCRATCH disks, the size must be exactly 375GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `disk_type` (`string`): The Google Compute Engine disk type. Such as &#34;pd-ssd&#34;, &#34;local-ssd&#34;, &#34;pd-balanced&#34; or &#34;pd-standard&#34;. When `null`, the `disk_type` field will be omitted from the resulting object.\n  - `interface` (`string`): Specifies the disk interface to use for attaching this disk. When `null`, the `interface` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to disks, When `null`, the `labels` field will be omitted from the resulting object.\n  - `mode` (`string`): The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If you are attaching or creating a boot disk, this must read-write mode. When `null`, the `mode` field will be omitted from the resulting object.\n  - `resource_policies` (`list`): A list (short name or id) of resource policies to attach to this disk. Currently a max of 1 resource policy is supported. When `null`, the `resource_policies` field will be omitted from the resulting object.\n  - `source` (`string`): The name (not self_link) of the disk (such as those managed by google_compute_disk) to attach. ~&gt; Note: Either source or source_image is required when creating a new instance except for when creating a local SSD. When `null`, the `source` field will be omitted from the resulting object.\n  - `source_image` (`string`): The image from which to initialize this disk. This can be one of: the image&#39;s self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}. ~&gt; Note: Either source or source_image is required when creating a new instance except for when creating a local SSD. When `null`, the `source_image` field will be omitted from the resulting object.\n  - `source_snapshot` (`string`): The source snapshot to create this disk. When creating\na new instance, one of initializeParams.sourceSnapshot,\ninitializeParams.sourceImage, or disks.source is\nrequired except for local SSD. When `null`, the `source_snapshot` field will be omitted from the resulting object.\n  - `type` (`string`): The type of Google Compute Engine disk, can be either &#34;SCRATCH&#34; or &#34;PERSISTENT&#34;. When `null`, the `type` field will be omitted from the resulting object.\n  - `disk_encryption_key` (`list[obj]`): Encrypts or decrypts a disk using a customer-supplied encryption key. When `null`, the `disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.disk.disk_encryption_key.new](#fn-diskdisk_encryption_keynew) constructor.\n  - `source_image_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source\nimage. Required if the source image is protected by a\ncustomer-supplied encryption key.\n\nInstance templates do not store customer-supplied\nencryption keys, so you cannot create disks for\ninstances in a managed instance group if the source\nimages are encrypted with your own keys. When `null`, the `source_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.disk.source_image_encryption_key.new](#fn-disksource_image_encryption_keynew) constructor.\n  - `source_snapshot_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. When `null`, the `source_snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.disk.source_snapshot_encryption_key.new](#fn-disksource_snapshot_encryption_keynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `disk` sub block.\n', args=[]),
    new(
      auto_delete=null,
      boot=null,
      device_name=null,
      disk_encryption_key=null,
      disk_name=null,
      disk_size_gb=null,
      disk_type=null,
      interface=null,
      labels=null,
      mode=null,
      resource_policies=null,
      source=null,
      source_image=null,
      source_image_encryption_key=null,
      source_snapshot=null,
      source_snapshot_encryption_key=null,
      type=null
    ):: std.prune(a={
      auto_delete: auto_delete,
      boot: boot,
      device_name: device_name,
      disk_encryption_key: disk_encryption_key,
      disk_name: disk_name,
      disk_size_gb: disk_size_gb,
      disk_type: disk_type,
      interface: interface,
      labels: labels,
      mode: mode,
      resource_policies: resource_policies,
      source: source,
      source_image: source_image,
      source_image_encryption_key: source_image_encryption_key,
      source_snapshot: source_snapshot,
      source_snapshot_encryption_key: source_snapshot_encryption_key,
      type: type,
    }),
    source_image_encryption_key:: {
      '#new':: d.fn(help='\n`google.compute_instance_template.disk.source_image_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_image_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_self_link` (`string`): The self link of the encryption key that is stored in\nGoogle Cloud KMS.\n  - `kms_key_service_account` (`string`): The service account being used for the encryption\nrequest for the given KMS key. If absent, the Compute\nEngine default service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `source_image_encryption_key` sub block.\n', args=[]),
      new(
        kms_key_self_link,
        kms_key_service_account=null
      ):: std.prune(a={
        kms_key_self_link: kms_key_self_link,
        kms_key_service_account: kms_key_service_account,
      }),
    },
    source_snapshot_encryption_key:: {
      '#new':: d.fn(help='\n`google.compute_instance_template.disk.source_snapshot_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_snapshot_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_self_link` (`string`): The self link of the encryption key that is stored in\nGoogle Cloud KMS.\n  - `kms_key_service_account` (`string`): The service account being used for the encryption\nrequest for the given KMS key. If absent, the Compute\nEngine default service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `source_snapshot_encryption_key` sub block.\n', args=[]),
      new(
        kms_key_self_link,
        kms_key_service_account=null
      ):: std.prune(a={
        kms_key_self_link: kms_key_self_link,
        kms_key_service_account: kms_key_service_account,
      }),
    },
  },
  guest_accelerator:: {
    '#new':: d.fn(help='\n`google.compute_instance_template.guest_accelerator.new` constructs a new object with attributes and blocks configured for the `guest_accelerator`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The number of the guest accelerator cards exposed to this instance.\n  - `type` (`string`): The accelerator type resource to expose to this instance. E.g. nvidia-tesla-k80.\n\n**Returns**:\n  - An attribute object that represents the `guest_accelerator` sub block.\n', args=[]),
    new(
      count,
      type
    ):: std.prune(a={
      count: count,
      type: type,
    }),
  },
  network_interface:: {
    access_config:: {
      '#new':: d.fn(help='\n`google.compute_instance_template.network_interface.access_config.new` constructs a new object with attributes and blocks configured for the `access_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `nat_ip` (`string`): The IP address that will be 1:1 mapped to the instance&#39;s network ip. If not given, one will be generated. When `null`, the `nat_ip` field will be omitted from the resulting object.\n  - `network_tier` (`string`): The networking tier used for configuring this instance template. This field can take the following values: PREMIUM, STANDARD, FIXED_STANDARD. If this field is not specified, it is assumed to be PREMIUM. When `null`, the `network_tier` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `access_config` sub block.\n', args=[]),
      new(
        nat_ip=null,
        network_tier=null
      ):: std.prune(a={
        nat_ip: nat_ip,
        network_tier: network_tier,
      }),
    },
    alias_ip_range:: {
      '#new':: d.fn(help='\n`google.compute_instance_template.network_interface.alias_ip_range.new` constructs a new object with attributes and blocks configured for the `alias_ip_range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_cidr_range` (`string`): The IP CIDR range represented by this alias IP range. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. At the time of writing only a netmask (e.g. /24) may be supplied, with a CIDR format resulting in an API error.\n  - `subnetwork_range_name` (`string`): The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range. If left unspecified, the primary range of the subnetwork will be used. When `null`, the `subnetwork_range_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `alias_ip_range` sub block.\n', args=[]),
      new(
        ip_cidr_range,
        subnetwork_range_name=null
      ):: std.prune(a={
        ip_cidr_range: ip_cidr_range,
        subnetwork_range_name: subnetwork_range_name,
      }),
    },
    ipv6_access_config:: {
      '#new':: d.fn(help='\n`google.compute_instance_template.network_interface.ipv6_access_config.new` constructs a new object with attributes and blocks configured for the `ipv6_access_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network_tier` (`string`): The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6\n\n**Returns**:\n  - An attribute object that represents the `ipv6_access_config` sub block.\n', args=[]),
      new(
        network_tier
      ):: std.prune(a={
        network_tier: network_tier,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_instance_template.network_interface.new` constructs a new object with attributes and blocks configured for the `network_interface`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network` (`string`): The name or self_link of the network to attach this interface to. Use network attribute for Legacy or Auto subnetted networks and subnetwork for custom subnetted networks. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_ip` (`string`): The private IP address to assign to the instance. If empty, the address will be automatically assigned. When `null`, the `network_ip` field will be omitted from the resulting object.\n  - `nic_type` (`string`): The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET When `null`, the `nic_type` field will be omitted from the resulting object.\n  - `queue_count` (`number`): The networking queue count that&#39;s specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified. When `null`, the `queue_count` field will be omitted from the resulting object.\n  - `stack_type` (`string`): The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. When `null`, the `stack_type` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The name of the subnetwork to attach this interface to. The subnetwork must exist in the same region this instance will be created in. Either network or subnetwork must be provided. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `subnetwork_project` (`string`): The ID of the project in which the subnetwork belongs. If it is not provided, the provider project is used. When `null`, the `subnetwork_project` field will be omitted from the resulting object.\n  - `access_config` (`list[obj]`): Access configurations, i.e. IPs via which this instance can be accessed via the Internet. Omit to ensure that the instance is not accessible from the Internet (this means that ssh provisioners will not work unless you are running Terraform can send traffic to the instance&#39;s network (e.g. via tunnel or because it is running on another cloud instance on that network). This block can be repeated multiple times. When `null`, the `access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.network_interface.access_config.new](#fn-network_interfaceaccess_confignew) constructor.\n  - `alias_ip_range` (`list[obj]`): An array of alias IP ranges for this network interface. Can only be specified for network interfaces on subnet-mode networks. When `null`, the `alias_ip_range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.network_interface.alias_ip_range.new](#fn-network_interfacealias_ip_rangenew) constructor.\n  - `ipv6_access_config` (`list[obj]`): An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access. When `null`, the `ipv6_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.network_interface.ipv6_access_config.new](#fn-network_interfaceipv6_access_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `network_interface` sub block.\n', args=[]),
    new(
      access_config=null,
      alias_ip_range=null,
      ipv6_access_config=null,
      network=null,
      network_ip=null,
      nic_type=null,
      queue_count=null,
      stack_type=null,
      subnetwork=null,
      subnetwork_project=null
    ):: std.prune(a={
      access_config: access_config,
      alias_ip_range: alias_ip_range,
      ipv6_access_config: ipv6_access_config,
      network: network,
      network_ip: network_ip,
      nic_type: nic_type,
      queue_count: queue_count,
      stack_type: stack_type,
      subnetwork: subnetwork,
      subnetwork_project: subnetwork_project,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_instance_template.new` injects a new `google_compute_instance_template` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_instance_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_instance_template` using the reference:\n\n    $._ref.google_compute_instance_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_instance_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `can_ip_forward` (`bool`): Whether to allow sending and receiving of packets with non-matching source or destination IPs. This defaults to false. When `null`, the `can_ip_forward` field will be omitted from the resulting object.\n  - `description` (`string`): A brief description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `instance_description` (`string`): A description of the instance. When `null`, the `instance_description` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to instances created from this template, When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.\n  - `metadata` (`obj`): Metadata key/value pairs to make available from within instances created from this template. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `metadata_startup_script` (`string`): An alternative to using the startup-script metadata key, mostly to match the compute_instance resource. This replaces the startup-script metadata key on the created instance and thus the two mechanisms are not allowed to be used simultaneously. When `null`, the `metadata_startup_script` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell or Intel Skylake. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Creates a unique name beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): An instance template is a global resource that is not bound to a zone or a region. However, you can still specify some regional resources in an instance template, which restricts the template to the region where that resource resides. For example, a custom subnetwork resource is tied to a specific region. Defaults to the region of the Provider if no value is given. When `null`, the `region` field will be omitted from the resulting object.\n  - `tags` (`list`): Tags to attach to the instance. When `null`, the `tags` field will be omitted from the resulting object.\n  - `advanced_machine_features` (`list[obj]`): Controls for advanced machine-related behavior features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.advanced_machine_features.new](#fn-advanced_machine_featuresnew) constructor.\n  - `confidential_instance_config` (`list[obj]`): The Confidential VM config being used by the instance. on_host_maintenance has to be set to TERMINATE or this will fail to create. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.confidential_instance_config.new](#fn-confidential_instance_confignew) constructor.\n  - `disk` (`list[obj]`): Disks to attach to instances created from this template. This can be specified multiple times for multiple disks. When `null`, the `disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.disk.new](#fn-disknew) constructor.\n  - `guest_accelerator` (`list[obj]`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.guest_accelerator.new](#fn-guest_acceleratornew) constructor.\n  - `network_interface` (`list[obj]`): Networks to attach to instances created from this template. This can be specified multiple times for multiple networks. When `null`, the `network_interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.network_interface.new](#fn-network_interfacenew) constructor.\n  - `reservation_affinity` (`list[obj]`): Specifies the reservations that this instance can consume from. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.reservation_affinity.new](#fn-reservation_affinitynew) constructor.\n  - `scheduling` (`list[obj]`): The scheduling strategy to use. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.scheduling.new](#fn-schedulingnew) constructor.\n  - `service_account` (`list[obj]`): Service account to attach to the instance. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.service_account.new](#fn-service_accountnew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Enable Shielded VM on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Note: shielded_instance_config can only be used with boot images with shielded vm support. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    machine_type,
    advanced_machine_features=null,
    can_ip_forward=null,
    confidential_instance_config=null,
    description=null,
    disk=null,
    guest_accelerator=null,
    instance_description=null,
    labels=null,
    metadata=null,
    metadata_startup_script=null,
    min_cpu_platform=null,
    name=null,
    name_prefix=null,
    network_interface=null,
    project=null,
    region=null,
    reservation_affinity=null,
    scheduling=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      advanced_machine_features=advanced_machine_features,
      can_ip_forward=can_ip_forward,
      confidential_instance_config=confidential_instance_config,
      description=description,
      disk=disk,
      guest_accelerator=guest_accelerator,
      instance_description=instance_description,
      labels=labels,
      machine_type=machine_type,
      metadata=metadata,
      metadata_startup_script=metadata_startup_script,
      min_cpu_platform=min_cpu_platform,
      name=name,
      name_prefix=name_prefix,
      network_interface=network_interface,
      project=project,
      region=region,
      reservation_affinity=reservation_affinity,
      scheduling=scheduling,
      service_account=service_account,
      shielded_instance_config=shielded_instance_config,
      tags=tags,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_instance_template.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_template`\nTerraform resource.\n\nUnlike [google.compute_instance_template.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `can_ip_forward` (`bool`): Whether to allow sending and receiving of packets with non-matching source or destination IPs. This defaults to false. When `null`, the `can_ip_forward` field will be omitted from the resulting object.\n  - `description` (`string`): A brief description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `instance_description` (`string`): A description of the instance. When `null`, the `instance_description` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to instances created from this template, When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.\n  - `metadata` (`obj`): Metadata key/value pairs to make available from within instances created from this template. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `metadata_startup_script` (`string`): An alternative to using the startup-script metadata key, mostly to match the compute_instance resource. This replaces the startup-script metadata key on the created instance and thus the two mechanisms are not allowed to be used simultaneously. When `null`, the `metadata_startup_script` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell or Intel Skylake. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Creates a unique name beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): An instance template is a global resource that is not bound to a zone or a region. However, you can still specify some regional resources in an instance template, which restricts the template to the region where that resource resides. For example, a custom subnetwork resource is tied to a specific region. Defaults to the region of the Provider if no value is given. When `null`, the `region` field will be omitted from the resulting object.\n  - `tags` (`list`): Tags to attach to the instance. When `null`, the `tags` field will be omitted from the resulting object.\n  - `advanced_machine_features` (`list[obj]`): Controls for advanced machine-related behavior features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.advanced_machine_features.new](#fn-advanced_machine_featuresnew) constructor.\n  - `confidential_instance_config` (`list[obj]`): The Confidential VM config being used by the instance. on_host_maintenance has to be set to TERMINATE or this will fail to create. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.confidential_instance_config.new](#fn-confidential_instance_confignew) constructor.\n  - `disk` (`list[obj]`): Disks to attach to instances created from this template. This can be specified multiple times for multiple disks. When `null`, the `disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.disk.new](#fn-disknew) constructor.\n  - `guest_accelerator` (`list[obj]`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.guest_accelerator.new](#fn-guest_acceleratornew) constructor.\n  - `network_interface` (`list[obj]`): Networks to attach to instances created from this template. This can be specified multiple times for multiple networks. When `null`, the `network_interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.network_interface.new](#fn-network_interfacenew) constructor.\n  - `reservation_affinity` (`list[obj]`): Specifies the reservations that this instance can consume from. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.reservation_affinity.new](#fn-reservation_affinitynew) constructor.\n  - `scheduling` (`list[obj]`): The scheduling strategy to use. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.scheduling.new](#fn-schedulingnew) constructor.\n  - `service_account` (`list[obj]`): Service account to attach to the instance. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.service_account.new](#fn-service_accountnew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Enable Shielded VM on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Note: shielded_instance_config can only be used with boot images with shielded vm support. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_instance_template` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    machine_type,
    advanced_machine_features=null,
    can_ip_forward=null,
    confidential_instance_config=null,
    description=null,
    disk=null,
    guest_accelerator=null,
    instance_description=null,
    labels=null,
    metadata=null,
    metadata_startup_script=null,
    min_cpu_platform=null,
    name=null,
    name_prefix=null,
    network_interface=null,
    project=null,
    region=null,
    reservation_affinity=null,
    scheduling=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null
  ):: std.prune(a={
    advanced_machine_features: advanced_machine_features,
    can_ip_forward: can_ip_forward,
    confidential_instance_config: confidential_instance_config,
    description: description,
    disk: disk,
    guest_accelerator: guest_accelerator,
    instance_description: instance_description,
    labels: labels,
    machine_type: machine_type,
    metadata: metadata,
    metadata_startup_script: metadata_startup_script,
    min_cpu_platform: min_cpu_platform,
    name: name,
    name_prefix: name_prefix,
    network_interface: network_interface,
    project: project,
    region: region,
    reservation_affinity: reservation_affinity,
    scheduling: scheduling,
    service_account: service_account,
    shielded_instance_config: shielded_instance_config,
    tags: tags,
    timeouts: timeouts,
  }),
  reservation_affinity:: {
    '#new':: d.fn(help='\n`google.compute_instance_template.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `type` (`string`): The type of reservation from which this instance can consume resources.\n  - `specific_reservation` (`list[obj]`): Specifies the label selector for the reservation to use. When `null`, the `specific_reservation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.reservation_affinity.specific_reservation.new](#fn-reservation_affinityspecific_reservationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `reservation_affinity` sub block.\n', args=[]),
    new(
      type,
      specific_reservation=null
    ):: std.prune(a={
      specific_reservation: specific_reservation,
      type: type,
    }),
    specific_reservation:: {
      '#new':: d.fn(help='\n`google.compute_instance_template.reservation_affinity.specific_reservation.new` constructs a new object with attributes and blocks configured for the `specific_reservation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value.\n  - `values` (`list`): Corresponds to the label values of a reservation resource.\n\n**Returns**:\n  - An attribute object that represents the `specific_reservation` sub block.\n', args=[]),
      new(
        key,
        values
      ):: std.prune(a={
        key: key,
        values: values,
      }),
    },
  },
  scheduling:: {
    '#new':: d.fn(help='\n`google.compute_instance_template.scheduling.new` constructs a new object with attributes and blocks configured for the `scheduling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `automatic_restart` (`bool`): Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). This defaults to true. When `null`, the `automatic_restart` field will be omitted from the resulting object.\n  - `instance_termination_action` (`string`): Specifies the action GCE should take when SPOT VM is preempted. When `null`, the `instance_termination_action` field will be omitted from the resulting object.\n  - `min_node_cpus` (`number`): Minimum number of cpus for the instance. When `null`, the `min_node_cpus` field will be omitted from the resulting object.\n  - `on_host_maintenance` (`string`): Defines the maintenance behavior for this instance. When `null`, the `on_host_maintenance` field will be omitted from the resulting object.\n  - `preemptible` (`bool`): Allows instance to be preempted. This defaults to false. When `null`, the `preemptible` field will be omitted from the resulting object.\n  - `provisioning_model` (`string`): Whether the instance is spot. If this is set as SPOT. When `null`, the `provisioning_model` field will be omitted from the resulting object.\n  - `node_affinities` (`list[obj]`): Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems. When `null`, the `node_affinities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_template.scheduling.node_affinities.new](#fn-schedulingnode_affinitiesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `scheduling` sub block.\n', args=[]),
    new(
      automatic_restart=null,
      instance_termination_action=null,
      min_node_cpus=null,
      node_affinities=null,
      on_host_maintenance=null,
      preemptible=null,
      provisioning_model=null
    ):: std.prune(a={
      automatic_restart: automatic_restart,
      instance_termination_action: instance_termination_action,
      min_node_cpus: min_node_cpus,
      node_affinities: node_affinities,
      on_host_maintenance: on_host_maintenance,
      preemptible: preemptible,
      provisioning_model: provisioning_model,
    }),
    node_affinities:: {
      '#new':: d.fn(help='\n`google.compute_instance_template.scheduling.node_affinities.new` constructs a new object with attributes and blocks configured for the `node_affinities`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): Set the `key` field on the resulting object.\n  - `operator` (`string`): Set the `operator` field on the resulting object.\n  - `values` (`list`): Set the `values` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_affinities` sub block.\n', args=[]),
      new(
        key,
        operator,
        values
      ):: std.prune(a={
        key: key,
        operator: operator,
        values: values,
      }),
    },
  },
  service_account:: {
    '#new':: d.fn(help='\n`google.compute_instance_template.service_account.new` constructs a new object with attributes and blocks configured for the `service_account`\nTerraform sub block.\n\n\n\n**Args**:\n  - `email` (`string`): The service account e-mail address. If not given, the default Google Compute Engine service account is used. When `null`, the `email` field will be omitted from the resulting object.\n  - `scopes` (`list`): A list of service scopes. Both OAuth2 URLs and gcloud short names are supported. To allow full access to all Cloud APIs, use the cloud-platform scope.\n\n**Returns**:\n  - An attribute object that represents the `service_account` sub block.\n', args=[]),
    new(
      scopes,
      email=null
    ):: std.prune(a={
      email: email,
      scopes: scopes,
    }),
  },
  shielded_instance_config:: {
    '#new':: d.fn(help='\n`google.compute_instance_template.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n  - `enable_vtpm` (`bool`): Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true. When `null`, the `enable_vtpm` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.compute_instance_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAdvancedMachineFeatures':: d.fn(help='`google.list[obj].withAdvancedMachineFeatures` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_machine_features field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAdvancedMachineFeaturesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_machine_features` field.\n', args=[]),
  withAdvancedMachineFeatures(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          advanced_machine_features: value,
        },
      },
    },
  },
  '#withAdvancedMachineFeaturesMixin':: d.fn(help='`google.list[obj].withAdvancedMachineFeaturesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_machine_features field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAdvancedMachineFeatures](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_machine_features` field.\n', args=[]),
  withAdvancedMachineFeaturesMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          advanced_machine_features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCanIpForward':: d.fn(help='`google.bool.withCanIpForward` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the can_ip_forward field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `can_ip_forward` field.\n', args=[]),
  withCanIpForward(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          can_ip_forward: value,
        },
      },
    },
  },
  '#withConfidentialInstanceConfig':: d.fn(help='`google.list[obj].withConfidentialInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the confidential_instance_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConfidentialInstanceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `confidential_instance_config` field.\n', args=[]),
  withConfidentialInstanceConfig(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          confidential_instance_config: value,
        },
      },
    },
  },
  '#withConfidentialInstanceConfigMixin':: d.fn(help='`google.list[obj].withConfidentialInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the confidential_instance_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConfidentialInstanceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `confidential_instance_config` field.\n', args=[]),
  withConfidentialInstanceConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          confidential_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisk':: d.fn(help='`google.list[obj].withDisk` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the disk field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDiskMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `disk` field.\n', args=[]),
  withDisk(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          disk: value,
        },
      },
    },
  },
  '#withDiskMixin':: d.fn(help='`google.list[obj].withDiskMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the disk field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDisk](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `disk` field.\n', args=[]),
  withDiskMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          disk+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGuestAccelerator':: d.fn(help='`google.list[obj].withGuestAccelerator` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the guest_accelerator field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGuestAcceleratorMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `guest_accelerator` field.\n', args=[]),
  withGuestAccelerator(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          guest_accelerator: value,
        },
      },
    },
  },
  '#withGuestAcceleratorMixin':: d.fn(help='`google.list[obj].withGuestAcceleratorMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the guest_accelerator field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGuestAccelerator](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `guest_accelerator` field.\n', args=[]),
  withGuestAcceleratorMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          guest_accelerator+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInstanceDescription':: d.fn(help='`google.string.withInstanceDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_description` field.\n', args=[]),
  withInstanceDescription(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          instance_description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMachineType':: d.fn(help='`google.string.withMachineType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the machine_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `machine_type` field.\n', args=[]),
  withMachineType(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google.obj.withMetadata` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the metadata field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withMetadataStartupScript':: d.fn(help='`google.string.withMetadataStartupScript` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the metadata_startup_script field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `metadata_startup_script` field.\n', args=[]),
  withMetadataStartupScript(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          metadata_startup_script: value,
        },
      },
    },
  },
  '#withMinCpuPlatform':: d.fn(help='`google.string.withMinCpuPlatform` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the min_cpu_platform field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `min_cpu_platform` field.\n', args=[]),
  withMinCpuPlatform(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          min_cpu_platform: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNamePrefix':: d.fn(help='`google.string.withNamePrefix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name_prefix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name_prefix` field.\n', args=[]),
  withNamePrefix(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          name_prefix: value,
        },
      },
    },
  },
  '#withNetworkInterface':: d.fn(help='`google.list[obj].withNetworkInterface` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_interface field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkInterfaceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_interface` field.\n', args=[]),
  withNetworkInterface(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          network_interface: value,
        },
      },
    },
  },
  '#withNetworkInterfaceMixin':: d.fn(help='`google.list[obj].withNetworkInterfaceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_interface field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkInterface](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_interface` field.\n', args=[]),
  withNetworkInterfaceMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          network_interface+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withReservationAffinity':: d.fn(help='`google.list[obj].withReservationAffinity` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the reservation_affinity field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReservationAffinityMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `reservation_affinity` field.\n', args=[]),
  withReservationAffinity(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          reservation_affinity: value,
        },
      },
    },
  },
  '#withReservationAffinityMixin':: d.fn(help='`google.list[obj].withReservationAffinityMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the reservation_affinity field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReservationAffinity](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `reservation_affinity` field.\n', args=[]),
  withReservationAffinityMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          reservation_affinity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withScheduling':: d.fn(help='`google.list[obj].withScheduling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSchedulingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling` field.\n', args=[]),
  withScheduling(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          scheduling: value,
        },
      },
    },
  },
  '#withSchedulingMixin':: d.fn(help='`google.list[obj].withSchedulingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withScheduling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling` field.\n', args=[]),
  withSchedulingMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          scheduling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.list[obj].withServiceAccount` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_account field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withServiceAccountMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withServiceAccountMixin':: d.fn(help='`google.list[obj].withServiceAccountMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_account field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withServiceAccount](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccountMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          service_account+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withShieldedInstanceConfig':: d.fn(help='`google.list[obj].withShieldedInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the shielded_instance_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withShieldedInstanceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.\n', args=[]),
  withShieldedInstanceConfig(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          shielded_instance_config: value,
        },
      },
    },
  },
  '#withShieldedInstanceConfigMixin':: d.fn(help='`google.list[obj].withShieldedInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the shielded_instance_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withShieldedInstanceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.\n', args=[]),
  withShieldedInstanceConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          shielded_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTags':: d.fn(help='`google.list.withTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `tags` field.\n', args=[]),
  withTags(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
