local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='app_engine_service_network_settings', url='', help='`app_engine_service_network_settings` represents the `google_app_engine_service_network_settings` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  network_settings:: {
    '#new':: d.fn(help='\n`google.app_engine_service_network_settings.network_settings.new` constructs a new object with attributes and blocks configured for the `network_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ingress_traffic_allowed` (`string`): The ingress settings for version or service. Default value: &#34;INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED&#34; Possible values: [&#34;INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED&#34;, &#34;INGRESS_TRAFFIC_ALLOWED_ALL&#34;, &#34;INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY&#34;, &#34;INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB&#34;] When `null`, the `ingress_traffic_allowed` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `network_settings` sub block.\n', args=[]),
    new(
      ingress_traffic_allowed=null
    ):: std.prune(a={
      ingress_traffic_allowed: ingress_traffic_allowed,
    }),
  },
  '#new':: d.fn(help="\n`google.app_engine_service_network_settings.new` injects a new `google_app_engine_service_network_settings` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.app_engine_service_network_settings.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.app_engine_service_network_settings` using the reference:\n\n    $._ref.google_app_engine_service_network_settings.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_app_engine_service_network_settings.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): The name of the service these settings apply to.\n  - `network_settings` (`list[obj]`): Ingress settings for this service. Will apply to all versions. When `null`, the `network_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_network_settings.network_settings.new](#fn-appengineservicenetworksettingsnetworksettingsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_network_settings.timeouts.new](#fn-appengineservicenetworksettingstimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    service,
    network_settings=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_service_network_settings',
    label=resourceLabel,
    attrs=self.newAttrs(
      network_settings=network_settings,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.app_engine_service_network_settings.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_service_network_settings`\nTerraform resource.\n\nUnlike [google.app_engine_service_network_settings.new](#fn-appengineservicenetworksettingsnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): The name of the service these settings apply to.\n  - `network_settings` (`list[obj]`): Ingress settings for this service. Will apply to all versions. When `null`, the `network_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_network_settings.network_settings.new](#fn-appengineservicenetworksettingsnetworksettingsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_service_network_settings.timeouts.new](#fn-appengineservicenetworksettingstimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_service_network_settings` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    service,
    network_settings=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    network_settings: network_settings,
    project: project,
    service: service,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.app_engine_service_network_settings.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withNetworkSettings':: d.fn(help='`google.list[obj].withNetworkSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_settings` field.\n', args=[]),
  withNetworkSettings(resourceLabel, value): {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          network_settings: value,
        },
      },
    },
  },
  '#withNetworkSettingsMixin':: d.fn(help='`google.list[obj].withNetworkSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_settings` field.\n', args=[]),
  withNetworkSettingsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          network_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_service_network_settings+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
