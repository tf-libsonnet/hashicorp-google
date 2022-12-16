local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    canonical_service,
    canonical_service_namespace,
    mesh_uid,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_istio_canonical_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      canonical_service=canonical_service,
      canonical_service_namespace=canonical_service_namespace,
      mesh_uid=mesh_uid,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    canonical_service,
    canonical_service_namespace,
    mesh_uid,
    project=null
  ):: std.prune(a={
    canonical_service: canonical_service,
    canonical_service_namespace: canonical_service_namespace,
    mesh_uid: mesh_uid,
    project: project,
  }),
  withCanonicalService(dataSrcLabel, value):: {
    data+: {
      google_monitoring_istio_canonical_service+: {
        [dataSrcLabel]+: {
          canonical_service: value,
        },
      },
    },
  },
  withCanonicalServiceNamespace(dataSrcLabel, value):: {
    data+: {
      google_monitoring_istio_canonical_service+: {
        [dataSrcLabel]+: {
          canonical_service_namespace: value,
        },
      },
    },
  },
  withMeshUid(dataSrcLabel, value):: {
    data+: {
      google_monitoring_istio_canonical_service+: {
        [dataSrcLabel]+: {
          mesh_uid: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_monitoring_istio_canonical_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
