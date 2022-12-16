local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    project,
    kms_key_name=null,
    _meta={}
  ):: tf.withData(
    type='google_logging_project_cmek_settings',
    label=dataSrcLabel,
    attrs=self.newAttrs(kms_key_name=kms_key_name, project=project),
    _meta=_meta
  ),
  newAttrs(
    project,
    kms_key_name=null
  ):: std.prune(a={
    kms_key_name: kms_key_name,
    project: project,
  }),
  withKmsKeyName(dataSrcLabel, value):: {
    data+: {
      google_logging_project_cmek_settings+: {
        [dataSrcLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_logging_project_cmek_settings+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
