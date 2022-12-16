local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    slot_capacity,
    concurrency=null,
    ignore_idle_slots=null,
    location=null,
    multi_region_auxiliary=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_reservation',
    label=resourceLabel,
    attrs=self.newAttrs(
      concurrency=concurrency,
      ignore_idle_slots=ignore_idle_slots,
      location=location,
      multi_region_auxiliary=multi_region_auxiliary,
      name=name,
      project=project,
      slot_capacity=slot_capacity,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    slot_capacity,
    concurrency=null,
    ignore_idle_slots=null,
    location=null,
    multi_region_auxiliary=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    concurrency: concurrency,
    ignore_idle_slots: ignore_idle_slots,
    location: location,
    multi_region_auxiliary: multi_region_auxiliary,
    name: name,
    project: project,
    slot_capacity: slot_capacity,
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
  withConcurrency(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          concurrency: value,
        },
      },
    },
  },
  withIgnoreIdleSlots(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          ignore_idle_slots: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMultiRegionAuxiliary(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          multi_region_auxiliary: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSlotCapacity(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          slot_capacity: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_reservation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
