local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_registry',
    label=resourceLabel,
    attrs=self.newAttrs(location=location, project=project),
    _meta=_meta
  ),
  newAttrs(
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    project: project,
  }),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_registry+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_registry+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
