local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    zone,
    description=null,
    project=null,
    share_settings=null,
    specific_reservation=null,
    specific_reservation_required=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_reservation',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      name=name,
      project=project,
      share_settings=share_settings,
      specific_reservation=specific_reservation,
      specific_reservation_required=specific_reservation_required,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    zone,
    description=null,
    project=null,
    share_settings=null,
    specific_reservation=null,
    specific_reservation_required=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    name: name,
    project: project,
    share_settings: share_settings,
    specific_reservation: specific_reservation,
    specific_reservation_required: specific_reservation_required,
    timeouts: timeouts,
    zone: zone,
  }),
  share_settings:: {
    new(
      project_map=null,
      share_type=null
    ):: std.prune(a={
      project_map: project_map,
      share_type: share_type,
    }),
    project_map:: {
      new(
        project_id=null
      ):: std.prune(a={
        project_id: project_id,
      }),
    },
  },
  specific_reservation:: {
    instance_properties:: {
      guest_accelerators:: {
        new(
          accelerator_count,
          accelerator_type
        ):: std.prune(a={
          accelerator_count: accelerator_count,
          accelerator_type: accelerator_type,
        }),
      },
      local_ssds:: {
        new(
          disk_size_gb,
          interface=null
        ):: std.prune(a={
          disk_size_gb: disk_size_gb,
          interface: interface,
        }),
      },
      new(
        machine_type,
        guest_accelerators=null,
        local_ssds=null,
        min_cpu_platform=null
      ):: std.prune(a={
        guest_accelerators: guest_accelerators,
        local_ssds: local_ssds,
        machine_type: machine_type,
        min_cpu_platform: min_cpu_platform,
      }),
    },
    new(
      count,
      instance_properties=null
    ):: std.prune(a={
      count: count,
      instance_properties: instance_properties,
    }),
  },
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withShareSettings(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          share_settings: value,
        },
      },
    },
  },
  withShareSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          share_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSpecificReservation(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          specific_reservation: value,
        },
      },
    },
  },
  withSpecificReservationMixin(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          specific_reservation+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSpecificReservationRequired(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          specific_reservation_required: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
