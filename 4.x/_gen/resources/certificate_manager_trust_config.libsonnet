local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='certificate_manager_trust_config', url='', help='`certificate_manager_trust_config` represents the `google_certificate_manager_trust_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.certificate_manager_trust_config.new` injects a new `google_certificate_manager_trust_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.certificate_manager_trust_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.certificate_manager_trust_config` using the reference:\n\n    $._ref.google_certificate_manager_trust_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_certificate_manager_trust_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): One or more paragraphs of text description of a trust config. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the trust config.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The trust config location.\n  - `name` (`string`): A user-defined name of the trust config. Trust config names must be unique globally.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.timeouts.new](#fn-timeoutsnew) constructor.\n  - `trust_stores` (`list[obj]`): Set of trust stores to perform validation against.\nThis field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. When `null`, the `trust_stores` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.trust_stores.new](#fn-trust_storesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null,
    trust_stores=null,
    _meta={}
  ):: tf.withResource(
    type='google_certificate_manager_trust_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts,
      trust_stores=trust_stores
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.certificate_manager_trust_config.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_trust_config`\nTerraform resource.\n\nUnlike [google.certificate_manager_trust_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): One or more paragraphs of text description of a trust config. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the trust config.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The trust config location.\n  - `name` (`string`): A user-defined name of the trust config. Trust config names must be unique globally.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.timeouts.new](#fn-timeoutsnew) constructor.\n  - `trust_stores` (`list[obj]`): Set of trust stores to perform validation against.\nThis field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. When `null`, the `trust_stores` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.trust_stores.new](#fn-trust_storesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_trust_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null,
    trust_stores=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    timeouts: timeouts,
    trust_stores: trust_stores,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.certificate_manager_trust_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  trust_stores:: {
    intermediate_cas:: {
      '#new':: d.fn(help='\n`google.certificate_manager_trust_config.trust_stores.intermediate_cas.new` constructs a new object with attributes and blocks configured for the `intermediate_cas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pem_certificate` (`string`): PEM intermediate certificate used for building up paths for validation.\nEach certificate provided in PEM format may occupy up to 5kB. When `null`, the `pem_certificate` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `intermediate_cas` sub block.\n', args=[]),
      new(
        pem_certificate=null
      ):: std.prune(a={
        pem_certificate: pem_certificate,
      }),
    },
    '#new':: d.fn(help='\n`google.certificate_manager_trust_config.trust_stores.new` constructs a new object with attributes and blocks configured for the `trust_stores`\nTerraform sub block.\n\n\n\n**Args**:\n  - `intermediate_cas` (`list[obj]`): Set of intermediate CA certificates used for the path building phase of chain validation.\nThe field is currently not supported if trust config is used for the workload certificate feature. When `null`, the `intermediate_cas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.trust_stores.intermediate_cas.new](#fn-trust_storesintermediate_casnew) constructor.\n  - `trust_anchors` (`list[obj]`): List of Trust Anchors to be used while performing validation against a given TrustStore. When `null`, the `trust_anchors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.trust_stores.trust_anchors.new](#fn-trust_storestrust_anchorsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trust_stores` sub block.\n', args=[]),
    new(
      intermediate_cas=null,
      trust_anchors=null
    ):: std.prune(a={
      intermediate_cas: intermediate_cas,
      trust_anchors: trust_anchors,
    }),
    trust_anchors:: {
      '#new':: d.fn(help='\n`google.certificate_manager_trust_config.trust_stores.trust_anchors.new` constructs a new object with attributes and blocks configured for the `trust_anchors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pem_certificate` (`string`): PEM root certificate of the PKI used for validation.\nEach certificate provided in PEM format may occupy up to 5kB. When `null`, the `pem_certificate` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `trust_anchors` sub block.\n', args=[]),
      new(
        pem_certificate=null
      ):: std.prune(a={
        pem_certificate: pem_certificate,
      }),
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTrustStores':: d.fn(help='`google.list[obj].withTrustStores` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the trust_stores field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTrustStoresMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `trust_stores` field.\n', args=[]),
  withTrustStores(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          trust_stores: value,
        },
      },
    },
  },
  '#withTrustStoresMixin':: d.fn(help='`google.list[obj].withTrustStoresMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the trust_stores field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTrustStores](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `trust_stores` field.\n', args=[]),
  withTrustStoresMixin(resourceLabel, value): {
    resource+: {
      google_certificate_manager_trust_config+: {
        [resourceLabel]+: {
          trust_stores+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
