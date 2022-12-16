local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  fields:: {
    new(
      field_name,
      bool_value=null,
      double_value=null,
      enum_value=null,
      string_value=null,
      timestamp_value=null
    ):: std.prune(a={
      bool_value: bool_value,
      double_value: double_value,
      enum_value: enum_value,
      field_name: field_name,
      string_value: string_value,
      timestamp_value: timestamp_value,
    }),
  },
  new(
    resourceLabel,
    template,
    column=null,
    fields=null,
    parent=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_tag',
    label=resourceLabel,
    attrs=self.newAttrs(
      column=column,
      fields=fields,
      parent=parent,
      template=template,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    template,
    column=null,
    fields=null,
    parent=null,
    timeouts=null
  ):: std.prune(a={
    column: column,
    fields: fields,
    parent: parent,
    template: template,
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
  withColumn(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          column: value,
        },
      },
    },
  },
  withFields(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          fields: value,
        },
      },
    },
  },
  withFieldsMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          fields+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTemplate(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          template: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
