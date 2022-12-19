local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='game_services_realm', url='', help='`game_services_realm` represents the `google_game_services_realm` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.game_services_realm.new` injects a new `google_game_services_realm` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.game_services_realm.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.game_services_realm` using the reference:\n\n    $._ref.google_game_services_realm.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_game_services_realm.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Human readable description of the realm. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this realm. Each label is a key-value pair. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the Realm. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `realm_id` (`string`): GCP region of the Realm.\n  - `time_zone` (`string`): Required. Time zone where all realm-specific policies are evaluated. The value of\nthis field must be from the IANA time zone database:\nhttps://www.iana.org/time-zones.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_realm.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    realm_id,
    time_zone,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_game_services_realm',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      location=location,
      project=project,
      realm_id=realm_id,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.game_services_realm.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_realm`\nTerraform resource.\n\nUnlike [google.game_services_realm.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Human readable description of the realm. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this realm. Each label is a key-value pair. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the Realm. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `realm_id` (`string`): GCP region of the Realm.\n  - `time_zone` (`string`): Required. Time zone where all realm-specific policies are evaluated. The value of\nthis field must be from the IANA time zone database:\nhttps://www.iana.org/time-zones.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_realm.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `game_services_realm` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    realm_id,
    time_zone,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    location: location,
    project: project,
    realm_id: realm_id,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.game_services_realm.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_game_services_realm+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRealmId':: d.fn(help='`google.string.withRealmId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the realm_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `realm_id` field.\n', args=[]),
  withRealmId(resourceLabel, value): {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          realm_id: value,
        },
      },
    },
  },
  '#withTimeZone':: d.fn(help='`google.string.withTimeZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the time_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `time_zone` field.\n', args=[]),
  withTimeZone(resourceLabel, value): {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
