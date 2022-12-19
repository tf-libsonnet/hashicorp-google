local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloud_run_domain_mapping', url='', help='`cloud_run_domain_mapping` represents the `google_cloud_run_domain_mapping` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  metadata:: {
    '#new':: d.fn(help='\n`google.cloud_run_domain_mapping.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`\nTerraform sub block.\n\n\n\n**Args**:\n  - `annotations` (`obj`): Annotations is a key value map stored with a resource that\nmay be set by external tools to store and retrieve arbitrary metadata. More\ninfo: http://kubernetes.io/docs/user-guide/annotations\n\n**Note**: The Cloud Run API may add additional annotations that were not provided in your config.\nIf terraform plan shows a diff where a server-side annotation is added, you can add it to your config\nor apply the lifecycle.ignore_changes rule to the metadata.0.annotations field. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `labels` (`obj`): Map of string keys and values that can be used to organize and categorize\n(scope and select) objects. May match selectors of replication controllers\nand routes.\nMore info: http://kubernetes.io/docs/user-guide/labels When `null`, the `labels` field will be omitted from the resulting object.\n  - `namespace` (`string`): In Cloud Run the namespace must be equal to either the\nproject ID or project number.\n\n**Returns**:\n  - An attribute object that represents the `metadata` sub block.\n', args=[]),
    new(
      namespace,
      annotations=null,
      labels=null
    ):: std.prune(a={
      annotations: annotations,
      labels: labels,
      namespace: namespace,
    }),
  },
  '#new':: d.fn(help="\n`google.cloud_run_domain_mapping.new` injects a new `google_cloud_run_domain_mapping` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloud_run_domain_mapping.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloud_run_domain_mapping` using the reference:\n\n    $._ref.google_cloud_run_domain_mapping.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloud_run_domain_mapping.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): The location of the cloud run instance. eg us-central1\n  - `name` (`string`): Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `metadata` (`list[obj]`): Metadata associated with this DomainMapping. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.metadata.new](#fn-metadatanew) constructor.\n  - `spec` (`list[obj]`): The spec for this DomainMapping. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.spec.new](#fn-specnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    metadata=null,
    project=null,
    spec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_run_domain_mapping',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      metadata=metadata,
      name=name,
      project=project,
      spec=spec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloud_run_domain_mapping.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_run_domain_mapping`\nTerraform resource.\n\nUnlike [google.cloud_run_domain_mapping.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The location of the cloud run instance. eg us-central1\n  - `name` (`string`): Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `metadata` (`list[obj]`): Metadata associated with this DomainMapping. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.metadata.new](#fn-metadatanew) constructor.\n  - `spec` (`list[obj]`): The spec for this DomainMapping. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.spec.new](#fn-specnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_run_domain_mapping` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    metadata=null,
    project=null,
    spec=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    metadata: metadata,
    name: name,
    project: project,
    spec: spec,
    timeouts: timeouts,
  }),
  spec:: {
    '#new':: d.fn(help='\n`google.cloud_run_domain_mapping.spec.new` constructs a new object with attributes and blocks configured for the `spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_mode` (`string`): The mode of the certificate. Default value: &#34;AUTOMATIC&#34; Possible values: [&#34;NONE&#34;, &#34;AUTOMATIC&#34;] When `null`, the `certificate_mode` field will be omitted from the resulting object.\n  - `force_override` (`bool`): If set, the mapping will override any mapping set before this spec was set.\nIt is recommended that the user leaves this empty to receive an error\nwarning about a potential conflict and only set it once the respective UI\nhas given such a warning. When `null`, the `force_override` field will be omitted from the resulting object.\n  - `route_name` (`string`): The name of the Cloud Run Service that this DomainMapping applies to.\nThe route must exist.\n\n**Returns**:\n  - An attribute object that represents the `spec` sub block.\n', args=[]),
    new(
      route_name,
      certificate_mode=null,
      force_override=null
    ):: std.prune(a={
      certificate_mode: certificate_mode,
      force_override: force_override,
      route_name: route_name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloud_run_domain_mapping.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMetadataMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withMetadataMixin':: d.fn(help='`google.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMetadata](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadataMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSpec':: d.fn(help='`google.list[obj].withSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spec` field.\n', args=[]),
  withSpec(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          spec: value,
        },
      },
    },
  },
  '#withSpecMixin':: d.fn(help='`google.list[obj].withSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spec` field.\n', args=[]),
  withSpecMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
