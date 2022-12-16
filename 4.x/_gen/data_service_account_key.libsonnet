local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    project=null,
    public_key_type=null,
    _meta={}
  ):: tf.withData(
    type='google_service_account_key',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, project=project, public_key_type=public_key_type),
    _meta=_meta
  ),
  newAttrs(
    name,
    project=null,
    public_key_type=null
  ):: std.prune(a={
    name: name,
    project: project,
    public_key_type: public_key_type,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_service_account_key+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_service_account_key+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withPublicKeyType(dataSrcLabel, value):: {
    data+: {
      google_service_account_key+: {
        [dataSrcLabel]+: {
          public_key_type: value,
        },
      },
    },
  },
}
