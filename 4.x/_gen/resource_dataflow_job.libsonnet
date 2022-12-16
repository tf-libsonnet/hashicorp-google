local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    temp_gcs_location,
    template_gcs_path,
    additional_experiments=null,
    enable_streaming_engine=null,
    ip_configuration=null,
    kms_key_name=null,
    labels=null,
    machine_type=null,
    max_workers=null,
    network=null,
    on_delete=null,
    parameters=null,
    project=null,
    region=null,
    service_account_email=null,
    skip_wait_on_job_termination=null,
    subnetwork=null,
    timeouts=null,
    transform_name_mapping=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataflow_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      additional_experiments=additional_experiments,
      enable_streaming_engine=enable_streaming_engine,
      ip_configuration=ip_configuration,
      kms_key_name=kms_key_name,
      labels=labels,
      machine_type=machine_type,
      max_workers=max_workers,
      name=name,
      network=network,
      on_delete=on_delete,
      parameters=parameters,
      project=project,
      region=region,
      service_account_email=service_account_email,
      skip_wait_on_job_termination=skip_wait_on_job_termination,
      subnetwork=subnetwork,
      temp_gcs_location=temp_gcs_location,
      template_gcs_path=template_gcs_path,
      timeouts=timeouts,
      transform_name_mapping=transform_name_mapping,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    temp_gcs_location,
    template_gcs_path,
    additional_experiments=null,
    enable_streaming_engine=null,
    ip_configuration=null,
    kms_key_name=null,
    labels=null,
    machine_type=null,
    max_workers=null,
    network=null,
    on_delete=null,
    parameters=null,
    project=null,
    region=null,
    service_account_email=null,
    skip_wait_on_job_termination=null,
    subnetwork=null,
    timeouts=null,
    transform_name_mapping=null,
    zone=null
  ):: std.prune(a={
    additional_experiments: additional_experiments,
    enable_streaming_engine: enable_streaming_engine,
    ip_configuration: ip_configuration,
    kms_key_name: kms_key_name,
    labels: labels,
    machine_type: machine_type,
    max_workers: max_workers,
    name: name,
    network: network,
    on_delete: on_delete,
    parameters: parameters,
    project: project,
    region: region,
    service_account_email: service_account_email,
    skip_wait_on_job_termination: skip_wait_on_job_termination,
    subnetwork: subnetwork,
    temp_gcs_location: temp_gcs_location,
    template_gcs_path: template_gcs_path,
    timeouts: timeouts,
    transform_name_mapping: transform_name_mapping,
    zone: zone,
  }),
  timeouts:: {
    new(
      update=null
    ):: std.prune(a={
      update: update,
    }),
  },
  withAdditionalExperiments(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          additional_experiments: value,
        },
      },
    },
  },
  withEnableStreamingEngine(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          enable_streaming_engine: value,
        },
      },
    },
  },
  withIpConfiguration(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          ip_configuration: value,
        },
      },
    },
  },
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMachineType(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  withMaxWorkers(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          max_workers: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withOnDelete(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          on_delete: value,
        },
      },
    },
  },
  withParameters(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          parameters: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withServiceAccountEmail(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          service_account_email: value,
        },
      },
    },
  },
  withSkipWaitOnJobTermination(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          skip_wait_on_job_termination: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  withTempGcsLocation(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          temp_gcs_location: value,
        },
      },
    },
  },
  withTemplateGcsPath(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          template_gcs_path: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTransformNameMapping(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          transform_name_mapping: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_dataflow_job+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
