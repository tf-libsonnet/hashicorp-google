local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  accelerator_config:: {
    new(
      core_count,
      type
    ):: std.prune(a={
      core_count: core_count,
      type: type,
    }),
  },
  container_image:: {
    new(
      repository,
      tag=null
    ):: std.prune(a={
      repository: repository,
      tag: tag,
    }),
  },
  new(
    resourceLabel,
    location,
    machine_type,
    name,
    accelerator_config=null,
    boot_disk_size_gb=null,
    boot_disk_type=null,
    container_image=null,
    create_time=null,
    custom_gpu_driver_path=null,
    data_disk_size_gb=null,
    data_disk_type=null,
    disk_encryption=null,
    install_gpu_driver=null,
    instance_owners=null,
    kms_key=null,
    labels=null,
    metadata=null,
    network=null,
    nic_type=null,
    no_proxy_access=null,
    no_public_ip=null,
    no_remove_data_disk=null,
    post_startup_script=null,
    project=null,
    reservation_affinity=null,
    service_account=null,
    service_account_scopes=null,
    shielded_instance_config=null,
    subnet=null,
    tags=null,
    timeouts=null,
    update_time=null,
    vm_image=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      accelerator_config=accelerator_config,
      boot_disk_size_gb=boot_disk_size_gb,
      boot_disk_type=boot_disk_type,
      container_image=container_image,
      create_time=create_time,
      custom_gpu_driver_path=custom_gpu_driver_path,
      data_disk_size_gb=data_disk_size_gb,
      data_disk_type=data_disk_type,
      disk_encryption=disk_encryption,
      install_gpu_driver=install_gpu_driver,
      instance_owners=instance_owners,
      kms_key=kms_key,
      labels=labels,
      location=location,
      machine_type=machine_type,
      metadata=metadata,
      name=name,
      network=network,
      nic_type=nic_type,
      no_proxy_access=no_proxy_access,
      no_public_ip=no_public_ip,
      no_remove_data_disk=no_remove_data_disk,
      post_startup_script=post_startup_script,
      project=project,
      reservation_affinity=reservation_affinity,
      service_account=service_account,
      service_account_scopes=service_account_scopes,
      shielded_instance_config=shielded_instance_config,
      subnet=subnet,
      tags=tags,
      timeouts=timeouts,
      update_time=update_time,
      vm_image=vm_image
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    machine_type,
    name,
    accelerator_config=null,
    boot_disk_size_gb=null,
    boot_disk_type=null,
    container_image=null,
    create_time=null,
    custom_gpu_driver_path=null,
    data_disk_size_gb=null,
    data_disk_type=null,
    disk_encryption=null,
    install_gpu_driver=null,
    instance_owners=null,
    kms_key=null,
    labels=null,
    metadata=null,
    network=null,
    nic_type=null,
    no_proxy_access=null,
    no_public_ip=null,
    no_remove_data_disk=null,
    post_startup_script=null,
    project=null,
    reservation_affinity=null,
    service_account=null,
    service_account_scopes=null,
    shielded_instance_config=null,
    subnet=null,
    tags=null,
    timeouts=null,
    update_time=null,
    vm_image=null
  ):: std.prune(a={
    accelerator_config: accelerator_config,
    boot_disk_size_gb: boot_disk_size_gb,
    boot_disk_type: boot_disk_type,
    container_image: container_image,
    create_time: create_time,
    custom_gpu_driver_path: custom_gpu_driver_path,
    data_disk_size_gb: data_disk_size_gb,
    data_disk_type: data_disk_type,
    disk_encryption: disk_encryption,
    install_gpu_driver: install_gpu_driver,
    instance_owners: instance_owners,
    kms_key: kms_key,
    labels: labels,
    location: location,
    machine_type: machine_type,
    metadata: metadata,
    name: name,
    network: network,
    nic_type: nic_type,
    no_proxy_access: no_proxy_access,
    no_public_ip: no_public_ip,
    no_remove_data_disk: no_remove_data_disk,
    post_startup_script: post_startup_script,
    project: project,
    reservation_affinity: reservation_affinity,
    service_account: service_account,
    service_account_scopes: service_account_scopes,
    shielded_instance_config: shielded_instance_config,
    subnet: subnet,
    tags: tags,
    timeouts: timeouts,
    update_time: update_time,
    vm_image: vm_image,
  }),
  reservation_affinity:: {
    new(
      consume_reservation_type,
      key=null,
      values=null
    ):: std.prune(a={
      consume_reservation_type: consume_reservation_type,
      key: key,
      values: values,
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
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  vm_image:: {
    new(
      project,
      image_family=null,
      image_name=null
    ):: std.prune(a={
      image_family: image_family,
      image_name: image_name,
      project: project,
    }),
  },
  withAcceleratorConfig(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          accelerator_config: value,
        },
      },
    },
  },
  withAcceleratorConfigMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          accelerator_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBootDiskSizeGb(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          boot_disk_size_gb: value,
        },
      },
    },
  },
  withBootDiskType(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          boot_disk_type: value,
        },
      },
    },
  },
  withContainerImage(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          container_image: value,
        },
      },
    },
  },
  withContainerImageMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          container_image+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCreateTime(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          create_time: value,
        },
      },
    },
  },
  withCustomGpuDriverPath(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          custom_gpu_driver_path: value,
        },
      },
    },
  },
  withDataDiskSizeGb(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          data_disk_size_gb: value,
        },
      },
    },
  },
  withDataDiskType(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          data_disk_type: value,
        },
      },
    },
  },
  withDiskEncryption(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          disk_encryption: value,
        },
      },
    },
  },
  withInstallGpuDriver(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          install_gpu_driver: value,
        },
      },
    },
  },
  withInstanceOwners(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          instance_owners: value,
        },
      },
    },
  },
  withKmsKey(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          kms_key: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMachineType(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNicType(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          nic_type: value,
        },
      },
    },
  },
  withNoProxyAccess(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          no_proxy_access: value,
        },
      },
    },
  },
  withNoPublicIp(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          no_public_ip: value,
        },
      },
    },
  },
  withNoRemoveDataDisk(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          no_remove_data_disk: value,
        },
      },
    },
  },
  withPostStartupScript(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          post_startup_script: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReservationAffinity(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          reservation_affinity: value,
        },
      },
    },
  },
  withReservationAffinityMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          reservation_affinity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withServiceAccount(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  withServiceAccountScopes(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          service_account_scopes: value,
        },
      },
    },
  },
  withShieldedInstanceConfig(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          shielded_instance_config: value,
        },
      },
    },
  },
  withShieldedInstanceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          shielded_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSubnet(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          subnet: value,
        },
      },
    },
  },
  withTags(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUpdateTime(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          update_time: value,
        },
      },
    },
  },
  withVmImage(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          vm_image: value,
        },
      },
    },
  },
  withVmImageMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_instance+: {
        [resourceLabel]+: {
          vm_image+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
