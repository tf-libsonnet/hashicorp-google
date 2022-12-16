local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    digest=null,
    project=null,
    region=null,
    tag=null,
    _meta={}
  ):: tf.withData(
    type='google_container_registry_image',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      digest=digest,
      name=name,
      project=project,
      region=region,
      tag=tag
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    digest=null,
    project=null,
    region=null,
    tag=null
  ):: std.prune(a={
    digest: digest,
    name: name,
    project: project,
    region: region,
    tag: tag,
  }),
  withDigest(dataSrcLabel, value):: {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          digest: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(dataSrcLabel, value):: {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
  withTag(dataSrcLabel, value):: {
    data+: {
      google_container_registry_image+: {
        [dataSrcLabel]+: {
          tag: value,
        },
      },
    },
  },
}
