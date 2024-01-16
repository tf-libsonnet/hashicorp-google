local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_feature_online_store_featureview', url='', help='`vertex_ai_feature_online_store_featureview` represents the `google_vertex_ai_feature_online_store_featureview` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  big_query_source:: {
    '#new':: d.fn(help='\n`google.vertex_ai_feature_online_store_featureview.big_query_source.new` constructs a new object with attributes and blocks configured for the `big_query_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `entity_id_columns` (`list`): Columns to construct entityId / row keys. Start by supporting 1 only.\n  - `uri` (`string`): The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.\n\n**Returns**:\n  - An attribute object that represents the `big_query_source` sub block.\n', args=[]),
    new(
      entity_id_columns,
      uri
    ):: std.prune(a={
      entity_id_columns: entity_id_columns,
      uri: uri,
    }),
  },
  '#new':: d.fn(help="\n`google.vertex_ai_feature_online_store_featureview.new` injects a new `google_vertex_ai_feature_online_store_featureview` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_feature_online_store_featureview.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_feature_online_store_featureview` using the reference:\n\n    $._ref.google_vertex_ai_feature_online_store_featureview.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_feature_online_store_featureview.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `feature_online_store` (`string`): The name of the FeatureOnlineStore to use for the featureview.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this FeatureView.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region for the resource. It should be the same as the featureonlinestore region.\n  - `big_query_source` (`list[obj]`): Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.big_query_source.new](#fn-big_query_sourcenew) constructor.\n  - `sync_config` (`list[obj]`): Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. When `null`, the `sync_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.sync_config.new](#fn-sync_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    feature_online_store,
    region,
    big_query_source=null,
    labels=null,
    name=null,
    project=null,
    sync_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_feature_online_store_featureview',
    label=resourceLabel,
    attrs=self.newAttrs(
      big_query_source=big_query_source,
      feature_online_store=feature_online_store,
      labels=labels,
      name=name,
      project=project,
      region=region,
      sync_config=sync_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_feature_online_store_featureview.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_feature_online_store_featureview`\nTerraform resource.\n\nUnlike [google.vertex_ai_feature_online_store_featureview.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `feature_online_store` (`string`): The name of the FeatureOnlineStore to use for the featureview.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this FeatureView.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region for the resource. It should be the same as the featureonlinestore region.\n  - `big_query_source` (`list[obj]`): Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.big_query_source.new](#fn-big_query_sourcenew) constructor.\n  - `sync_config` (`list[obj]`): Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. When `null`, the `sync_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.sync_config.new](#fn-sync_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store_featureview.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_feature_online_store_featureview` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    feature_online_store,
    region,
    big_query_source=null,
    labels=null,
    name=null,
    project=null,
    sync_config=null,
    timeouts=null
  ):: std.prune(a={
    big_query_source: big_query_source,
    feature_online_store: feature_online_store,
    labels: labels,
    name: name,
    project: project,
    region: region,
    sync_config: sync_config,
    timeouts: timeouts,
  }),
  sync_config:: {
    '#new':: d.fn(help='\n`google.vertex_ai_feature_online_store_featureview.sync_config.new` constructs a new object with attributes and blocks configured for the `sync_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cron` (`string`): Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.\nTo explicitly set a timezone to the cron tab, apply a prefix in the cron tab: &#34;CRON_TZ=${IANA_TIME_ZONE}&#34; or &#34;TZ=${IANA_TIME_ZONE}&#34;. When `null`, the `cron` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sync_config` sub block.\n', args=[]),
    new(
      cron=null
    ):: std.prune(a={
      cron: cron,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_feature_online_store_featureview.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBigQuerySource':: d.fn(help='`google.list[obj].withBigQuerySource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the big_query_source field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBigQuerySourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `big_query_source` field.\n', args=[]),
  withBigQuerySource(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          big_query_source: value,
        },
      },
    },
  },
  '#withBigQuerySourceMixin':: d.fn(help='`google.list[obj].withBigQuerySourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the big_query_source field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBigQuerySource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `big_query_source` field.\n', args=[]),
  withBigQuerySourceMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          big_query_source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFeatureOnlineStore':: d.fn(help='`google.string.withFeatureOnlineStore` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the feature_online_store field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `feature_online_store` field.\n', args=[]),
  withFeatureOnlineStore(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          feature_online_store: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSyncConfig':: d.fn(help='`google.list[obj].withSyncConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sync_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSyncConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sync_config` field.\n', args=[]),
  withSyncConfig(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          sync_config: value,
        },
      },
    },
  },
  '#withSyncConfigMixin':: d.fn(help='`google.list[obj].withSyncConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sync_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSyncConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sync_config` field.\n', args=[]),
  withSyncConfigMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          sync_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
