local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    assignee,
    job_type,
    reservation,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_reservation_assignment',
    label=resourceLabel,
    attrs=self.newAttrs(
      assignee=assignee,
      job_type=job_type,
      location=location,
      project=project,
      reservation=reservation,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    assignee,
    job_type,
    reservation,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    assignee: assignee,
    job_type: job_type,
    location: location,
    project: project,
    reservation: reservation,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withAssignee(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          assignee: value,
        },
      },
    },
  },
  withJobType(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          job_type: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReservation(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          reservation: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
