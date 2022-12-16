local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    instance,
    port,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_instance_serial_port',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      instance=instance,
      port=port,
      project=project,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    port,
    project=null,
    zone=null
  ):: std.prune(a={
    instance: instance,
    port: port,
    project: project,
    zone: zone,
  }),
  withInstance(dataSrcLabel, value):: {
    data+: {
      google_compute_instance_serial_port+: {
        [dataSrcLabel]+: {
          instance: value,
        },
      },
    },
  },
  withPort(dataSrcLabel, value):: {
    data+: {
      google_compute_instance_serial_port+: {
        [dataSrcLabel]+: {
          port: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_instance_serial_port+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withZone(dataSrcLabel, value):: {
    data+: {
      google_compute_instance_serial_port+: {
        [dataSrcLabel]+: {
          zone: value,
        },
      },
    },
  },
}
