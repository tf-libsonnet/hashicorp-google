local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  fields:: {
    new(
      field_id,
      description=null,
      display_name=null,
      is_required=null,
      order=null,
      type=null
    ):: std.prune(a={
      description: description,
      display_name: display_name,
      field_id: field_id,
      is_required: is_required,
      order: order,
      type: type,
    }),
    type:: {
      enum_type:: {
        allowed_values:: {
          new(
            display_name
          ):: std.prune(a={
            display_name: display_name,
          }),
        },
        new(
          allowed_values=null
        ):: std.prune(a={
          allowed_values: allowed_values,
        }),
      },
      new(
        enum_type=null,
        primitive_type=null
      ):: std.prune(a={
        enum_type: enum_type,
        primitive_type: primitive_type,
      }),
    },
  },
  new(
    resourceLabel,
    tag_template_id,
    display_name=null,
    fields=null,
    force_delete=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_tag_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      fields=fields,
      force_delete=force_delete,
      project=project,
      region=region,
      tag_template_id=tag_template_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    tag_template_id,
    display_name=null,
    fields=null,
    force_delete=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    fields: fields,
    force_delete: force_delete,
    project: project,
    region: region,
    tag_template_id: tag_template_id,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withFields(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          fields: value,
        },
      },
    },
  },
  withFieldsMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          fields+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withForceDelete(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          force_delete: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTagTemplateId(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          tag_template_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
