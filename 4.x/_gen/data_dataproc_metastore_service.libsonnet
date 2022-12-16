local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    location,
    service_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_dataproc_metastore_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, project=project, service_id=service_id),
    _meta=_meta
  ),
  newAttrs(
    location,
    service_id,
    project=null
  ):: std.prune(a={
    location: location,
    project: project,
    service_id: service_id,
  }),
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_dataproc_metastore_service+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_dataproc_metastore_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceId(dataSrcLabel, value):: {
    data+: {
      google_dataproc_metastore_service+: {
        [dataSrcLabel]+: {
          service_id: value,
        },
      },
    },
  },
}
