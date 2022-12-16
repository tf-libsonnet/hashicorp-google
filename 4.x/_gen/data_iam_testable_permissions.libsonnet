local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    full_resource_name,
    custom_support_level=null,
    stages=null,
    _meta={}
  ):: tf.withData(
    type='google_iam_testable_permissions',
    label=dataSrcLabel,
    attrs=self.newAttrs(custom_support_level=custom_support_level, full_resource_name=full_resource_name, stages=stages),
    _meta=_meta
  ),
  newAttrs(
    full_resource_name,
    custom_support_level=null,
    stages=null
  ):: std.prune(a={
    custom_support_level: custom_support_level,
    full_resource_name: full_resource_name,
    stages: stages,
  }),
  withCustomSupportLevel(dataSrcLabel, value):: {
    data+: {
      google_iam_testable_permissions+: {
        [dataSrcLabel]+: {
          custom_support_level: value,
        },
      },
    },
  },
  withFullResourceName(dataSrcLabel, value):: {
    data+: {
      google_iam_testable_permissions+: {
        [dataSrcLabel]+: {
          full_resource_name: value,
        },
      },
    },
  },
  withStages(dataSrcLabel, value):: {
    data+: {
      google_iam_testable_permissions+: {
        [dataSrcLabel]+: {
          stages: value,
        },
      },
    },
  },
}
