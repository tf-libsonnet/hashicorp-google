local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='firestore_database', url='', help='`firestore_database` represents the `google_firestore_database` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.firestore_database.new` injects a new `google_firestore_database` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.firestore_database.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.firestore_database` using the reference:\n\n    $._ref.google_firestore_database.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_firestore_database.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `app_engine_integration_mode` (`string`): The App Engine integration mode to use for this database. Possible values: [\u0026#34;ENABLED\u0026#34;, \u0026#34;DISABLED\u0026#34;] When `null`, the `app_engine_integration_mode` field will be omitted from the resulting object.\n  - `concurrency_mode` (`string`): The concurrency control mode to use for this database. Possible values: [\u0026#34;OPTIMISTIC\u0026#34;, \u0026#34;PESSIMISTIC\u0026#34;, \u0026#34;OPTIMISTIC_WITH_ENTITY_GROUPS\u0026#34;] When `null`, the `concurrency_mode` field will be omitted from the resulting object.\n  - `location_id` (`string`): The location of the database. Available databases are listed at\nhttps://cloud.google.com/firestore/docs/locations.\n  - `name` (`string`): The ID to use for the database, which will become the final\ncomponent of the database\u0026#39;s resource name. This value should be 4-63\ncharacters. Valid characters are /[a-z][0-9]-/ with first character\na letter and the last a letter or a number. Must not be\nUUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.\n\u0026#34;(default)\u0026#34; database id is also valid.\n  - `point_in_time_recovery_enablement` (`string`): Whether to enable the PITR feature on this database.\nIf \u0026#39;POINT_IN_TIME_RECOVERY_ENABLED\u0026#39; is selected, reads are supported on selected versions of the data from within the past 7 days.\nversionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour\nand reads against 1-minute snapshots beyond 1 hour and within 7 days.\nIf \u0026#39;POINT_IN_TIME_RECOVERY_DISABLED\u0026#39; is selected, reads are supported on any version of the data from within the past 1 hour. Default value: \u0026#34;POINT_IN_TIME_RECOVERY_DISABLED\u0026#34; Possible values: [\u0026#34;POINT_IN_TIME_RECOVERY_ENABLED\u0026#34;, \u0026#34;POINT_IN_TIME_RECOVERY_DISABLED\u0026#34;] When `null`, the `point_in_time_recovery_enablement` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the database.\nSee https://cloud.google.com/datastore/docs/firestore-or-datastore\nfor information about how to choose. Possible values: [\u0026#34;FIRESTORE_NATIVE\u0026#34;, \u0026#34;DATASTORE_MODE\u0026#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_database.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location_id,
    name,
    type,
    app_engine_integration_mode=null,
    concurrency_mode=null,
    point_in_time_recovery_enablement=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firestore_database',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_engine_integration_mode=app_engine_integration_mode,
      concurrency_mode=concurrency_mode,
      location_id=location_id,
      name=name,
      point_in_time_recovery_enablement=point_in_time_recovery_enablement,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.firestore_database.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_database`\nTerraform resource.\n\nUnlike [google.firestore_database.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `app_engine_integration_mode` (`string`): The App Engine integration mode to use for this database. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `app_engine_integration_mode` field will be omitted from the resulting object.\n  - `concurrency_mode` (`string`): The concurrency control mode to use for this database. Possible values: [&#34;OPTIMISTIC&#34;, &#34;PESSIMISTIC&#34;, &#34;OPTIMISTIC_WITH_ENTITY_GROUPS&#34;] When `null`, the `concurrency_mode` field will be omitted from the resulting object.\n  - `location_id` (`string`): The location of the database. Available databases are listed at\nhttps://cloud.google.com/firestore/docs/locations.\n  - `name` (`string`): The ID to use for the database, which will become the final\ncomponent of the database&#39;s resource name. This value should be 4-63\ncharacters. Valid characters are /[a-z][0-9]-/ with first character\na letter and the last a letter or a number. Must not be\nUUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.\n&#34;(default)&#34; database id is also valid.\n  - `point_in_time_recovery_enablement` (`string`): Whether to enable the PITR feature on this database.\nIf &#39;POINT_IN_TIME_RECOVERY_ENABLED&#39; is selected, reads are supported on selected versions of the data from within the past 7 days.\nversionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour\nand reads against 1-minute snapshots beyond 1 hour and within 7 days.\nIf &#39;POINT_IN_TIME_RECOVERY_DISABLED&#39; is selected, reads are supported on any version of the data from within the past 1 hour. Default value: &#34;POINT_IN_TIME_RECOVERY_DISABLED&#34; Possible values: [&#34;POINT_IN_TIME_RECOVERY_ENABLED&#34;, &#34;POINT_IN_TIME_RECOVERY_DISABLED&#34;] When `null`, the `point_in_time_recovery_enablement` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the database.\nSee https://cloud.google.com/datastore/docs/firestore-or-datastore\nfor information about how to choose. Possible values: [&#34;FIRESTORE_NATIVE&#34;, &#34;DATASTORE_MODE&#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_database.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_database` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location_id,
    name,
    type,
    app_engine_integration_mode=null,
    concurrency_mode=null,
    point_in_time_recovery_enablement=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    app_engine_integration_mode: app_engine_integration_mode,
    concurrency_mode: concurrency_mode,
    location_id: location_id,
    name: name,
    point_in_time_recovery_enablement: point_in_time_recovery_enablement,
    project: project,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.firestore_database.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAppEngineIntegrationMode':: d.fn(help='`google.string.withAppEngineIntegrationMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the app_engine_integration_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `app_engine_integration_mode` field.\n', args=[]),
  withAppEngineIntegrationMode(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          app_engine_integration_mode: value,
        },
      },
    },
  },
  '#withConcurrencyMode':: d.fn(help='`google.string.withConcurrencyMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the concurrency_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `concurrency_mode` field.\n', args=[]),
  withConcurrencyMode(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          concurrency_mode: value,
        },
      },
    },
  },
  '#withLocationId':: d.fn(help='`google.string.withLocationId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location_id` field.\n', args=[]),
  withLocationId(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          location_id: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPointInTimeRecoveryEnablement':: d.fn(help='`google.string.withPointInTimeRecoveryEnablement` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the point_in_time_recovery_enablement field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `point_in_time_recovery_enablement` field.\n', args=[]),
  withPointInTimeRecoveryEnablement(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          point_in_time_recovery_enablement: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_firestore_database+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
