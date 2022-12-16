local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  crypto_key_config:: {
    new(
      key_reference
    ):: std.prune(a={
      key_reference: key_reference,
    }),
  },
  event_publish_config:: {
    new(
      enabled,
      topic
    ):: std.prune(a={
      enabled: enabled,
      topic: topic,
    }),
  },
  network_config:: {
    new(
      ip_allocation,
      network
    ):: std.prune(a={
      ip_allocation: ip_allocation,
      network: network,
    }),
  },
  new(
    resourceLabel,
    name,
    type,
    crypto_key_config=null,
    dataproc_service_account=null,
    description=null,
    display_name=null,
    enable_rbac=null,
    enable_stackdriver_logging=null,
    enable_stackdriver_monitoring=null,
    event_publish_config=null,
    labels=null,
    network_config=null,
    options=null,
    private_instance=null,
    project=null,
    region=null,
    timeouts=null,
    version=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_fusion_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      crypto_key_config=crypto_key_config,
      dataproc_service_account=dataproc_service_account,
      description=description,
      display_name=display_name,
      enable_rbac=enable_rbac,
      enable_stackdriver_logging=enable_stackdriver_logging,
      enable_stackdriver_monitoring=enable_stackdriver_monitoring,
      event_publish_config=event_publish_config,
      labels=labels,
      name=name,
      network_config=network_config,
      options=options,
      private_instance=private_instance,
      project=project,
      region=region,
      timeouts=timeouts,
      type=type,
      version=version,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    type,
    crypto_key_config=null,
    dataproc_service_account=null,
    description=null,
    display_name=null,
    enable_rbac=null,
    enable_stackdriver_logging=null,
    enable_stackdriver_monitoring=null,
    event_publish_config=null,
    labels=null,
    network_config=null,
    options=null,
    private_instance=null,
    project=null,
    region=null,
    timeouts=null,
    version=null,
    zone=null
  ):: std.prune(a={
    crypto_key_config: crypto_key_config,
    dataproc_service_account: dataproc_service_account,
    description: description,
    display_name: display_name,
    enable_rbac: enable_rbac,
    enable_stackdriver_logging: enable_stackdriver_logging,
    enable_stackdriver_monitoring: enable_stackdriver_monitoring,
    event_publish_config: event_publish_config,
    labels: labels,
    name: name,
    network_config: network_config,
    options: options,
    private_instance: private_instance,
    project: project,
    region: region,
    timeouts: timeouts,
    type: type,
    version: version,
    zone: zone,
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
  withCryptoKeyConfig(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          crypto_key_config: value,
        },
      },
    },
  },
  withCryptoKeyConfigMixin(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          crypto_key_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDataprocServiceAccount(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          dataproc_service_account: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnableRbac(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          enable_rbac: value,
        },
      },
    },
  },
  withEnableStackdriverLogging(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          enable_stackdriver_logging: value,
        },
      },
    },
  },
  withEnableStackdriverMonitoring(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          enable_stackdriver_monitoring: value,
        },
      },
    },
  },
  withEventPublishConfig(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          event_publish_config: value,
        },
      },
    },
  },
  withEventPublishConfigMixin(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          event_publish_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetworkConfig(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  withNetworkConfigMixin(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withOptions(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          options: value,
        },
      },
    },
  },
  withPrivateInstance(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          private_instance: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_data_fusion_instance+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
