local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    mesh_uid,
    service_name,
    service_namespace,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_mesh_istio_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      mesh_uid=mesh_uid,
      project=project,
      service_name=service_name,
      service_namespace=service_namespace
    ),
    _meta=_meta
  ),
  newAttrs(
    mesh_uid,
    service_name,
    service_namespace,
    project=null
  ):: std.prune(a={
    mesh_uid: mesh_uid,
    project: project,
    service_name: service_name,
    service_namespace: service_namespace,
  }),
  withMeshUid(dataSrcLabel, value):: {
    data+: {
      google_monitoring_mesh_istio_service+: {
        [dataSrcLabel]+: {
          mesh_uid: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_monitoring_mesh_istio_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceName(dataSrcLabel, value):: {
    data+: {
      google_monitoring_mesh_istio_service+: {
        [dataSrcLabel]+: {
          service_name: value,
        },
      },
    },
  },
  withServiceNamespace(dataSrcLabel, value):: {
    data+: {
      google_monitoring_mesh_istio_service+: {
        [dataSrcLabel]+: {
          service_namespace: value,
        },
      },
    },
  },
}
