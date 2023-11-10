local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='firestore_backup_schedule', url='', help='`firestore_backup_schedule` represents the `google_firestore_backup_schedule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  daily_recurrence:: {
    '#new':: d.fn(help='\n`google.firestore_backup_schedule.daily_recurrence.new` constructs a new object with attributes and blocks configured for the `daily_recurrence`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `daily_recurrence` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  '#new':: d.fn(help="\n`google.firestore_backup_schedule.new` injects a new `google_firestore_backup_schedule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.firestore_backup_schedule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.firestore_backup_schedule` using the reference:\n\n    $._ref.google_firestore_backup_schedule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_firestore_backup_schedule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `database` (`string`): The Firestore database id. Defaults to \u0026#39;\u0026#34;(default)\u0026#34;\u0026#39;. When `null`, the `database` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `retention` (`string`): At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.\nA duration in seconds with up to nine fractional digits, ending with \u0026#39;s\u0026#39;. Example: \u0026#34;3.5s\u0026#34;.\n\nFor a daily backup recurrence, set this to a value up to 7 days. If you set a weekly backup recurrence, set this to a value up to 14 weeks.\n  - `daily_recurrence` (`list[obj]`): For a schedule that runs daily at a specified time. When `null`, the `daily_recurrence` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.daily_recurrence.new](#fn-daily_recurrencenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.timeouts.new](#fn-timeoutsnew) constructor.\n  - `weekly_recurrence` (`list[obj]`): For a schedule that runs weekly on a specific day and time. When `null`, the `weekly_recurrence` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.weekly_recurrence.new](#fn-weekly_recurrencenew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    retention,
    daily_recurrence=null,
    database=null,
    project=null,
    timeouts=null,
    weekly_recurrence=null,
    _meta={}
  ):: tf.withResource(
    type='google_firestore_backup_schedule',
    label=resourceLabel,
    attrs=self.newAttrs(
      daily_recurrence=daily_recurrence,
      database=database,
      project=project,
      retention=retention,
      timeouts=timeouts,
      weekly_recurrence=weekly_recurrence
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.firestore_backup_schedule.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_backup_schedule`\nTerraform resource.\n\nUnlike [google.firestore_backup_schedule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `retention` (`string`): At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.\nA duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;.\n\nFor a daily backup recurrence, set this to a value up to 7 days. If you set a weekly backup recurrence, set this to a value up to 14 weeks.\n  - `daily_recurrence` (`list[obj]`): For a schedule that runs daily at a specified time. When `null`, the `daily_recurrence` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.daily_recurrence.new](#fn-daily_recurrencenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.timeouts.new](#fn-timeoutsnew) constructor.\n  - `weekly_recurrence` (`list[obj]`): For a schedule that runs weekly on a specific day and time. When `null`, the `weekly_recurrence` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.weekly_recurrence.new](#fn-weekly_recurrencenew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_backup_schedule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    retention,
    daily_recurrence=null,
    database=null,
    project=null,
    timeouts=null,
    weekly_recurrence=null
  ):: std.prune(a={
    daily_recurrence: daily_recurrence,
    database: database,
    project: project,
    retention: retention,
    timeouts: timeouts,
    weekly_recurrence: weekly_recurrence,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.firestore_backup_schedule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  weekly_recurrence:: {
    '#new':: d.fn(help='\n`google.firestore_backup_schedule.weekly_recurrence.new` constructs a new object with attributes and blocks configured for the `weekly_recurrence`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`string`): The day of week to run. Possible values: [&#34;DAY_OF_WEEK_UNSPECIFIED&#34;, &#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `weekly_recurrence` sub block.\n', args=[]),
    new(
      day=null
    ):: std.prune(a={
      day: day,
    }),
  },
  '#withDailyRecurrence':: d.fn(help='`google.list[obj].withDailyRecurrence` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the daily_recurrence field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDailyRecurrenceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `daily_recurrence` field.\n', args=[]),
  withDailyRecurrence(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          daily_recurrence: value,
        },
      },
    },
  },
  '#withDailyRecurrenceMixin':: d.fn(help='`google.list[obj].withDailyRecurrenceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the daily_recurrence field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDailyRecurrence](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `daily_recurrence` field.\n', args=[]),
  withDailyRecurrenceMixin(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          daily_recurrence+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDatabase':: d.fn(help='`google.string.withDatabase` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database` field.\n', args=[]),
  withDatabase(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRetention':: d.fn(help='`google.string.withRetention` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the retention field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `retention` field.\n', args=[]),
  withRetention(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          retention: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWeeklyRecurrence':: d.fn(help='`google.list[obj].withWeeklyRecurrence` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the weekly_recurrence field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWeeklyRecurrenceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `weekly_recurrence` field.\n', args=[]),
  withWeeklyRecurrence(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          weekly_recurrence: value,
        },
      },
    },
  },
  '#withWeeklyRecurrenceMixin':: d.fn(help='`google.list[obj].withWeeklyRecurrenceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the weekly_recurrence field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWeeklyRecurrence](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `weekly_recurrence` field.\n', args=[]),
  withWeeklyRecurrenceMixin(resourceLabel, value): {
    resource+: {
      google_firestore_backup_schedule+: {
        [resourceLabel]+: {
          weekly_recurrence+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
