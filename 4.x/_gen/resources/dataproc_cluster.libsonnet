local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataproc_cluster', url='', help='`dataproc_cluster` represents the `google_dataproc_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  cluster_config:: {
    autoscaling_config:: {
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.autoscaling_config.new` constructs a new object with attributes and blocks configured for the `autoscaling_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `policy_uri` (`string`): The autoscaling policy used by the cluster.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling_config` sub block.\n', args=[]),
      new(
        policy_uri
      ):: std.prune(a={
        policy_uri: policy_uri,
      }),
    },
    encryption_config:: {
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    endpoint_config:: {
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.endpoint_config.new` constructs a new object with attributes and blocks configured for the `endpoint_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_http_port_access` (`bool`): The flag to enable http access to specific ports on the cluster from external sources (aka Component Gateway). Defaults to false.\n\n**Returns**:\n  - An attribute object that represents the `endpoint_config` sub block.\n', args=[]),
      new(
        enable_http_port_access
      ):: std.prune(a={
        enable_http_port_access: enable_http_port_access,
      }),
    },
    gce_cluster_config:: {
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.gce_cluster_config.new` constructs a new object with attributes and blocks configured for the `gce_cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `internal_ip_only` (`bool`): By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. If set to true, all instances in the cluster will only have internal IP addresses. Note: Private Google Access (also known as privateIpGoogleAccess) must be enabled on the subnetwork that the cluster will be launched in. When `null`, the `internal_ip_only` field will be omitted from the resulting object.\n  - `metadata` (`obj`): A map of the Compute Engine metadata entries to add to all instances When `null`, the `metadata` field will be omitted from the resulting object.\n  - `network` (`string`): The name or self_link of the Google Compute Engine network to the cluster will be part of. Conflicts with subnetwork. If neither is specified, this defaults to the &#34;default&#34; network. When `null`, the `network` field will be omitted from the resulting object.\n  - `service_account` (`string`): The service account to be used by the Node VMs. If not specified, the &#34;default&#34; service account is used. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `service_account_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs under the service_account specified. These can be either FQDNs, or scope aliases. When `null`, the `service_account_scopes` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The name or self_link of the Google Compute Engine subnetwork the cluster will be part of. Conflicts with network. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `tags` (`list`): The list of instance tags applied to instances in the cluster. Tags are used to identify valid sources or targets for network firewalls. When `null`, the `tags` field will be omitted from the resulting object.\n  - `zone` (`string`): The GCP zone where your data is stored and used (i.e. where the master and the worker nodes will be created in). If region is set to &#39;global&#39; (default) then zone is mandatory, otherwise GCP is able to make use of Auto Zone Placement to determine this automatically for you. Note: This setting additionally determines and restricts which computing resources are available for use with other configs such as cluster_config.master_config.machine_type and cluster_config.worker_config.machine_type. When `null`, the `zone` field will be omitted from the resulting object.\n  - `shielded_instance_config` (`list[obj]`): Shielded Instance Config for clusters using Compute Engine Shielded VMs. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.gce_cluster_config.shielded_instance_config.new](#fn-dataproc_clustercluster_configshielded_instance_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `gce_cluster_config` sub block.\n', args=[]),
      new(
        internal_ip_only=null,
        metadata=null,
        network=null,
        service_account=null,
        service_account_scopes=null,
        shielded_instance_config=null,
        subnetwork=null,
        tags=null,
        zone=null
      ):: std.prune(a={
        internal_ip_only: internal_ip_only,
        metadata: metadata,
        network: network,
        service_account: service_account,
        service_account_scopes: service_account_scopes,
        shielded_instance_config: shielded_instance_config,
        subnetwork: subnetwork,
        tags: tags,
        zone: zone,
      }),
      shielded_instance_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.gce_cluster_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Defines whether instances have integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Defines whether instances have Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n  - `enable_vtpm` (`bool`): Defines whether instances have the vTPM enabled. When `null`, the `enable_vtpm` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
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
    },
    initialization_action:: {
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.initialization_action.new` constructs a new object with attributes and blocks configured for the `initialization_action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `script` (`string`): The script to be executed during initialization of the cluster. The script must be a GCS file with a gs:// prefix.\n  - `timeout_sec` (`number`): The maximum duration (in seconds) which script is allowed to take to execute its action. GCP will default to a predetermined computed value if not set (currently 300). When `null`, the `timeout_sec` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `initialization_action` sub block.\n', args=[]),
      new(
        script,
        timeout_sec=null
      ):: std.prune(a={
        script: script,
        timeout_sec: timeout_sec,
      }),
    },
    lifecycle_config:: {
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.lifecycle_config.new` constructs a new object with attributes and blocks configured for the `lifecycle_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_delete_time` (`string`): The time when cluster will be auto-deleted. A timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `auto_delete_time` field will be omitted from the resulting object.\n  - `idle_delete_ttl` (`string`): The duration to keep the cluster alive while idling (no jobs running). After this TTL, the cluster will be deleted. Valid range: [10m, 14d]. When `null`, the `idle_delete_ttl` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `lifecycle_config` sub block.\n', args=[]),
      new(
        auto_delete_time=null,
        idle_delete_ttl=null
      ):: std.prune(a={
        auto_delete_time: auto_delete_time,
        idle_delete_ttl: idle_delete_ttl,
      }),
    },
    master_config:: {
      accelerators:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.master_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`\nTerraform sub block.\n\n\n\n**Args**:\n  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8.\n  - `accelerator_type` (`string`): The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80.\n\n**Returns**:\n  - An attribute object that represents the `accelerators` sub block.\n', args=[]),
        new(
          accelerator_count,
          accelerator_type
        ):: std.prune(a={
          accelerator_count: accelerator_count,
          accelerator_type: accelerator_type,
        }),
      },
      disk_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.master_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.\n  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disk_config` sub block.\n', args=[]),
        new(
          boot_disk_size_gb=null,
          boot_disk_type=null,
          num_local_ssds=null
        ):: std.prune(a={
          boot_disk_size_gb: boot_disk_size_gb,
          boot_disk_type: boot_disk_type,
          num_local_ssds: num_local_ssds,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.master_config.new` constructs a new object with attributes and blocks configured for the `master_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image_uri` (`string`): The URI for the image to use for this master/worker When `null`, the `image_uri` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The name of a Google Compute Engine machine type to create for the master/worker When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): The name of a minimum generation of CPU family for the master/worker. If not specified, GCP will default to a predetermined computed value for each zone. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `num_instances` (`number`): Specifies the number of master/worker nodes to create. If not specified, GCP will default to a predetermined computed value. When `null`, the `num_instances` field will be omitted from the resulting object.\n  - `accelerators` (`list[obj]`): The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.master_config.accelerators.new](#fn-dataproc_clustercluster_configacceleratorsnew) constructor.\n  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.master_config.disk_config.new](#fn-dataproc_clustercluster_configdisk_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `master_config` sub block.\n', args=[]),
      new(
        accelerators=null,
        disk_config=null,
        image_uri=null,
        machine_type=null,
        min_cpu_platform=null,
        num_instances=null
      ):: std.prune(a={
        accelerators: accelerators,
        disk_config: disk_config,
        image_uri: image_uri,
        machine_type: machine_type,
        min_cpu_platform: min_cpu_platform,
        num_instances: num_instances,
      }),
    },
    metastore_config:: {
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.metastore_config.new` constructs a new object with attributes and blocks configured for the `metastore_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataproc_metastore_service` (`string`): Resource name of an existing Dataproc Metastore service.\n\n**Returns**:\n  - An attribute object that represents the `metastore_config` sub block.\n', args=[]),
      new(
        dataproc_metastore_service
      ):: std.prune(a={
        dataproc_metastore_service: dataproc_metastore_service,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.new` constructs a new object with attributes and blocks configured for the `cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `staging_bucket` (`string`): The Cloud Storage staging bucket used to stage files, such as Hadoop jars, between client machines and the cluster. Note: If you don&#39;t explicitly specify a staging_bucket then GCP will auto create / assign one for you. However, you are not guaranteed an auto generated bucket which is solely dedicated to your cluster; it may be shared with other clusters in the same region/zone also choosing to use the auto generation option. When `null`, the `staging_bucket` field will be omitted from the resulting object.\n  - `temp_bucket` (`string`): The Cloud Storage temp bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. Note: If you don&#39;t explicitly specify a temp_bucket then GCP will auto create / assign one for you. When `null`, the `temp_bucket` field will be omitted from the resulting object.\n  - `autoscaling_config` (`list[obj]`): The autoscaling policy config associated with the cluster. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.autoscaling_config.new](#fn-dataproc_clusterautoscaling_confignew) constructor.\n  - `encryption_config` (`list[obj]`): The Customer managed encryption keys settings for the cluster. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.encryption_config.new](#fn-dataproc_clusterencryption_confignew) constructor.\n  - `endpoint_config` (`list[obj]`): The config settings for port access on the cluster. Structure defined below. When `null`, the `endpoint_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.endpoint_config.new](#fn-dataproc_clusterendpoint_confignew) constructor.\n  - `gce_cluster_config` (`list[obj]`): Common config settings for resources of Google Compute Engine cluster instances, applicable to all instances in the cluster. When `null`, the `gce_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.gce_cluster_config.new](#fn-dataproc_clustergce_cluster_confignew) constructor.\n  - `initialization_action` (`list[obj]`): Commands to execute on each node after config is completed. You can specify multiple versions of these. When `null`, the `initialization_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.initialization_action.new](#fn-dataproc_clusterinitialization_actionnew) constructor.\n  - `lifecycle_config` (`list[obj]`): The settings for auto deletion cluster schedule. When `null`, the `lifecycle_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.lifecycle_config.new](#fn-dataproc_clusterlifecycle_confignew) constructor.\n  - `master_config` (`list[obj]`): The Google Compute Engine config settings for the master/worker instances in a cluster. When `null`, the `master_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.master_config.new](#fn-dataproc_clustermaster_confignew) constructor.\n  - `metastore_config` (`list[obj]`): Specifies a Metastore configuration. When `null`, the `metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.metastore_config.new](#fn-dataproc_clustermetastore_confignew) constructor.\n  - `preemptible_worker_config` (`list[obj]`): The Google Compute Engine config settings for the additional (aka preemptible) instances in a cluster. When `null`, the `preemptible_worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.preemptible_worker_config.new](#fn-dataproc_clusterpreemptible_worker_confignew) constructor.\n  - `security_config` (`list[obj]`): Security related configuration. When `null`, the `security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.security_config.new](#fn-dataproc_clustersecurity_confignew) constructor.\n  - `software_config` (`list[obj]`): The config settings for software inside the cluster. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.software_config.new](#fn-dataproc_clustersoftware_confignew) constructor.\n  - `worker_config` (`list[obj]`): The Google Compute Engine config settings for the master/worker instances in a cluster. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.worker_config.new](#fn-dataproc_clusterworker_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cluster_config` sub block.\n', args=[]),
    new(
      autoscaling_config=null,
      encryption_config=null,
      endpoint_config=null,
      gce_cluster_config=null,
      initialization_action=null,
      lifecycle_config=null,
      master_config=null,
      metastore_config=null,
      preemptible_worker_config=null,
      security_config=null,
      software_config=null,
      staging_bucket=null,
      temp_bucket=null,
      worker_config=null
    ):: std.prune(a={
      autoscaling_config: autoscaling_config,
      encryption_config: encryption_config,
      endpoint_config: endpoint_config,
      gce_cluster_config: gce_cluster_config,
      initialization_action: initialization_action,
      lifecycle_config: lifecycle_config,
      master_config: master_config,
      metastore_config: metastore_config,
      preemptible_worker_config: preemptible_worker_config,
      security_config: security_config,
      software_config: software_config,
      staging_bucket: staging_bucket,
      temp_bucket: temp_bucket,
      worker_config: worker_config,
    }),
    preemptible_worker_config:: {
      disk_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.preemptible_worker_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each preemptible worker node, specified in GB. The smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each preemptible worker node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.\n  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each preemptible worker node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disk_config` sub block.\n', args=[]),
        new(
          boot_disk_size_gb=null,
          boot_disk_type=null,
          num_local_ssds=null
        ):: std.prune(a={
          boot_disk_size_gb: boot_disk_size_gb,
          boot_disk_type: boot_disk_type,
          num_local_ssds: num_local_ssds,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.preemptible_worker_config.new` constructs a new object with attributes and blocks configured for the `preemptible_worker_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `num_instances` (`number`): Specifies the number of preemptible nodes to create. Defaults to 0. When `null`, the `num_instances` field will be omitted from the resulting object.\n  - `preemptibility` (`string`): Specifies the preemptibility of the secondary nodes. Defaults to PREEMPTIBLE. When `null`, the `preemptibility` field will be omitted from the resulting object.\n  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.preemptible_worker_config.disk_config.new](#fn-dataproc_clustercluster_configdisk_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `preemptible_worker_config` sub block.\n', args=[]),
      new(
        disk_config=null,
        num_instances=null,
        preemptibility=null
      ):: std.prune(a={
        disk_config: disk_config,
        num_instances: num_instances,
        preemptibility: preemptibility,
      }),
    },
    security_config:: {
      kerberos_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.security_config.kerberos_config.new` constructs a new object with attributes and blocks configured for the `kerberos_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cross_realm_trust_admin_server` (`string`): The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship. When `null`, the `cross_realm_trust_admin_server` field will be omitted from the resulting object.\n  - `cross_realm_trust_kdc` (`string`): The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship. When `null`, the `cross_realm_trust_kdc` field will be omitted from the resulting object.\n  - `cross_realm_trust_realm` (`string`): The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust. When `null`, the `cross_realm_trust_realm` field will be omitted from the resulting object.\n  - `cross_realm_trust_shared_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster\nKerberos realm and the remote trusted realm, in a cross realm trust relationship. When `null`, the `cross_realm_trust_shared_password_uri` field will be omitted from the resulting object.\n  - `enable_kerberos` (`bool`): Flag to indicate whether to Kerberize the cluster. When `null`, the `enable_kerberos` field will be omitted from the resulting object.\n  - `kdc_db_key_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database. When `null`, the `kdc_db_key_uri` field will be omitted from the resulting object.\n  - `key_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `key_password_uri` field will be omitted from the resulting object.\n  - `keystore_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing\nthe password to the user provided keystore. For the self-signed certificate, this password is generated\nby Dataproc When `null`, the `keystore_password_uri` field will be omitted from the resulting object.\n  - `keystore_uri` (`string`): The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. When `null`, the `keystore_uri` field will be omitted from the resulting object.\n  - `kms_key_uri` (`string`): The uri of the KMS key used to encrypt various sensitive files.\n  - `realm` (`string`): The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of hostnames will be the realm. When `null`, the `realm` field will be omitted from the resulting object.\n  - `root_principal_password_uri` (`string`): The cloud Storage URI of a KMS encrypted file containing the root principal password.\n  - `tgt_lifetime_hours` (`number`): The lifetime of the ticket granting ticket, in hours. When `null`, the `tgt_lifetime_hours` field will be omitted from the resulting object.\n  - `truststore_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `truststore_password_uri` field will be omitted from the resulting object.\n  - `truststore_uri` (`string`): The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. When `null`, the `truststore_uri` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `kerberos_config` sub block.\n', args=[]),
        new(
          kms_key_uri,
          root_principal_password_uri,
          cross_realm_trust_admin_server=null,
          cross_realm_trust_kdc=null,
          cross_realm_trust_realm=null,
          cross_realm_trust_shared_password_uri=null,
          enable_kerberos=null,
          kdc_db_key_uri=null,
          key_password_uri=null,
          keystore_password_uri=null,
          keystore_uri=null,
          realm=null,
          tgt_lifetime_hours=null,
          truststore_password_uri=null,
          truststore_uri=null
        ):: std.prune(a={
          cross_realm_trust_admin_server: cross_realm_trust_admin_server,
          cross_realm_trust_kdc: cross_realm_trust_kdc,
          cross_realm_trust_realm: cross_realm_trust_realm,
          cross_realm_trust_shared_password_uri: cross_realm_trust_shared_password_uri,
          enable_kerberos: enable_kerberos,
          kdc_db_key_uri: kdc_db_key_uri,
          key_password_uri: key_password_uri,
          keystore_password_uri: keystore_password_uri,
          keystore_uri: keystore_uri,
          kms_key_uri: kms_key_uri,
          realm: realm,
          root_principal_password_uri: root_principal_password_uri,
          tgt_lifetime_hours: tgt_lifetime_hours,
          truststore_password_uri: truststore_password_uri,
          truststore_uri: truststore_uri,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.security_config.new` constructs a new object with attributes and blocks configured for the `security_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kerberos_config` (`list[obj]`): Kerberos related configuration When `null`, the `kerberos_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.security_config.kerberos_config.new](#fn-dataproc_clustercluster_configkerberos_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `security_config` sub block.\n', args=[]),
      new(
        kerberos_config=null
      ):: std.prune(a={
        kerberos_config: kerberos_config,
      }),
    },
    software_config:: {
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.software_config.new` constructs a new object with attributes and blocks configured for the `software_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image_version` (`string`): The Cloud Dataproc image version to use for the cluster - this controls the sets of software versions installed onto the nodes when you create clusters. If not specified, defaults to the latest version. When `null`, the `image_version` field will be omitted from the resulting object.\n  - `optional_components` (`list`): The set of optional components to activate on the cluster. When `null`, the `optional_components` field will be omitted from the resulting object.\n  - `override_properties` (`obj`): A list of override and additional properties (key/value pairs) used to modify various aspects of the common configuration files used when creating a cluster. When `null`, the `override_properties` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `software_config` sub block.\n', args=[]),
      new(
        image_version=null,
        optional_components=null,
        override_properties=null
      ):: std.prune(a={
        image_version: image_version,
        optional_components: optional_components,
        override_properties: override_properties,
      }),
    },
    worker_config:: {
      accelerators:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.worker_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`\nTerraform sub block.\n\n\n\n**Args**:\n  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8.\n  - `accelerator_type` (`string`): The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80.\n\n**Returns**:\n  - An attribute object that represents the `accelerators` sub block.\n', args=[]),
        new(
          accelerator_count,
          accelerator_type
        ):: std.prune(a={
          accelerator_count: accelerator_count,
          accelerator_type: accelerator_type,
        }),
      },
      disk_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.worker_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.\n  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disk_config` sub block.\n', args=[]),
        new(
          boot_disk_size_gb=null,
          boot_disk_type=null,
          num_local_ssds=null
        ):: std.prune(a={
          boot_disk_size_gb: boot_disk_size_gb,
          boot_disk_type: boot_disk_type,
          num_local_ssds: num_local_ssds,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_cluster.cluster_config.worker_config.new` constructs a new object with attributes and blocks configured for the `worker_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image_uri` (`string`): The URI for the image to use for this master/worker When `null`, the `image_uri` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The name of a Google Compute Engine machine type to create for the master/worker When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): The name of a minimum generation of CPU family for the master/worker. If not specified, GCP will default to a predetermined computed value for each zone. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `num_instances` (`number`): Specifies the number of master/worker nodes to create. If not specified, GCP will default to a predetermined computed value. When `null`, the `num_instances` field will be omitted from the resulting object.\n  - `accelerators` (`list[obj]`): The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.worker_config.accelerators.new](#fn-dataproc_clustercluster_configacceleratorsnew) constructor.\n  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.worker_config.disk_config.new](#fn-dataproc_clustercluster_configdisk_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `worker_config` sub block.\n', args=[]),
      new(
        accelerators=null,
        disk_config=null,
        image_uri=null,
        machine_type=null,
        min_cpu_platform=null,
        num_instances=null
      ):: std.prune(a={
        accelerators: accelerators,
        disk_config: disk_config,
        image_uri: image_uri,
        machine_type: machine_type,
        min_cpu_platform: min_cpu_platform,
        num_instances: num_instances,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.dataproc_cluster.new` injects a new `google_dataproc_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataproc_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataproc_cluster` using the reference:\n\n    $._ref.google_dataproc_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataproc_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `graceful_decommission_timeout` (`string`): The timeout duration which allows graceful decomissioning when you change the number of worker nodes directly through a terraform apply When `null`, the `graceful_decommission_timeout` field will be omitted from the resulting object.\n  - `labels` (`obj`): The list of labels (key/value pairs) to be applied to instances in the cluster. GCP generates some itself including goog-dataproc-cluster-name which is the name of the cluster. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the cluster, unique within the project and zone.\n  - `project` (`string`): The ID of the project in which the cluster will exist. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the cluster and associated nodes will be created in. Defaults to global. When `null`, the `region` field will be omitted from the resulting object.\n  - `cluster_config` (`list[obj]`): Allows you to configure various aspects of the cluster. When `null`, the `cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.new](#fn-cluster_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n  - `virtual_cluster_config` (`list[obj]`): The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster. Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtualClusterConfig must be specified. When `null`, the `virtual_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.new](#fn-virtual_cluster_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    cluster_config=null,
    graceful_decommission_timeout=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    virtual_cluster_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster_config=cluster_config,
      graceful_decommission_timeout=graceful_decommission_timeout,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      virtual_cluster_config=virtual_cluster_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataproc_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_cluster`\nTerraform resource.\n\nUnlike [google.dataproc_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `graceful_decommission_timeout` (`string`): The timeout duration which allows graceful decomissioning when you change the number of worker nodes directly through a terraform apply When `null`, the `graceful_decommission_timeout` field will be omitted from the resulting object.\n  - `labels` (`obj`): The list of labels (key/value pairs) to be applied to instances in the cluster. GCP generates some itself including goog-dataproc-cluster-name which is the name of the cluster. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the cluster, unique within the project and zone.\n  - `project` (`string`): The ID of the project in which the cluster will exist. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region in which the cluster and associated nodes will be created in. Defaults to global. When `null`, the `region` field will be omitted from the resulting object.\n  - `cluster_config` (`list[obj]`): Allows you to configure various aspects of the cluster. When `null`, the `cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.cluster_config.new](#fn-cluster_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n  - `virtual_cluster_config` (`list[obj]`): The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster. Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtualClusterConfig must be specified. When `null`, the `virtual_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.new](#fn-virtual_cluster_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    cluster_config=null,
    graceful_decommission_timeout=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    virtual_cluster_config=null
  ):: std.prune(a={
    cluster_config: cluster_config,
    graceful_decommission_timeout: graceful_decommission_timeout,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    virtual_cluster_config: virtual_cluster_config,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataproc_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  virtual_cluster_config:: {
    auxiliary_services_config:: {
      metastore_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.metastore_config.new` constructs a new object with attributes and blocks configured for the `metastore_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataproc_metastore_service` (`string`): The Hive Metastore configuration for this workload. When `null`, the `dataproc_metastore_service` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `metastore_config` sub block.\n', args=[]),
        new(
          dataproc_metastore_service=null
        ):: std.prune(a={
          dataproc_metastore_service: dataproc_metastore_service,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.new` constructs a new object with attributes and blocks configured for the `auxiliary_services_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metastore_config` (`list[obj]`): The Hive Metastore configuration for this workload. When `null`, the `metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.metastore_config.new](#fn-dataproc_clustervirtual_cluster_configmetastore_confignew) constructor.\n  - `spark_history_server_config` (`list[obj]`): The Spark History Server configuration for the workload. When `null`, the `spark_history_server_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.spark_history_server_config.new](#fn-dataproc_clustervirtual_cluster_configspark_history_server_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `auxiliary_services_config` sub block.\n', args=[]),
      new(
        metastore_config=null,
        spark_history_server_config=null
      ):: std.prune(a={
        metastore_config: metastore_config,
        spark_history_server_config: spark_history_server_config,
      }),
      spark_history_server_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.spark_history_server_config.new` constructs a new object with attributes and blocks configured for the `spark_history_server_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataproc_cluster` (`string`): Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload. When `null`, the `dataproc_cluster` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `spark_history_server_config` sub block.\n', args=[]),
        new(
          dataproc_cluster=null
        ):: std.prune(a={
          dataproc_cluster: dataproc_cluster,
        }),
      },
    },
    kubernetes_cluster_config:: {
      gke_cluster_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.new` constructs a new object with attributes and blocks configured for the `gke_cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gke_cluster_target` (`string`): A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: &#39;projects/{project}/locations/{location}/clusters/{cluster_id}&#39; When `null`, the `gke_cluster_target` field will be omitted from the resulting object.\n  - `node_pool_target` (`list[obj]`): GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. When `null`, the `node_pool_target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.new](#fn-dataproc_clustervirtual_cluster_configkubernetes_cluster_confignode_pool_targetnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `gke_cluster_config` sub block.\n', args=[]),
        new(
          gke_cluster_target=null,
          node_pool_target=null
        ):: std.prune(a={
          gke_cluster_target: gke_cluster_target,
          node_pool_target: node_pool_target,
        }),
        node_pool_target:: {
          '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.new` constructs a new object with attributes and blocks configured for the `node_pool_target`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_pool` (`string`): The target GKE node pool. Format: &#39;projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{nodePool}&#39;\n  - `roles` (`list`): The roles associated with the GKE node pool.\n  - `node_pool_config` (`list[obj]`): Input only. The configuration for the GKE node pool. When `null`, the `node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.new](#fn-dataproc_clustervirtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_pool_target` sub block.\n', args=[]),
          new(
            node_pool,
            roles,
            node_pool_config=null
          ):: std.prune(a={
            node_pool: node_pool,
            node_pool_config: node_pool_config,
            roles: roles,
          }),
          node_pool_config:: {
            autoscaling:: {
              '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_node_count` (`number`): The maximum number of nodes in the node pool. Must be &gt;= minNodeCount, and must be &gt; 0. When `null`, the `max_node_count` field will be omitted from the resulting object.\n  - `min_node_count` (`number`): The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= maxNodeCount. When `null`, the `min_node_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling` sub block.\n', args=[]),
              new(
                max_node_count=null,
                min_node_count=null
              ):: std.prune(a={
                max_node_count: max_node_count,
                min_node_count: min_node_count,
              }),
            },
            config:: {
              '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `local_ssd_count` (`number`): The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= maxNodeCount. When `null`, the `local_ssd_count` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The name of a Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as &#34;Intel Haswell&#34; or &#34;Intel Sandy Bridge&#34;. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `preemptible` (`bool`): Whether the nodes are created as preemptible VM instances. Preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role). When `null`, the `preemptible` field will be omitted from the resulting object.\n  - `spot` (`bool`): Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag. When `null`, the `spot` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
              new(
                local_ssd_count=null,
                machine_type=null,
                min_cpu_platform=null,
                preemptible=null,
                spot=null
              ):: std.prune(a={
                local_ssd_count: local_ssd_count,
                machine_type: machine_type,
                min_cpu_platform: min_cpu_platform,
                preemptible: preemptible,
                spot: spot,
              }),
            },
            '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.new` constructs a new object with attributes and blocks configured for the `node_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `locations` (`list`): The list of Compute Engine zones where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.\n  - `autoscaling` (`list[obj]`): The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.autoscaling.new](#fn-dataproc_clustervirtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetautoscalingnew) constructor.\n  - `config` (`list[obj]`): The node pool configuration. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.node_pool_target.node_pool_config.config.new](#fn-dataproc_clustervirtual_cluster_configkubernetes_cluster_configgke_cluster_confignode_pool_targetconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_pool_config` sub block.\n', args=[]),
            new(
              locations,
              autoscaling=null,
              config=null
            ):: std.prune(a={
              autoscaling: autoscaling,
              config: config,
              locations: locations,
            }),
          },
        },
      },
      kubernetes_software_config:: {
        '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config.new` constructs a new object with attributes and blocks configured for the `kubernetes_software_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `component_version` (`obj`): The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed.\n  - `properties` (`obj`): The properties to set on daemon config files. Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. When `null`, the `properties` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `kubernetes_software_config` sub block.\n', args=[]),
        new(
          component_version,
          properties=null
        ):: std.prune(a={
          component_version: component_version,
          properties: properties,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.new` constructs a new object with attributes and blocks configured for the `kubernetes_cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kubernetes_namespace` (`string`): A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used. When `null`, the `kubernetes_namespace` field will be omitted from the resulting object.\n  - `gke_cluster_config` (`list[obj]`): The configuration for running the Dataproc cluster on GKE. When `null`, the `gke_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.gke_cluster_config.new](#fn-dataproc_clustervirtual_cluster_configgke_cluster_confignew) constructor.\n  - `kubernetes_software_config` (`list[obj]`): The software configuration for this Dataproc cluster running on Kubernetes. When `null`, the `kubernetes_software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.kubernetes_software_config.new](#fn-dataproc_clustervirtual_cluster_configkubernetes_software_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `kubernetes_cluster_config` sub block.\n', args=[]),
      new(
        gke_cluster_config=null,
        kubernetes_namespace=null,
        kubernetes_software_config=null
      ):: std.prune(a={
        gke_cluster_config: gke_cluster_config,
        kubernetes_namespace: kubernetes_namespace,
        kubernetes_software_config: kubernetes_software_config,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_cluster.virtual_cluster_config.new` constructs a new object with attributes and blocks configured for the `virtual_cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `staging_bucket` (`string`): A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster&#39;s staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. When `null`, the `staging_bucket` field will be omitted from the resulting object.\n  - `auxiliary_services_config` (`list[obj]`): Auxiliary services configuration for a Cluster. When `null`, the `auxiliary_services_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.auxiliary_services_config.new](#fn-dataproc_clusterauxiliary_services_confignew) constructor.\n  - `kubernetes_cluster_config` (`list[obj]`): The configuration for running the Dataproc cluster on Kubernetes. When `null`, the `kubernetes_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_cluster.virtual_cluster_config.kubernetes_cluster_config.new](#fn-dataproc_clusterkubernetes_cluster_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `virtual_cluster_config` sub block.\n', args=[]),
    new(
      auxiliary_services_config=null,
      kubernetes_cluster_config=null,
      staging_bucket=null
    ):: std.prune(a={
      auxiliary_services_config: auxiliary_services_config,
      kubernetes_cluster_config: kubernetes_cluster_config,
      staging_bucket: staging_bucket,
    }),
  },
  '#withClusterConfig':: d.fn(help='`google.list[obj].withClusterConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withClusterConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster_config` field.\n', args=[]),
  withClusterConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          cluster_config: value,
        },
      },
    },
  },
  '#withClusterConfigMixin':: d.fn(help='`google.list[obj].withClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withClusterConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster_config` field.\n', args=[]),
  withClusterConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          cluster_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGracefulDecommissionTimeout':: d.fn(help='`google.string.withGracefulDecommissionTimeout` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the graceful_decommission_timeout field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `graceful_decommission_timeout` field.\n', args=[]),
  withGracefulDecommissionTimeout(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          graceful_decommission_timeout: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVirtualClusterConfig':: d.fn(help='`google.list[obj].withVirtualClusterConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the virtual_cluster_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVirtualClusterConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `virtual_cluster_config` field.\n', args=[]),
  withVirtualClusterConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          virtual_cluster_config: value,
        },
      },
    },
  },
  '#withVirtualClusterConfigMixin':: d.fn(help='`google.list[obj].withVirtualClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the virtual_cluster_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVirtualClusterConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `virtual_cluster_config` field.\n', args=[]),
  withVirtualClusterConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_cluster+: {
        [resourceLabel]+: {
          virtual_cluster_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
