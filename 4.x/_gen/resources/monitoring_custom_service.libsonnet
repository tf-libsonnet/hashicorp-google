local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_custom_service', url='', help='`monitoring_custom_service` represents the `google_monitoring_custom_service` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.monitoring_custom_service.new` injects a new `google_monitoring_custom_service` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.monitoring_custom_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.monitoring_custom_service` using the reference:\n\n    $._ref.google_monitoring_custom_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_monitoring_custom_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Name used for UI elements listing this Service. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_id` (`string`): An optional service ID to use. If not given, the server will generate a\nservice ID. When `null`, the `service_id` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): Labels which have been used to annotate the service. Label keys must start\nwith a letter. Label keys and values may contain lowercase letters,\nnumbers, underscores, and dashes. Label keys and values have a maximum\nlength of 63 characters, and must be less than 128 bytes in size. Up to 64\nlabel entries may be stored. For labels which do not have a semantic value,\nthe empty string may be supplied for the label value. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `telemetry` (`list[obj]`): Configuration for how to query telemetry on a Service. When `null`, the `telemetry` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_custom_service.telemetry.new](#fn-monitoringcustomservicetelemetrynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_custom_service.timeouts.new](#fn-monitoringcustomservicetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name=null,
    project=null,
    service_id=null,
    telemetry=null,
    timeouts=null,
    user_labels=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_custom_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      project=project,
      service_id=service_id,
      telemetry=telemetry,
      timeouts=timeouts,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.monitoring_custom_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_custom_service`\nTerraform resource.\n\nUnlike [google.monitoring_custom_service.new](#fn-monitoringcustomservicenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Name used for UI elements listing this Service. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_id` (`string`): An optional service ID to use. If not given, the server will generate a\nservice ID. When `null`, the `service_id` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): Labels which have been used to annotate the service. Label keys must start\nwith a letter. Label keys and values may contain lowercase letters,\nnumbers, underscores, and dashes. Label keys and values have a maximum\nlength of 63 characters, and must be less than 128 bytes in size. Up to 64\nlabel entries may be stored. For labels which do not have a semantic value,\nthe empty string may be supplied for the label value. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `telemetry` (`list[obj]`): Configuration for how to query telemetry on a Service. When `null`, the `telemetry` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_custom_service.telemetry.new](#fn-monitoringcustomservicetelemetrynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_custom_service.timeouts.new](#fn-monitoringcustomservicetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_custom_service` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name=null,
    project=null,
    service_id=null,
    telemetry=null,
    timeouts=null,
    user_labels=null
  ):: std.prune(a={
    display_name: display_name,
    project: project,
    service_id: service_id,
    telemetry: telemetry,
    timeouts: timeouts,
    user_labels: user_labels,
  }),
  telemetry:: {
    '#new':: d.fn(help='\n`google.monitoring_custom_service.telemetry.new` constructs a new object with attributes and blocks configured for the `telemetry`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_name` (`string`): The full name of the resource that defines this service.\nFormatted as described in\nhttps://cloud.google.com/apis/design/resource_names. When `null`, the `resource_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `telemetry` sub block.\n', args=[]),
    new(
      resource_name=null
    ):: std.prune(a={
      resource_name: resource_name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.monitoring_custom_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServiceId':: d.fn(help='`google.string.withServiceId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_id` field.\n', args=[]),
  withServiceId(resourceLabel, value): {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          service_id: value,
        },
      },
    },
  },
  '#withTelemetry':: d.fn(help='`google.list[obj].withTelemetry` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the telemetry field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTelemetryMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `telemetry` field.\n', args=[]),
  withTelemetry(resourceLabel, value): {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          telemetry: value,
        },
      },
    },
  },
  '#withTelemetryMixin':: d.fn(help='`google.list[obj].withTelemetryMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the telemetry field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTelemetry](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `telemetry` field.\n', args=[]),
  withTelemetryMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          telemetry+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserLabels':: d.fn(help='`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the user_labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `user_labels` field.\n', args=[]),
  withUserLabels(resourceLabel, value): {
    resource+: {
      google_monitoring_custom_service+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
