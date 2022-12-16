local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    name,
    project=null,
    time_zone=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_dataset',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      name=name,
      project=project,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    project=null,
    time_zone=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    name: name,
    project: project,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeZone(resourceLabel, value):: {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_dataset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
