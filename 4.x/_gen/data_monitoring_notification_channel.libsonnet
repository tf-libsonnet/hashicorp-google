local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    display_name=null,
    labels=null,
    project=null,
    type=null,
    user_labels=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_notification_channel',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      labels=labels,
      project=project,
      type=type,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name=null,
    labels=null,
    project=null,
    type=null,
    user_labels=null
  ):: std.prune(a={
    display_name: display_name,
    labels: labels,
    project: project,
    type: type,
    user_labels: user_labels,
  }),
  withDisplayName(dataSrcLabel, value):: {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(dataSrcLabel, value):: {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          labels: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withType(dataSrcLabel, value):: {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          type: value,
        },
      },
    },
  },
  withUserLabels(dataSrcLabel, value):: {
    data+: {
      google_monitoring_notification_channel+: {
        [dataSrcLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
