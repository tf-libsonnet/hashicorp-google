local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_image', url='', help='`compute_image` represents the `google_compute_image` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  guest_os_features:: {
    '#new':: d.fn(help='\n`google.compute_image.guest_os_features.new` constructs a new object with attributes and blocks configured for the `guest_os_features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `type` (`string`): The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Possible values: [&#34;MULTI_IP_SUBNET&#34;, &#34;SECURE_BOOT&#34;, &#34;SEV_CAPABLE&#34;, &#34;UEFI_COMPATIBLE&#34;, &#34;VIRTIO_SCSI_MULTIQUEUE&#34;, &#34;WINDOWS&#34;, &#34;GVNIC&#34;, &#34;SEV_LIVE_MIGRATABLE&#34;, &#34;SEV_SNP_CAPABLE&#34;, &#34;SUSPEND_RESUME_COMPATIBLE&#34;, &#34;TDX_CAPABLE&#34;, &#34;SEV_LIVE_MIGRATABLE_V2&#34;]\n\n**Returns**:\n  - An attribute object that represents the `guest_os_features` sub block.\n', args=[]),
    new(
      type
    ):: std.prune(a={
      type: type,
    }),
  },
  image_encryption_key:: {
    '#new':: d.fn(help='\n`google.compute_image.image_encryption_key.new` constructs a new object with attributes and blocks configured for the `image_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_self_link` (`string`): The self link of the encryption key that is stored in Google Cloud\nKMS. When `null`, the `kms_key_self_link` field will be omitted from the resulting object.\n  - `kms_key_service_account` (`string`): The service account being used for the encryption request for the\ngiven KMS key. If absent, the Compute Engine default service\naccount is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `image_encryption_key` sub block.\n', args=[]),
    new(
      kms_key_self_link=null,
      kms_key_service_account=null
    ):: std.prune(a={
      kms_key_self_link: kms_key_self_link,
      kms_key_service_account: kms_key_service_account,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_image.new` injects a new `google_compute_image` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_image.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_image` using the reference:\n\n    $._ref.google_compute_image.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_image.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `disk_size_gb` (`number`): Size of the image when restored onto a persistent disk (in GB). When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `family` (`string`): The name of the image family to which this image belongs. You can\ncreate disks by specifying an image family instead of a specific\nimage name. The image family always returns its latest image that is\nnot deprecated. The name of the image family must comply with\nRFC1035. When `null`, the `family` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this Image.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `licenses` (`list`): Any applicable license URI. When `null`, the `licenses` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and\nmatch the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `source_disk` (`string`): The source disk to create this image based on.\nYou must provide either this property or the\nrawDisk.source property but not both to create an image. When `null`, the `source_disk` field will be omitted from the resulting object.\n  - `source_image` (`string`): URL of the source image used to create this image. In order to create an image, you must provide the full or partial\nURL of one of the following:\n\n* The selfLink URL\n* This property\n* The rawDisk.source URL\n* The sourceDisk URL When `null`, the `source_image` field will be omitted from the resulting object.\n  - `source_snapshot` (`string`): URL of the source snapshot used to create this image.\n\nIn order to create an image, you must provide the full or partial URL of one of the following:\n\n* The selfLink URL\n* This property\n* The sourceImage URL\n* The rawDisk.source URL\n* The sourceDisk URL When `null`, the `source_snapshot` field will be omitted from the resulting object.\n  - `storage_locations` (`list`): Cloud Storage bucket storage location of the image\n(regional or multi-regional).\nReference link: https://cloud.google.com/compute/docs/reference/rest/v1/images When `null`, the `storage_locations` field will be omitted from the resulting object.\n  - `guest_os_features` (`list[obj]`): A list of features to enable on the guest operating system.\nApplicable only for bootable images. When `null`, the `guest_os_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.guest_os_features.new](#fn-guest_os_featuresnew) constructor.\n  - `image_encryption_key` (`list[obj]`): Encrypts the image using a customer-supplied encryption key.\n\nAfter you encrypt an image with a customer-supplied key, you must\nprovide the same key if you use the image later (e.g. to create a\ndisk from the image) When `null`, the `image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.image_encryption_key.new](#fn-image_encryption_keynew) constructor.\n  - `raw_disk` (`list[obj]`): The parameters of the raw disk image. When `null`, the `raw_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.raw_disk.new](#fn-raw_disknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    disk_size_gb=null,
    family=null,
    guest_os_features=null,
    image_encryption_key=null,
    labels=null,
    licenses=null,
    project=null,
    raw_disk=null,
    source_disk=null,
    source_image=null,
    source_snapshot=null,
    storage_locations=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_image',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disk_size_gb=disk_size_gb,
      family=family,
      guest_os_features=guest_os_features,
      image_encryption_key=image_encryption_key,
      labels=labels,
      licenses=licenses,
      name=name,
      project=project,
      raw_disk=raw_disk,
      source_disk=source_disk,
      source_image=source_image,
      source_snapshot=source_snapshot,
      storage_locations=storage_locations,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_image.newAttrs` constructs a new object with attributes and blocks configured for the `compute_image`\nTerraform resource.\n\nUnlike [google.compute_image.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `disk_size_gb` (`number`): Size of the image when restored onto a persistent disk (in GB). When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `family` (`string`): The name of the image family to which this image belongs. You can\ncreate disks by specifying an image family instead of a specific\nimage name. The image family always returns its latest image that is\nnot deprecated. The name of the image family must comply with\nRFC1035. When `null`, the `family` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this Image.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `licenses` (`list`): Any applicable license URI. When `null`, the `licenses` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and\nmatch the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `source_disk` (`string`): The source disk to create this image based on.\nYou must provide either this property or the\nrawDisk.source property but not both to create an image. When `null`, the `source_disk` field will be omitted from the resulting object.\n  - `source_image` (`string`): URL of the source image used to create this image. In order to create an image, you must provide the full or partial\nURL of one of the following:\n\n* The selfLink URL\n* This property\n* The rawDisk.source URL\n* The sourceDisk URL When `null`, the `source_image` field will be omitted from the resulting object.\n  - `source_snapshot` (`string`): URL of the source snapshot used to create this image.\n\nIn order to create an image, you must provide the full or partial URL of one of the following:\n\n* The selfLink URL\n* This property\n* The sourceImage URL\n* The rawDisk.source URL\n* The sourceDisk URL When `null`, the `source_snapshot` field will be omitted from the resulting object.\n  - `storage_locations` (`list`): Cloud Storage bucket storage location of the image\n(regional or multi-regional).\nReference link: https://cloud.google.com/compute/docs/reference/rest/v1/images When `null`, the `storage_locations` field will be omitted from the resulting object.\n  - `guest_os_features` (`list[obj]`): A list of features to enable on the guest operating system.\nApplicable only for bootable images. When `null`, the `guest_os_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.guest_os_features.new](#fn-guest_os_featuresnew) constructor.\n  - `image_encryption_key` (`list[obj]`): Encrypts the image using a customer-supplied encryption key.\n\nAfter you encrypt an image with a customer-supplied key, you must\nprovide the same key if you use the image later (e.g. to create a\ndisk from the image) When `null`, the `image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.image_encryption_key.new](#fn-image_encryption_keynew) constructor.\n  - `raw_disk` (`list[obj]`): The parameters of the raw disk image. When `null`, the `raw_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.raw_disk.new](#fn-raw_disknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_image` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    disk_size_gb=null,
    family=null,
    guest_os_features=null,
    image_encryption_key=null,
    labels=null,
    licenses=null,
    project=null,
    raw_disk=null,
    source_disk=null,
    source_image=null,
    source_snapshot=null,
    storage_locations=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    disk_size_gb: disk_size_gb,
    family: family,
    guest_os_features: guest_os_features,
    image_encryption_key: image_encryption_key,
    labels: labels,
    licenses: licenses,
    name: name,
    project: project,
    raw_disk: raw_disk,
    source_disk: source_disk,
    source_image: source_image,
    source_snapshot: source_snapshot,
    storage_locations: storage_locations,
    timeouts: timeouts,
  }),
  raw_disk:: {
    '#new':: d.fn(help='\n`google.compute_image.raw_disk.new` constructs a new object with attributes and blocks configured for the `raw_disk`\nTerraform sub block.\n\n\n\n**Args**:\n  - `container_type` (`string`): The format used to encode and transmit the block device, which\nshould be TAR. This is just a container and transmission format\nand not a runtime format. Provided by the client when the disk\nimage is created. Default value: &#34;TAR&#34; Possible values: [&#34;TAR&#34;] When `null`, the `container_type` field will be omitted from the resulting object.\n  - `sha1` (`string`): An optional SHA1 checksum of the disk image before unpackaging.\nThis is provided by the client when the disk image is created. When `null`, the `sha1` field will be omitted from the resulting object.\n  - `source` (`string`): The full Google Cloud Storage URL where disk storage is stored\nYou must provide either this property or the sourceDisk property\nbut not both.\n\n**Returns**:\n  - An attribute object that represents the `raw_disk` sub block.\n', args=[]),
    new(
      source,
      container_type=null,
      sha1=null
    ):: std.prune(a={
      container_type: container_type,
      sha1: sha1,
      source: source,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_image.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDiskSizeGb':: d.fn(help='`google.number.withDiskSizeGb` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the disk_size_gb field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `disk_size_gb` field.\n', args=[]),
  withDiskSizeGb(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          disk_size_gb: value,
        },
      },
    },
  },
  '#withFamily':: d.fn(help='`google.string.withFamily` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the family field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `family` field.\n', args=[]),
  withFamily(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          family: value,
        },
      },
    },
  },
  '#withGuestOsFeatures':: d.fn(help='`google.list[obj].withGuestOsFeatures` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the guest_os_features field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGuestOsFeaturesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `guest_os_features` field.\n', args=[]),
  withGuestOsFeatures(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          guest_os_features: value,
        },
      },
    },
  },
  '#withGuestOsFeaturesMixin':: d.fn(help='`google.list[obj].withGuestOsFeaturesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the guest_os_features field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGuestOsFeatures](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `guest_os_features` field.\n', args=[]),
  withGuestOsFeaturesMixin(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          guest_os_features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withImageEncryptionKey':: d.fn(help='`google.list[obj].withImageEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the image_encryption_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withImageEncryptionKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `image_encryption_key` field.\n', args=[]),
  withImageEncryptionKey(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          image_encryption_key: value,
        },
      },
    },
  },
  '#withImageEncryptionKeyMixin':: d.fn(help='`google.list[obj].withImageEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the image_encryption_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withImageEncryptionKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `image_encryption_key` field.\n', args=[]),
  withImageEncryptionKeyMixin(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          image_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLicenses':: d.fn(help='`google.list.withLicenses` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the licenses field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `licenses` field.\n', args=[]),
  withLicenses(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          licenses: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRawDisk':: d.fn(help='`google.list[obj].withRawDisk` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the raw_disk field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRawDiskMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `raw_disk` field.\n', args=[]),
  withRawDisk(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          raw_disk: value,
        },
      },
    },
  },
  '#withRawDiskMixin':: d.fn(help='`google.list[obj].withRawDiskMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the raw_disk field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRawDisk](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `raw_disk` field.\n', args=[]),
  withRawDiskMixin(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          raw_disk+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSourceDisk':: d.fn(help='`google.string.withSourceDisk` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_disk field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_disk` field.\n', args=[]),
  withSourceDisk(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          source_disk: value,
        },
      },
    },
  },
  '#withSourceImage':: d.fn(help='`google.string.withSourceImage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_image field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_image` field.\n', args=[]),
  withSourceImage(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          source_image: value,
        },
      },
    },
  },
  '#withSourceSnapshot':: d.fn(help='`google.string.withSourceSnapshot` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_snapshot field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_snapshot` field.\n', args=[]),
  withSourceSnapshot(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          source_snapshot: value,
        },
      },
    },
  },
  '#withStorageLocations':: d.fn(help='`google.list.withStorageLocations` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the storage_locations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `storage_locations` field.\n', args=[]),
  withStorageLocations(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          storage_locations: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
