local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_endpoint_attachment', url='', help='`apigee_endpoint_attachment` represents the `google_apigee_endpoint_attachment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_endpoint_attachment.new` injects a new `google_apigee_endpoint_attachment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_endpoint_attachment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_endpoint_attachment` using the reference:\n\n    $._ref.google_apigee_endpoint_attachment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_endpoint_attachment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `endpoint_attachment_id` (`string`): ID of the endpoint attachment.\n  - `location` (`string`): Location of the endpoint attachment.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance,\nin the format \u0026#39;organizations/{{org_name}}\u0026#39;.\n  - `service_attachment` (`string`): Format: projects/*/regions/*/serviceAttachments/*\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_endpoint_attachment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    endpoint_attachment_id,
    location,
    org_id,
    service_attachment,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_endpoint_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      endpoint_attachment_id=endpoint_attachment_id,
      location=location,
      org_id=org_id,
      service_attachment=service_attachment,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_endpoint_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_endpoint_attachment`\nTerraform resource.\n\nUnlike [google.apigee_endpoint_attachment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `endpoint_attachment_id` (`string`): ID of the endpoint attachment.\n  - `location` (`string`): Location of the endpoint attachment.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance,\nin the format &#39;organizations/{{org_name}}&#39;.\n  - `service_attachment` (`string`): Format: projects/*/regions/*/serviceAttachments/*\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_endpoint_attachment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_endpoint_attachment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    endpoint_attachment_id,
    location,
    org_id,
    service_attachment,
    timeouts=null
  ):: std.prune(a={
    endpoint_attachment_id: endpoint_attachment_id,
    location: location,
    org_id: org_id,
    service_attachment: service_attachment,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_endpoint_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withEndpointAttachmentId':: d.fn(help='`google.string.withEndpointAttachmentId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the endpoint_attachment_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `endpoint_attachment_id` field.\n', args=[]),
  withEndpointAttachmentId(resourceLabel, value): {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          endpoint_attachment_id: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withServiceAttachment':: d.fn(help='`google.string.withServiceAttachment` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_attachment field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_attachment` field.\n', args=[]),
  withServiceAttachment(resourceLabel, value): {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          service_attachment: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
