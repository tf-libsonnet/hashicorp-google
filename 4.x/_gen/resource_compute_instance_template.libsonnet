local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  advanced_machine_features:: {
    new(
      enable_nested_virtualization=null,
      threads_per_core=null,
      visible_core_count=null
    ):: std.prune(a={
      enable_nested_virtualization: enable_nested_virtualization,
      threads_per_core: threads_per_core,
      visible_core_count: visible_core_count,
    }),
  },
  confidential_instance_config:: {
    new(
      enable_confidential_compute
    ):: std.prune(a={
      enable_confidential_compute: enable_confidential_compute,
    }),
  },
  disk:: {
    disk_encryption_key:: {
      new(
        kms_key_self_link
      ):: std.prune(a={
        kms_key_self_link: kms_key_self_link,
      }),
    },
    new(
      auto_delete=null,
      boot=null,
      device_name=null,
      disk_encryption_key=null,
      disk_name=null,
      disk_size_gb=null,
      disk_type=null,
      interface=null,
      labels=null,
      mode=null,
      resource_policies=null,
      source=null,
      source_image=null,
      type=null
    ):: std.prune(a={
      auto_delete: auto_delete,
      boot: boot,
      device_name: device_name,
      disk_encryption_key: disk_encryption_key,
      disk_name: disk_name,
      disk_size_gb: disk_size_gb,
      disk_type: disk_type,
      interface: interface,
      labels: labels,
      mode: mode,
      resource_policies: resource_policies,
      source: source,
      source_image: source_image,
      type: type,
    }),
  },
  guest_accelerator:: {
    new(
      count,
      type
    ):: std.prune(a={
      count: count,
      type: type,
    }),
  },
  network_interface:: {
    access_config:: {
      new(
        nat_ip=null,
        network_tier=null
      ):: std.prune(a={
        nat_ip: nat_ip,
        network_tier: network_tier,
      }),
    },
    alias_ip_range:: {
      new(
        ip_cidr_range,
        subnetwork_range_name=null
      ):: std.prune(a={
        ip_cidr_range: ip_cidr_range,
        subnetwork_range_name: subnetwork_range_name,
      }),
    },
    ipv6_access_config:: {
      new(
        network_tier
      ):: std.prune(a={
        network_tier: network_tier,
      }),
    },
    new(
      access_config=null,
      alias_ip_range=null,
      ipv6_access_config=null,
      network=null,
      network_ip=null,
      nic_type=null,
      queue_count=null,
      stack_type=null,
      subnetwork=null,
      subnetwork_project=null
    ):: std.prune(a={
      access_config: access_config,
      alias_ip_range: alias_ip_range,
      ipv6_access_config: ipv6_access_config,
      network: network,
      network_ip: network_ip,
      nic_type: nic_type,
      queue_count: queue_count,
      stack_type: stack_type,
      subnetwork: subnetwork,
      subnetwork_project: subnetwork_project,
    }),
  },
  new(
    resourceLabel,
    machine_type,
    advanced_machine_features=null,
    can_ip_forward=null,
    confidential_instance_config=null,
    description=null,
    disk=null,
    guest_accelerator=null,
    instance_description=null,
    labels=null,
    metadata=null,
    metadata_startup_script=null,
    min_cpu_platform=null,
    name=null,
    name_prefix=null,
    network_interface=null,
    project=null,
    region=null,
    reservation_affinity=null,
    scheduling=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      advanced_machine_features=advanced_machine_features,
      can_ip_forward=can_ip_forward,
      confidential_instance_config=confidential_instance_config,
      description=description,
      disk=disk,
      guest_accelerator=guest_accelerator,
      instance_description=instance_description,
      labels=labels,
      machine_type=machine_type,
      metadata=metadata,
      metadata_startup_script=metadata_startup_script,
      min_cpu_platform=min_cpu_platform,
      name=name,
      name_prefix=name_prefix,
      network_interface=network_interface,
      project=project,
      region=region,
      reservation_affinity=reservation_affinity,
      scheduling=scheduling,
      service_account=service_account,
      shielded_instance_config=shielded_instance_config,
      tags=tags,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    machine_type,
    advanced_machine_features=null,
    can_ip_forward=null,
    confidential_instance_config=null,
    description=null,
    disk=null,
    guest_accelerator=null,
    instance_description=null,
    labels=null,
    metadata=null,
    metadata_startup_script=null,
    min_cpu_platform=null,
    name=null,
    name_prefix=null,
    network_interface=null,
    project=null,
    region=null,
    reservation_affinity=null,
    scheduling=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null
  ):: std.prune(a={
    advanced_machine_features: advanced_machine_features,
    can_ip_forward: can_ip_forward,
    confidential_instance_config: confidential_instance_config,
    description: description,
    disk: disk,
    guest_accelerator: guest_accelerator,
    instance_description: instance_description,
    labels: labels,
    machine_type: machine_type,
    metadata: metadata,
    metadata_startup_script: metadata_startup_script,
    min_cpu_platform: min_cpu_platform,
    name: name,
    name_prefix: name_prefix,
    network_interface: network_interface,
    project: project,
    region: region,
    reservation_affinity: reservation_affinity,
    scheduling: scheduling,
    service_account: service_account,
    shielded_instance_config: shielded_instance_config,
    tags: tags,
    timeouts: timeouts,
  }),
  reservation_affinity:: {
    new(
      type,
      specific_reservation=null
    ):: std.prune(a={
      specific_reservation: specific_reservation,
      type: type,
    }),
    specific_reservation:: {
      new(
        key,
        values
      ):: std.prune(a={
        key: key,
        values: values,
      }),
    },
  },
  scheduling:: {
    new(
      automatic_restart=null,
      instance_termination_action=null,
      min_node_cpus=null,
      node_affinities=null,
      on_host_maintenance=null,
      preemptible=null,
      provisioning_model=null
    ):: std.prune(a={
      automatic_restart: automatic_restart,
      instance_termination_action: instance_termination_action,
      min_node_cpus: min_node_cpus,
      node_affinities: node_affinities,
      on_host_maintenance: on_host_maintenance,
      preemptible: preemptible,
      provisioning_model: provisioning_model,
    }),
    node_affinities:: {
      new(
        key,
        operator,
        values
      ):: std.prune(a={
        key: key,
        operator: operator,
        values: values,
      }),
    },
  },
  service_account:: {
    new(
      scopes,
      email=null
    ):: std.prune(a={
      email: email,
      scopes: scopes,
    }),
  },
  shielded_instance_config:: {
    new(
      enable_integrity_monitoring=null,
      enable_secure_boot=null,
      enable_vtpm=null
    ):: std.prune(a={
      enable_integrity_monitoring: enable_integrity_monitoring,
      enable_secure_boot: enable_secure_boot,
      enable_vtpm: enable_vtpm,
    }),
  },
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withAdvancedMachineFeatures(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          advanced_machine_features: value,
        },
      },
    },
  },
  withAdvancedMachineFeaturesMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          advanced_machine_features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCanIpForward(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          can_ip_forward: value,
        },
      },
    },
  },
  withConfidentialInstanceConfig(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          confidential_instance_config: value,
        },
      },
    },
  },
  withConfidentialInstanceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          confidential_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisk(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          disk: value,
        },
      },
    },
  },
  withDiskMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          disk+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGuestAccelerator(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          guest_accelerator: value,
        },
      },
    },
  },
  withGuestAcceleratorMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          guest_accelerator+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInstanceDescription(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          instance_description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMachineType(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withMetadataStartupScript(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          metadata_startup_script: value,
        },
      },
    },
  },
  withMinCpuPlatform(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          min_cpu_platform: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNamePrefix(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          name_prefix: value,
        },
      },
    },
  },
  withNetworkInterface(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          network_interface: value,
        },
      },
    },
  },
  withNetworkInterfaceMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          network_interface+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withReservationAffinity(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          reservation_affinity: value,
        },
      },
    },
  },
  withReservationAffinityMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          reservation_affinity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withScheduling(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          scheduling: value,
        },
      },
    },
  },
  withSchedulingMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          scheduling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withServiceAccount(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  withServiceAccountMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          service_account+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withShieldedInstanceConfig(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          shielded_instance_config: value,
        },
      },
    },
  },
  withShieldedInstanceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          shielded_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTags(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
