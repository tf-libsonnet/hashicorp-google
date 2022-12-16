local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    cluster_name,
    location,
    service_name,
    service_namespace,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_cluster_istio_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      cluster_name=cluster_name,
      location=location,
      project=project,
      service_name=service_name,
      service_namespace=service_namespace
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster_name,
    location,
    service_name,
    service_namespace,
    project=null
  ):: std.prune(a={
    cluster_name: cluster_name,
    location: location,
    project: project,
    service_name: service_name,
    service_namespace: service_namespace,
  }),
  withClusterName(dataSrcLabel, value):: {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          cluster_name: value,
        },
      },
    },
  },
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceName(dataSrcLabel, value):: {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          service_name: value,
        },
      },
    },
  },
  withServiceNamespace(dataSrcLabel, value):: {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          service_namespace: value,
        },
      },
    },
  },
}
