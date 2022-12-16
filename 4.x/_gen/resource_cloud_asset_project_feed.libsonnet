local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  condition:: {
    new(
      expression,
      description=null,
      location=null,
      title=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      location: location,
      title: title,
    }),
  },
  feed_output_config:: {
    new(
      pubsub_destination=null
    ):: std.prune(a={
      pubsub_destination: pubsub_destination,
    }),
    pubsub_destination:: {
      new(
        topic
      ):: std.prune(a={
        topic: topic,
      }),
    },
  },
  new(
    resourceLabel,
    feed_id,
    asset_names=null,
    asset_types=null,
    billing_project=null,
    condition=null,
    content_type=null,
    feed_output_config=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_asset_project_feed',
    label=resourceLabel,
    attrs=self.newAttrs(
      asset_names=asset_names,
      asset_types=asset_types,
      billing_project=billing_project,
      condition=condition,
      content_type=content_type,
      feed_id=feed_id,
      feed_output_config=feed_output_config,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    feed_id,
    asset_names=null,
    asset_types=null,
    billing_project=null,
    condition=null,
    content_type=null,
    feed_output_config=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    asset_names: asset_names,
    asset_types: asset_types,
    billing_project: billing_project,
    condition: condition,
    content_type: content_type,
    feed_id: feed_id,
    feed_output_config: feed_output_config,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
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
  withAssetNames(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          asset_names: value,
        },
      },
    },
  },
  withAssetTypes(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          asset_types: value,
        },
      },
    },
  },
  withBillingProject(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          billing_project: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withContentType(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          content_type: value,
        },
      },
    },
  },
  withFeedId(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          feed_id: value,
        },
      },
    },
  },
  withFeedOutputConfig(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          feed_output_config: value,
        },
      },
    },
  },
  withFeedOutputConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          feed_output_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_asset_project_feed+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}