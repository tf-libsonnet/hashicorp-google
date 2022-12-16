local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  binary_authorization:: {
    new(
      breakglass_justification=null,
      use_default=null
    ):: std.prune(a={
      breakglass_justification: breakglass_justification,
      use_default: use_default,
    }),
  },
  new(
    resourceLabel,
    name,
    binary_authorization=null,
    client=null,
    client_version=null,
    labels=null,
    launch_stage=null,
    location=null,
    project=null,
    template=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_run_v2_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      binary_authorization=binary_authorization,
      client=client,
      client_version=client_version,
      labels=labels,
      launch_stage=launch_stage,
      location=location,
      name=name,
      project=project,
      template=template,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    binary_authorization=null,
    client=null,
    client_version=null,
    labels=null,
    launch_stage=null,
    location=null,
    project=null,
    template=null,
    timeouts=null
  ):: std.prune(a={
    binary_authorization: binary_authorization,
    client: client,
    client_version: client_version,
    labels: labels,
    launch_stage: launch_stage,
    location: location,
    name: name,
    project: project,
    template: template,
    timeouts: timeouts,
  }),
  template:: {
    new(
      labels=null,
      parallelism=null,
      task_count=null,
      template=null
    ):: std.prune(a={
      labels: labels,
      parallelism: parallelism,
      task_count: task_count,
      template: template,
    }),
    template:: {
      containers:: {
        env:: {
          new(
            name,
            value=null,
            value_source=null
          ):: std.prune(a={
            name: name,
            value: value,
            value_source: value_source,
          }),
          value_source:: {
            new(
              secret_key_ref=null
            ):: std.prune(a={
              secret_key_ref: secret_key_ref,
            }),
            secret_key_ref:: {
              new(
                secret,
                version
              ):: std.prune(a={
                secret: secret,
                version: version,
              }),
            },
          },
        },
        liveness_probe:: {
          http_get:: {
            http_headers:: {
              new(
                name,
                value=null
              ):: std.prune(a={
                name: name,
                value: value,
              }),
            },
            new(
              http_headers=null,
              path=null
            ):: std.prune(a={
              http_headers: http_headers,
              path: path,
            }),
          },
          new(
            failure_threshold=null,
            http_get=null,
            initial_delay_seconds=null,
            period_seconds=null,
            tcp_socket=null,
            timeout_seconds=null
          ):: std.prune(a={
            failure_threshold: failure_threshold,
            http_get: http_get,
            initial_delay_seconds: initial_delay_seconds,
            period_seconds: period_seconds,
            tcp_socket: tcp_socket,
            timeout_seconds: timeout_seconds,
          }),
          tcp_socket:: {
            new(
              port=null
            ):: std.prune(a={
              port: port,
            }),
          },
        },
        new(
          image,
          args=null,
          command=null,
          env=null,
          liveness_probe=null,
          name=null,
          ports=null,
          resources=null,
          startup_probe=null,
          volume_mounts=null,
          working_dir=null
        ):: std.prune(a={
          args: args,
          command: command,
          env: env,
          image: image,
          liveness_probe: liveness_probe,
          name: name,
          ports: ports,
          resources: resources,
          startup_probe: startup_probe,
          volume_mounts: volume_mounts,
          working_dir: working_dir,
        }),
        ports:: {
          new(
            container_port=null,
            name=null
          ):: std.prune(a={
            container_port: container_port,
            name: name,
          }),
        },
        resources:: {
          new(
            limits=null
          ):: std.prune(a={
            limits: limits,
          }),
        },
        startup_probe:: {
          http_get:: {
            http_headers:: {
              new(
                name,
                value=null
              ):: std.prune(a={
                name: name,
                value: value,
              }),
            },
            new(
              http_headers=null,
              path=null
            ):: std.prune(a={
              http_headers: http_headers,
              path: path,
            }),
          },
          new(
            failure_threshold=null,
            http_get=null,
            initial_delay_seconds=null,
            period_seconds=null,
            tcp_socket=null,
            timeout_seconds=null
          ):: std.prune(a={
            failure_threshold: failure_threshold,
            http_get: http_get,
            initial_delay_seconds: initial_delay_seconds,
            period_seconds: period_seconds,
            tcp_socket: tcp_socket,
            timeout_seconds: timeout_seconds,
          }),
          tcp_socket:: {
            new(
              port=null
            ):: std.prune(a={
              port: port,
            }),
          },
        },
        volume_mounts:: {
          new(
            mount_path,
            name
          ):: std.prune(a={
            mount_path: mount_path,
            name: name,
          }),
        },
      },
      new(
        containers=null,
        encryption_key=null,
        execution_environment=null,
        max_retries=null,
        service_account=null,
        timeout=null,
        volumes=null,
        vpc_access=null
      ):: std.prune(a={
        containers: containers,
        encryption_key: encryption_key,
        execution_environment: execution_environment,
        max_retries: max_retries,
        service_account: service_account,
        timeout: timeout,
        volumes: volumes,
        vpc_access: vpc_access,
      }),
      volumes:: {
        cloud_sql_instance:: {
          new(
            instances=null
          ):: std.prune(a={
            instances: instances,
          }),
        },
        new(
          name,
          cloud_sql_instance=null,
          secret=null
        ):: std.prune(a={
          cloud_sql_instance: cloud_sql_instance,
          name: name,
          secret: secret,
        }),
        secret:: {
          items:: {
            new(
              mode,
              path,
              version
            ):: std.prune(a={
              mode: mode,
              path: path,
              version: version,
            }),
          },
          new(
            secret,
            default_mode=null,
            items=null
          ):: std.prune(a={
            default_mode: default_mode,
            items: items,
            secret: secret,
          }),
        },
      },
      vpc_access:: {
        new(
          connector=null,
          egress=null
        ):: std.prune(a={
          connector: connector,
          egress: egress,
        }),
      },
    },
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
  withBinaryAuthorization(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          binary_authorization: value,
        },
      },
    },
  },
  withBinaryAuthorizationMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          binary_authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withClient(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          client: value,
        },
      },
    },
  },
  withClientVersion(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          client_version: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLaunchStage(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          launch_stage: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTemplate(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          template: value,
        },
      },
    },
  },
  withTemplateMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          template+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_v2_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
