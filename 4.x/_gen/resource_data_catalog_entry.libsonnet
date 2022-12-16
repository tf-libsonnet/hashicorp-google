local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  gcs_fileset_spec:: {
    new(
      file_patterns
    ):: std.prune(a={
      file_patterns: file_patterns,
    }),
  },
  new(
    resourceLabel,
    entry_group,
    entry_id,
    description=null,
    display_name=null,
    gcs_fileset_spec=null,
    linked_resource=null,
    schema=null,
    timeouts=null,
    type=null,
    user_specified_system=null,
    user_specified_type=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_entry',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      entry_group=entry_group,
      entry_id=entry_id,
      gcs_fileset_spec=gcs_fileset_spec,
      linked_resource=linked_resource,
      schema=schema,
      timeouts=timeouts,
      type=type,
      user_specified_system=user_specified_system,
      user_specified_type=user_specified_type
    ),
    _meta=_meta
  ),
  newAttrs(
    entry_group,
    entry_id,
    description=null,
    display_name=null,
    gcs_fileset_spec=null,
    linked_resource=null,
    schema=null,
    timeouts=null,
    type=null,
    user_specified_system=null,
    user_specified_type=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    entry_group: entry_group,
    entry_id: entry_id,
    gcs_fileset_spec: gcs_fileset_spec,
    linked_resource: linked_resource,
    schema: schema,
    timeouts: timeouts,
    type: type,
    user_specified_system: user_specified_system,
    user_specified_type: user_specified_type,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEntryGroup(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          entry_group: value,
        },
      },
    },
  },
  withEntryId(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          entry_id: value,
        },
      },
    },
  },
  withGcsFilesetSpec(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          gcs_fileset_spec: value,
        },
      },
    },
  },
  withGcsFilesetSpecMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          gcs_fileset_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLinkedResource(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          linked_resource: value,
        },
      },
    },
  },
  withSchema(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          schema: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  withUserSpecifiedSystem(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          user_specified_system: value,
        },
      },
    },
  },
  withUserSpecifiedType(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry+: {
        [resourceLabel]+: {
          user_specified_type: value,
        },
      },
    },
  },
}
