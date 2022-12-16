local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  aws:: {
    access_role:: {
      new(
        iam_role_id
      ):: std.prune(a={
        iam_role_id: iam_role_id,
      }),
    },
    new(
      access_role=null
    ):: std.prune(a={
      access_role: access_role,
    }),
  },
  azure:: {
    new(
      customer_tenant_id
    ):: std.prune(a={
      customer_tenant_id: customer_tenant_id,
    }),
  },
  cloud_resource:: {
    new(

    ):: std.prune(a={}),
  },
  cloud_spanner:: {
    new(
      database,
      use_parallelism=null
    ):: std.prune(a={
      database: database,
      use_parallelism: use_parallelism,
    }),
  },
  cloud_sql:: {
    credential:: {
      new(
        password,
        username
      ):: std.prune(a={
        password: password,
        username: username,
      }),
    },
    new(
      database,
      instance_id,
      type,
      credential=null
    ):: std.prune(a={
      credential: credential,
      database: database,
      instance_id: instance_id,
      type: type,
    }),
  },
  new(
    resourceLabel,
    aws=null,
    azure=null,
    cloud_resource=null,
    cloud_spanner=null,
    cloud_sql=null,
    connection_id=null,
    description=null,
    friendly_name=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      aws=aws,
      azure=azure,
      cloud_resource=cloud_resource,
      cloud_spanner=cloud_spanner,
      cloud_sql=cloud_sql,
      connection_id=connection_id,
      description=description,
      friendly_name=friendly_name,
      location=location,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    aws=null,
    azure=null,
    cloud_resource=null,
    cloud_spanner=null,
    cloud_sql=null,
    connection_id=null,
    description=null,
    friendly_name=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    aws: aws,
    azure: azure,
    cloud_resource: cloud_resource,
    cloud_spanner: cloud_spanner,
    cloud_sql: cloud_sql,
    connection_id: connection_id,
    description: description,
    friendly_name: friendly_name,
    location: location,
    project: project,
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
  withAws(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          aws: value,
        },
      },
    },
  },
  withAwsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          aws+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAzure(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          azure: value,
        },
      },
    },
  },
  withAzureMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          azure+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCloudResource(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_resource: value,
        },
      },
    },
  },
  withCloudResourceMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_resource+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCloudSpanner(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_spanner: value,
        },
      },
    },
  },
  withCloudSpannerMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_spanner+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCloudSql(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_sql: value,
        },
      },
    },
  },
  withCloudSqlMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_sql+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConnectionId(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          connection_id: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFriendlyName(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          friendly_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
