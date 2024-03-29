local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_disk', url='', help='`compute_disk` represents the `google_compute_disk` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  async_primary_disk:: {
    '#new':: d.fn(help='\n`google.compute_disk.async_primary_disk.new` constructs a new object with attributes and blocks configured for the `async_primary_disk`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk` (`string`): Primary disk for asynchronous disk replication.\n\n**Returns**:\n  - An attribute object that represents the `async_primary_disk` sub block.\n', args=[]),
    new(
      disk
    ):: std.prune(a={
      disk: disk,
    }),
  },
  disk_encryption_key:: {
    '#new':: d.fn(help='\n`google.compute_disk.disk_encryption_key.new` constructs a new object with attributes and blocks configured for the `disk_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_self_link` (`string`): The self link of the encryption key used to encrypt the disk. Also called KmsKeyName\nin the cloud console. Your project&#39;s Compute Engine System service account\n(&#39;service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com&#39;) must have\n&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.\nSee https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys When `null`, the `kms_key_self_link` field will be omitted from the resulting object.\n  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.\nIf absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in\nRFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.\n  - `rsa_encrypted_key` (`string`): Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit\ncustomer-supplied encryption key to either encrypt or decrypt\nthis resource. You can provide either the rawKey or the rsaEncryptedKey. When `null`, the `rsa_encrypted_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disk_encryption_key` sub block.\n', args=[]),
    new(
      kms_key_self_link=null,
      kms_key_service_account=null,
      raw_key=null,
      rsa_encrypted_key=null
    ):: std.prune(a={
      kms_key_self_link: kms_key_self_link,
      kms_key_service_account: kms_key_service_account,
      raw_key: raw_key,
      rsa_encrypted_key: rsa_encrypted_key,
    }),
  },
  guest_os_features:: {
    '#new':: d.fn(help='\n`google.compute_disk.guest_os_features.new` constructs a new object with attributes and blocks configured for the `guest_os_features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `type` (`string`): The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Possible values: [&#34;MULTI_IP_SUBNET&#34;, &#34;SECURE_BOOT&#34;, &#34;SEV_CAPABLE&#34;, &#34;UEFI_COMPATIBLE&#34;, &#34;VIRTIO_SCSI_MULTIQUEUE&#34;, &#34;WINDOWS&#34;, &#34;GVNIC&#34;, &#34;SEV_LIVE_MIGRATABLE&#34;, &#34;SEV_SNP_CAPABLE&#34;, &#34;SUSPEND_RESUME_COMPATIBLE&#34;, &#34;TDX_CAPABLE&#34;]\n\n**Returns**:\n  - An attribute object that represents the `guest_os_features` sub block.\n', args=[]),
    new(
      type
    ):: std.prune(a={
      type: type,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_disk.new` injects a new `google_compute_disk` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_disk.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_disk` using the reference:\n\n    $._ref.google_compute_disk.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_disk.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `image` (`string`): The image from which to initialize this disk. This can be\none of: the image\u0026#39;s \u0026#39;self_link\u0026#39;, \u0026#39;projects/{project}/global/images/{image}\u0026#39;,\n\u0026#39;projects/{project}/global/images/family/{family}\u0026#39;, \u0026#39;global/images/{image}\u0026#39;,\n\u0026#39;global/images/family/{family}\u0026#39;, \u0026#39;family/{family}\u0026#39;, \u0026#39;{project}/{family}\u0026#39;,\n\u0026#39;{project}/{image}\u0026#39;, \u0026#39;{family}\u0026#39;, or \u0026#39;{image}\u0026#39;. If referred by family, the\nimages names must include the family name. If they don\u0026#39;t, use the\n[google_compute_image data source](/docs/providers/google/d/compute_image.html).\nFor instance, the image \u0026#39;centos-6-v20180104\u0026#39; includes its family name \u0026#39;centos-6\u0026#39;.\nThese images can be referred by family name here. When `null`, the `image` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this disk.  A list of key-\u0026gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `licenses` (`list`): Any applicable license URI. When `null`, the `licenses` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `physical_block_size_bytes` (`number`): Physical block size of the persistent disk, in bytes. If not present\nin a request, a default value is used. Currently supported sizes\nare 4096 and 16384, other sizes may be added in the future.\nIf an unsupported value is requested, the error message will list\nthe supported values for the caller\u0026#39;s project. When `null`, the `physical_block_size_bytes` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `provisioned_iops` (`number`): Indicates how many IOPS must be provisioned for the disk.\nNote: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk\nallows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you\u0026#39;ll need to manually delete and recreate it When `null`, the `provisioned_iops` field will be omitted from the resulting object.\n  - `provisioned_throughput` (`number`): Indicates how much Throughput must be provisioned for the disk.\nNote: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk\nallows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you\u0026#39;ll need to manually delete and recreate it When `null`, the `provisioned_throughput` field will be omitted from the resulting object.\n  - `size` (`number`): Size of the persistent disk, specified in GB. You can specify this\nfield when creating a persistent disk using the \u0026#39;image\u0026#39; or\n\u0026#39;snapshot\u0026#39; parameter, or specify it alone to create an empty\npersistent disk.\n\nIf you specify this field along with \u0026#39;image\u0026#39; or \u0026#39;snapshot\u0026#39;,\nthe value must not be less than the size of the image\nor the size of the snapshot.\n\n~\u0026gt;**NOTE** If you change the size, Terraform updates the disk size\nif upsizing is detected but recreates the disk if downsizing is requested.\nYou can add \u0026#39;lifecycle.prevent_destroy\u0026#39; in the config to prevent destroying\nand recreating. When `null`, the `size` field will be omitted from the resulting object.\n  - `snapshot` (`string`): The source snapshot used to create this disk. You can provide this as\na partial or full URL to the resource. If the snapshot is in another\nproject than this disk, you must supply a full URL. For example, the\nfollowing are valid values:\n\n* \u0026#39;https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot\u0026#39;\n* \u0026#39;projects/project/global/snapshots/snapshot\u0026#39;\n* \u0026#39;global/snapshots/snapshot\u0026#39;\n* \u0026#39;snapshot\u0026#39; When `null`, the `snapshot` field will be omitted from the resulting object.\n  - `source_disk` (`string`): The source disk used to create this disk. You can provide this as a partial or full URL to the resource.\nFor example, the following are valid values:\n\n* https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}\n* https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}\n* projects/{project}/zones/{zone}/disks/{disk}\n* projects/{project}/regions/{region}/disks/{disk}\n* zones/{zone}/disks/{disk}\n* regions/{region}/disks/{disk} When `null`, the `source_disk` field will be omitted from the resulting object.\n  - `type` (`string`): URL of the disk type resource describing which disk type to use to\ncreate the disk. Provide this when creating the disk. When `null`, the `type` field will be omitted from the resulting object.\n  - `zone` (`string`): A reference to the zone where the disk resides. When `null`, the `zone` field will be omitted from the resulting object.\n  - `async_primary_disk` (`list[obj]`): A nested object resource When `null`, the `async_primary_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.async_primary_disk.new](#fn-async_primary_disknew) constructor.\n  - `disk_encryption_key` (`list[obj]`): Encrypts the disk using a customer-supplied encryption key.\n\nAfter you encrypt a disk with a customer-supplied key, you must\nprovide the same key if you use the disk later (e.g. to create a disk\nsnapshot or an image, or to attach the disk to a virtual machine).\n\nCustomer-supplied encryption keys do not protect access to metadata of\nthe disk.\n\nIf you do not provide an encryption key when creating the disk, then\nthe disk will be encrypted using an automatically generated key and\nyou do not need to provide a key to use the disk later. When `null`, the `disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.disk_encryption_key.new](#fn-disk_encryption_keynew) constructor.\n  - `guest_os_features` (`list[obj]`): A list of features to enable on the guest operating system.\nApplicable only for bootable disks. When `null`, the `guest_os_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.guest_os_features.new](#fn-guest_os_featuresnew) constructor.\n  - `source_image_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source image. Required if\nthe source image is protected by a customer-supplied encryption key. When `null`, the `source_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.source_image_encryption_key.new](#fn-source_image_encryption_keynew) constructor.\n  - `source_snapshot_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. Required\nif the source snapshot is protected by a customer-supplied encryption\nkey. When `null`, the `source_snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.source_snapshot_encryption_key.new](#fn-source_snapshot_encryption_keynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    async_primary_disk=null,
    description=null,
    disk_encryption_key=null,
    guest_os_features=null,
    image=null,
    labels=null,
    licenses=null,
    physical_block_size_bytes=null,
    project=null,
    provisioned_iops=null,
    provisioned_throughput=null,
    size=null,
    snapshot=null,
    source_disk=null,
    source_image_encryption_key=null,
    source_snapshot_encryption_key=null,
    timeouts=null,
    type=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_disk',
    label=resourceLabel,
    attrs=self.newAttrs(
      async_primary_disk=async_primary_disk,
      description=description,
      disk_encryption_key=disk_encryption_key,
      guest_os_features=guest_os_features,
      image=image,
      labels=labels,
      licenses=licenses,
      name=name,
      physical_block_size_bytes=physical_block_size_bytes,
      project=project,
      provisioned_iops=provisioned_iops,
      provisioned_throughput=provisioned_throughput,
      size=size,
      snapshot=snapshot,
      source_disk=source_disk,
      source_image_encryption_key=source_image_encryption_key,
      source_snapshot_encryption_key=source_snapshot_encryption_key,
      timeouts=timeouts,
      type=type,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_disk.newAttrs` constructs a new object with attributes and blocks configured for the `compute_disk`\nTerraform resource.\n\nUnlike [google.compute_disk.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `image` (`string`): The image from which to initialize this disk. This can be\none of: the image&#39;s &#39;self_link&#39;, &#39;projects/{project}/global/images/{image}&#39;,\n&#39;projects/{project}/global/images/family/{family}&#39;, &#39;global/images/{image}&#39;,\n&#39;global/images/family/{family}&#39;, &#39;family/{family}&#39;, &#39;{project}/{family}&#39;,\n&#39;{project}/{image}&#39;, &#39;{family}&#39;, or &#39;{image}&#39;. If referred by family, the\nimages names must include the family name. If they don&#39;t, use the\n[google_compute_image data source](/docs/providers/google/d/compute_image.html).\nFor instance, the image &#39;centos-6-v20180104&#39; includes its family name &#39;centos-6&#39;.\nThese images can be referred by family name here. When `null`, the `image` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this disk.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `licenses` (`list`): Any applicable license URI. When `null`, the `licenses` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `physical_block_size_bytes` (`number`): Physical block size of the persistent disk, in bytes. If not present\nin a request, a default value is used. Currently supported sizes\nare 4096 and 16384, other sizes may be added in the future.\nIf an unsupported value is requested, the error message will list\nthe supported values for the caller&#39;s project. When `null`, the `physical_block_size_bytes` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `provisioned_iops` (`number`): Indicates how many IOPS must be provisioned for the disk.\nNote: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk\nallows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you&#39;ll need to manually delete and recreate it When `null`, the `provisioned_iops` field will be omitted from the resulting object.\n  - `provisioned_throughput` (`number`): Indicates how much Throughput must be provisioned for the disk.\nNote: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk\nallows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you&#39;ll need to manually delete and recreate it When `null`, the `provisioned_throughput` field will be omitted from the resulting object.\n  - `size` (`number`): Size of the persistent disk, specified in GB. You can specify this\nfield when creating a persistent disk using the &#39;image&#39; or\n&#39;snapshot&#39; parameter, or specify it alone to create an empty\npersistent disk.\n\nIf you specify this field along with &#39;image&#39; or &#39;snapshot&#39;,\nthe value must not be less than the size of the image\nor the size of the snapshot.\n\n~&gt;**NOTE** If you change the size, Terraform updates the disk size\nif upsizing is detected but recreates the disk if downsizing is requested.\nYou can add &#39;lifecycle.prevent_destroy&#39; in the config to prevent destroying\nand recreating. When `null`, the `size` field will be omitted from the resulting object.\n  - `snapshot` (`string`): The source snapshot used to create this disk. You can provide this as\na partial or full URL to the resource. If the snapshot is in another\nproject than this disk, you must supply a full URL. For example, the\nfollowing are valid values:\n\n* &#39;https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot&#39;\n* &#39;projects/project/global/snapshots/snapshot&#39;\n* &#39;global/snapshots/snapshot&#39;\n* &#39;snapshot&#39; When `null`, the `snapshot` field will be omitted from the resulting object.\n  - `source_disk` (`string`): The source disk used to create this disk. You can provide this as a partial or full URL to the resource.\nFor example, the following are valid values:\n\n* https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}\n* https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}\n* projects/{project}/zones/{zone}/disks/{disk}\n* projects/{project}/regions/{region}/disks/{disk}\n* zones/{zone}/disks/{disk}\n* regions/{region}/disks/{disk} When `null`, the `source_disk` field will be omitted from the resulting object.\n  - `type` (`string`): URL of the disk type resource describing which disk type to use to\ncreate the disk. Provide this when creating the disk. When `null`, the `type` field will be omitted from the resulting object.\n  - `zone` (`string`): A reference to the zone where the disk resides. When `null`, the `zone` field will be omitted from the resulting object.\n  - `async_primary_disk` (`list[obj]`): A nested object resource When `null`, the `async_primary_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.async_primary_disk.new](#fn-async_primary_disknew) constructor.\n  - `disk_encryption_key` (`list[obj]`): Encrypts the disk using a customer-supplied encryption key.\n\nAfter you encrypt a disk with a customer-supplied key, you must\nprovide the same key if you use the disk later (e.g. to create a disk\nsnapshot or an image, or to attach the disk to a virtual machine).\n\nCustomer-supplied encryption keys do not protect access to metadata of\nthe disk.\n\nIf you do not provide an encryption key when creating the disk, then\nthe disk will be encrypted using an automatically generated key and\nyou do not need to provide a key to use the disk later. When `null`, the `disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.disk_encryption_key.new](#fn-disk_encryption_keynew) constructor.\n  - `guest_os_features` (`list[obj]`): A list of features to enable on the guest operating system.\nApplicable only for bootable disks. When `null`, the `guest_os_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.guest_os_features.new](#fn-guest_os_featuresnew) constructor.\n  - `source_image_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source image. Required if\nthe source image is protected by a customer-supplied encryption key. When `null`, the `source_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.source_image_encryption_key.new](#fn-source_image_encryption_keynew) constructor.\n  - `source_snapshot_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. Required\nif the source snapshot is protected by a customer-supplied encryption\nkey. When `null`, the `source_snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.source_snapshot_encryption_key.new](#fn-source_snapshot_encryption_keynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_disk` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    async_primary_disk=null,
    description=null,
    disk_encryption_key=null,
    guest_os_features=null,
    image=null,
    labels=null,
    licenses=null,
    physical_block_size_bytes=null,
    project=null,
    provisioned_iops=null,
    provisioned_throughput=null,
    size=null,
    snapshot=null,
    source_disk=null,
    source_image_encryption_key=null,
    source_snapshot_encryption_key=null,
    timeouts=null,
    type=null,
    zone=null
  ):: std.prune(a={
    async_primary_disk: async_primary_disk,
    description: description,
    disk_encryption_key: disk_encryption_key,
    guest_os_features: guest_os_features,
    image: image,
    labels: labels,
    licenses: licenses,
    name: name,
    physical_block_size_bytes: physical_block_size_bytes,
    project: project,
    provisioned_iops: provisioned_iops,
    provisioned_throughput: provisioned_throughput,
    size: size,
    snapshot: snapshot,
    source_disk: source_disk,
    source_image_encryption_key: source_image_encryption_key,
    source_snapshot_encryption_key: source_snapshot_encryption_key,
    timeouts: timeouts,
    type: type,
    zone: zone,
  }),
  source_image_encryption_key:: {
    '#new':: d.fn(help='\n`google.compute_disk.source_image_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_image_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_self_link` (`string`): The self link of the encryption key used to encrypt the disk. Also called KmsKeyName\nin the cloud console. Your project&#39;s Compute Engine System service account\n(&#39;service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com&#39;) must have\n&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.\nSee https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys When `null`, the `kms_key_self_link` field will be omitted from the resulting object.\n  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.\nIf absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in\nRFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `source_image_encryption_key` sub block.\n', args=[]),
    new(
      kms_key_self_link=null,
      kms_key_service_account=null,
      raw_key=null
    ):: std.prune(a={
      kms_key_self_link: kms_key_self_link,
      kms_key_service_account: kms_key_service_account,
      raw_key: raw_key,
    }),
  },
  source_snapshot_encryption_key:: {
    '#new':: d.fn(help='\n`google.compute_disk.source_snapshot_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_snapshot_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_self_link` (`string`): The self link of the encryption key used to encrypt the disk. Also called KmsKeyName\nin the cloud console. Your project&#39;s Compute Engine System service account\n(&#39;service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com&#39;) must have\n&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.\nSee https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys When `null`, the `kms_key_self_link` field will be omitted from the resulting object.\n  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.\nIf absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in\nRFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `source_snapshot_encryption_key` sub block.\n', args=[]),
    new(
      kms_key_self_link=null,
      kms_key_service_account=null,
      raw_key=null
    ):: std.prune(a={
      kms_key_self_link: kms_key_self_link,
      kms_key_service_account: kms_key_service_account,
      raw_key: raw_key,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_disk.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAsyncPrimaryDisk':: d.fn(help='`google.list[obj].withAsyncPrimaryDisk` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the async_primary_disk field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAsyncPrimaryDiskMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `async_primary_disk` field.\n', args=[]),
  withAsyncPrimaryDisk(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          async_primary_disk: value,
        },
      },
    },
  },
  '#withAsyncPrimaryDiskMixin':: d.fn(help='`google.list[obj].withAsyncPrimaryDiskMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the async_primary_disk field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAsyncPrimaryDisk](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `async_primary_disk` field.\n', args=[]),
  withAsyncPrimaryDiskMixin(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          async_primary_disk+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDiskEncryptionKey':: d.fn(help='`google.list[obj].withDiskEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the disk_encryption_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDiskEncryptionKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `disk_encryption_key` field.\n', args=[]),
  withDiskEncryptionKey(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          disk_encryption_key: value,
        },
      },
    },
  },
  '#withDiskEncryptionKeyMixin':: d.fn(help='`google.list[obj].withDiskEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the disk_encryption_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDiskEncryptionKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `disk_encryption_key` field.\n', args=[]),
  withDiskEncryptionKeyMixin(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          disk_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGuestOsFeatures':: d.fn(help='`google.list[obj].withGuestOsFeatures` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the guest_os_features field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGuestOsFeaturesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `guest_os_features` field.\n', args=[]),
  withGuestOsFeatures(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          guest_os_features: value,
        },
      },
    },
  },
  '#withGuestOsFeaturesMixin':: d.fn(help='`google.list[obj].withGuestOsFeaturesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the guest_os_features field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGuestOsFeatures](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `guest_os_features` field.\n', args=[]),
  withGuestOsFeaturesMixin(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          guest_os_features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withImage':: d.fn(help='`google.string.withImage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the image field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `image` field.\n', args=[]),
  withImage(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          image: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLicenses':: d.fn(help='`google.list.withLicenses` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the licenses field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `licenses` field.\n', args=[]),
  withLicenses(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          licenses: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPhysicalBlockSizeBytes':: d.fn(help='`google.number.withPhysicalBlockSizeBytes` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the physical_block_size_bytes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `physical_block_size_bytes` field.\n', args=[]),
  withPhysicalBlockSizeBytes(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          physical_block_size_bytes: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProvisionedIops':: d.fn(help='`google.number.withProvisionedIops` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the provisioned_iops field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `provisioned_iops` field.\n', args=[]),
  withProvisionedIops(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          provisioned_iops: value,
        },
      },
    },
  },
  '#withProvisionedThroughput':: d.fn(help='`google.number.withProvisionedThroughput` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the provisioned_throughput field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `provisioned_throughput` field.\n', args=[]),
  withProvisionedThroughput(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          provisioned_throughput: value,
        },
      },
    },
  },
  '#withSize':: d.fn(help='`google.number.withSize` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `size` field.\n', args=[]),
  withSize(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  '#withSnapshot':: d.fn(help='`google.string.withSnapshot` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the snapshot field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `snapshot` field.\n', args=[]),
  withSnapshot(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          snapshot: value,
        },
      },
    },
  },
  '#withSourceDisk':: d.fn(help='`google.string.withSourceDisk` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_disk field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_disk` field.\n', args=[]),
  withSourceDisk(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_disk: value,
        },
      },
    },
  },
  '#withSourceImageEncryptionKey':: d.fn(help='`google.list[obj].withSourceImageEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_image_encryption_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceImageEncryptionKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_image_encryption_key` field.\n', args=[]),
  withSourceImageEncryptionKey(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_image_encryption_key: value,
        },
      },
    },
  },
  '#withSourceImageEncryptionKeyMixin':: d.fn(help='`google.list[obj].withSourceImageEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_image_encryption_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSourceImageEncryptionKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_image_encryption_key` field.\n', args=[]),
  withSourceImageEncryptionKeyMixin(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_image_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSourceSnapshotEncryptionKey':: d.fn(help='`google.list[obj].withSourceSnapshotEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_snapshot_encryption_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceSnapshotEncryptionKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_snapshot_encryption_key` field.\n', args=[]),
  withSourceSnapshotEncryptionKey(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_snapshot_encryption_key: value,
        },
      },
    },
  },
  '#withSourceSnapshotEncryptionKeyMixin':: d.fn(help='`google.list[obj].withSourceSnapshotEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_snapshot_encryption_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSourceSnapshotEncryptionKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_snapshot_encryption_key` field.\n', args=[]),
  withSourceSnapshotEncryptionKeyMixin(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_snapshot_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
