local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='composer_environment', url='', help='`composer_environment` represents the `google_composer_environment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  config:: {
    database_config:: {
      '#new':: d.fn(help='\n`google.composer_environment.config.database_config.new` constructs a new object with attributes and blocks configured for the `database_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `machine_type` (`string`): Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.\n\n**Returns**:\n  - An attribute object that represents the `database_config` sub block.\n', args=[]),
      new(
        machine_type
      ):: std.prune(a={
        machine_type: machine_type,
      }),
    },
    encryption_config:: {
      '#new':: d.fn(help='\n`google.composer_environment.config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Optional. Customer-managed Encryption Key available through Google&#39;s Key Management Service. Cannot be updated.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
      new(
        kms_key_name
      ):: std.prune(a={
        kms_key_name: kms_key_name,
      }),
    },
    maintenance_window:: {
      '#new':: d.fn(help='\n`google.composer_environment.config.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end_time` (`string`): Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end-time must be in the future, relative to &#39;start_time&#39;.\n  - `recurrence` (`string`): Maintenance window recurrence. Format is a subset of RFC-5545 (https://tools.ietf.org/html/rfc5545) &#39;RRULE&#39;. The only allowed values for &#39;FREQ&#39; field are &#39;FREQ=DAILY&#39; and &#39;FREQ=WEEKLY;BYDAY=...&#39;. Example values: &#39;FREQ=WEEKLY;BYDAY=TU,WE&#39;, &#39;FREQ=DAILY&#39;.\n  - `start_time` (`string`): Start time of the first recurrence of the maintenance window.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_window` sub block.\n', args=[]),
      new(
        end_time,
        recurrence,
        start_time
      ):: std.prune(a={
        end_time: end_time,
        recurrence: recurrence,
        start_time: start_time,
      }),
    },
    master_authorized_networks_config:: {
      cidr_blocks:: {
        '#new':: d.fn(help='\n`google.composer_environment.config.master_authorized_networks_config.cidr_blocks.new` constructs a new object with attributes and blocks configured for the `cidr_blocks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cidr_block` (`string`): cidr_block must be specified in CIDR notation.\n  - `display_name` (`string`): display_name is a field for users to identify CIDR blocks. When `null`, the `display_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cidr_blocks` sub block.\n', args=[]),
        new(
          cidr_block,
          display_name=null
        ):: std.prune(a={
          cidr_block: cidr_block,
          display_name: display_name,
        }),
      },
      '#new':: d.fn(help='\n`google.composer_environment.config.master_authorized_networks_config.new` constructs a new object with attributes and blocks configured for the `master_authorized_networks_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether or not master authorized networks is enabled.\n  - `cidr_blocks` (`list[obj]`): cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS. When `null`, the `cidr_blocks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.master_authorized_networks_config.cidr_blocks.new](#fn-master_authorized_networks_configcidr_blocksnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `master_authorized_networks_config` sub block.\n', args=[]),
      new(
        enabled,
        cidr_blocks=null
      ):: std.prune(a={
        cidr_blocks: cidr_blocks,
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.composer_environment.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `environment_size` (`string`): The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. When `null`, the `environment_size` field will be omitted from the resulting object.\n  - `node_count` (`number`): The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `node_count` field will be omitted from the resulting object.\n  - `database_config` (`list[obj]`): The configuration of Cloud SQL instance that is used by the Apache Airflow software. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `database_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.database_config.new](#fn-configdatabase_confignew) constructor.\n  - `encryption_config` (`list[obj]`): The encryption options for the Composer environment and its dependencies. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.encryption_config.new](#fn-configencryption_confignew) constructor.\n  - `maintenance_window` (`list[obj]`): The configuration for Cloud Composer maintenance window. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.maintenance_window.new](#fn-configmaintenance_windownew) constructor.\n  - `master_authorized_networks_config` (`list[obj]`): Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs. When `null`, the `master_authorized_networks_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.master_authorized_networks_config.new](#fn-configmaster_authorized_networks_confignew) constructor.\n  - `node_config` (`list[obj]`): The configuration used for the Kubernetes Engine cluster. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.node_config.new](#fn-confignode_confignew) constructor.\n  - `private_environment_config` (`list[obj]`): The configuration used for the Private IP Cloud Composer environment. When `null`, the `private_environment_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.private_environment_config.new](#fn-configprivate_environment_confignew) constructor.\n  - `software_config` (`list[obj]`): The configuration settings for software inside the environment. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.software_config.new](#fn-configsoftware_confignew) constructor.\n  - `web_server_config` (`list[obj]`): The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `web_server_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.web_server_config.new](#fn-configweb_server_confignew) constructor.\n  - `web_server_network_access_control` (`list[obj]`): The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `web_server_network_access_control` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.web_server_network_access_control.new](#fn-configweb_server_network_access_controlnew) constructor.\n  - `workloads_config` (`list[obj]`): The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. When `null`, the `workloads_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.new](#fn-configworkloads_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
    new(
      database_config=null,
      encryption_config=null,
      environment_size=null,
      maintenance_window=null,
      master_authorized_networks_config=null,
      node_config=null,
      node_count=null,
      private_environment_config=null,
      software_config=null,
      web_server_config=null,
      web_server_network_access_control=null,
      workloads_config=null
    ):: std.prune(a={
      database_config: database_config,
      encryption_config: encryption_config,
      environment_size: environment_size,
      maintenance_window: maintenance_window,
      master_authorized_networks_config: master_authorized_networks_config,
      node_config: node_config,
      node_count: node_count,
      private_environment_config: private_environment_config,
      software_config: software_config,
      web_server_config: web_server_config,
      web_server_network_access_control: web_server_network_access_control,
      workloads_config: workloads_config,
    }),
    node_config:: {
      '#new':: d.fn(help='\n`google.composer_environment.config.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk_size_gb` (`number`): The disk size in GB used for node VMs. Minimum size is 20GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `enable_ip_masq_agent` (`bool`): Deploys &#39;ip-masq-agent&#39; daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent When `null`, the `enable_ip_masq_agent` field will be omitted from the resulting object.\n  - `ip_allocation_policy` (`list`): Configuration for controlling how IPs are allocated in the GKE cluster. Cannot be updated. When `null`, the `ip_allocation_policy` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: &#34;projects/{project}/zones/{zone}/machineTypes/{machineType}&#34;. Must belong to the enclosing environment&#39;s project and region/zone. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `network` (`string`): The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: &#34;projects/{project}/zones/{zone}/machineTypes/{machineType}&#34;. Must belong to the enclosing environment&#39;s project and region/zone. The network must belong to the environment&#39;s project. If unspecified, the &#34;default&#34; network ID in the environment&#39;s project is used. If a Custom Subnet Network is provided, subnetwork must also be provided. When `null`, the `network` field will be omitted from the resulting object.\n  - `oauth_scopes` (`list`): The set of Google API scopes to be made available on all node VMs. Cannot be updated. If empty, defaults to [&#34;https://www.googleapis.com/auth/cloud-platform&#34;]. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `oauth_scopes` field will be omitted from the resulting object.\n  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. If a service account is not specified, the &#34;default&#34; Compute Engine service account is used. Cannot be updated. If given, note that the service account must have roles/composer.worker for any GCP resources created under the Cloud Composer Environment. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The Compute Engine subnetwork to be used for machine communications, , specified as a self-link, relative resource name (e.g. &#34;projects/{project}/regions/{region}/subnetworks/{subnetwork}&#34;), or by name. If subnetwork is provided, network must also be provided and the subnetwork must belong to the enclosing environment&#39;s project and region. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `tags` (`list`): The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with RFC1035. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `tags` field will be omitted from the resulting object.\n  - `zone` (`string`): The Compute Engine zone in which to deploy the VMs running the Apache Airflow software, specified as the zone name or relative resource name (e.g. &#34;projects/{project}/zones/{zone}&#34;). Must belong to the enclosing environment&#39;s project and region. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
      new(
        disk_size_gb=null,
        enable_ip_masq_agent=null,
        ip_allocation_policy=null,
        machine_type=null,
        network=null,
        oauth_scopes=null,
        service_account=null,
        subnetwork=null,
        tags=null,
        zone=null
      ):: std.prune(a={
        disk_size_gb: disk_size_gb,
        enable_ip_masq_agent: enable_ip_masq_agent,
        ip_allocation_policy: ip_allocation_policy,
        machine_type: machine_type,
        network: network,
        oauth_scopes: oauth_scopes,
        service_account: service_account,
        subnetwork: subnetwork,
        tags: tags,
        zone: zone,
      }),
    },
    private_environment_config:: {
      '#new':: d.fn(help='\n`google.composer_environment.config.private_environment_config.new` constructs a new object with attributes and blocks configured for the `private_environment_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_composer_connection_subnetwork` (`string`): When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. When `null`, the `cloud_composer_connection_subnetwork` field will be omitted from the resulting object.\n  - `cloud_composer_network_ipv4_cidr_block` (`string`): The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. When `null`, the `cloud_composer_network_ipv4_cidr_block` field will be omitted from the resulting object.\n  - `cloud_sql_ipv4_cidr_block` (`string`): The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block. When `null`, the `cloud_sql_ipv4_cidr_block` field will be omitted from the resulting object.\n  - `enable_private_endpoint` (`bool`): If true, access to the public endpoint of the GKE cluster is denied. If this field is set to true, ip_allocation_policy.use_ip_aliases must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `enable_private_endpoint` field will be omitted from the resulting object.\n  - `enable_privately_used_public_ips` (`bool`): When enabled, IPs from public (non-RFC1918) ranges can be used for ip_allocation_policy.cluster_ipv4_cidr_block and ip_allocation_policy.service_ipv4_cidr_block. When `null`, the `enable_privately_used_public_ips` field will be omitted from the resulting object.\n  - `master_ipv4_cidr_block` (`string`): The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster&#39;s network. If left blank, the default value of &#39;172.16.0.0/28&#39; is used. When `null`, the `master_ipv4_cidr_block` field will be omitted from the resulting object.\n  - `web_server_ipv4_cidr_block` (`string`): The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `web_server_ipv4_cidr_block` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `private_environment_config` sub block.\n', args=[]),
      new(
        cloud_composer_connection_subnetwork=null,
        cloud_composer_network_ipv4_cidr_block=null,
        cloud_sql_ipv4_cidr_block=null,
        enable_private_endpoint=null,
        enable_privately_used_public_ips=null,
        master_ipv4_cidr_block=null,
        web_server_ipv4_cidr_block=null
      ):: std.prune(a={
        cloud_composer_connection_subnetwork: cloud_composer_connection_subnetwork,
        cloud_composer_network_ipv4_cidr_block: cloud_composer_network_ipv4_cidr_block,
        cloud_sql_ipv4_cidr_block: cloud_sql_ipv4_cidr_block,
        enable_private_endpoint: enable_private_endpoint,
        enable_privately_used_public_ips: enable_privately_used_public_ips,
        master_ipv4_cidr_block: master_ipv4_cidr_block,
        web_server_ipv4_cidr_block: web_server_ipv4_cidr_block,
      }),
    },
    software_config:: {
      '#new':: d.fn(help='\n`google.composer_environment.config.software_config.new` constructs a new object with attributes and blocks configured for the `software_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `airflow_config_overrides` (`obj`): Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example &#34;core-dags_are_paused_at_creation&#34;. Section names must not contain hyphens (&#34;-&#34;), opening square brackets (&#34;[&#34;), or closing square brackets (&#34;]&#34;). The property name must not be empty and cannot contain &#34;=&#34; or &#34;;&#34;. Section and property names cannot contain characters: &#34;.&#34; Apache Airflow configuration property names must be written in snake_case. Property values can contain any character, and can be written in any lower/upper case format. Certain Apache Airflow configuration property values are blacklisted, and cannot be overridden. When `null`, the `airflow_config_overrides` field will be omitted from the resulting object.\n  - `env_variables` (`obj`): Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression [a-zA-Z_][a-zA-Z0-9_]*. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression AIRFLOW__[A-Z0-9_]&#43;__[A-Z0-9_]&#43;), and they cannot match any of the following reserved names: AIRFLOW_HOME C_FORCE_ROOT CONTAINER_NAME DAGS_FOLDER GCP_PROJECT GCS_BUCKET GKE_CLUSTER_NAME SQL_DATABASE SQL_INSTANCE SQL_PASSWORD SQL_PROJECT SQL_REGION SQL_USER. When `null`, the `env_variables` field will be omitted from the resulting object.\n  - `image_version` (`string`): The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression composer-([0-9]&#43;(\\.[0-9]&#43;\\.[0-9]&#43;(-preview\\.[0-9]&#43;)?)?|latest)-airflow-([0-9]&#43;(\\.[0-9]&#43;(\\.[0-9]&#43;)?)?). The Cloud Composer portion of the image version is a full semantic version, or an alias in the form of major version number or &#39;latest&#39;. The Apache Airflow portion of the image version is a full semantic version that points to one of the supported Apache Airflow versions, or an alias in the form of only major or major.minor versions specified. See documentation for more details and version list. When `null`, the `image_version` field will be omitted from the resulting object.\n  - `pypi_packages` (`obj`): Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name (e.g. &#34;numpy&#34;). Values are the lowercase extras and version specifier (e.g. &#34;==1.12.0&#34;, &#34;[devel,gcp_api]&#34;, &#34;[devel]&gt;=1.8.2, &lt;1.9.2&#34;). To specify a package without pinning it to a version specifier, use the empty string as the value. When `null`, the `pypi_packages` field will be omitted from the resulting object.\n  - `python_version` (`string`): The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes. Can be set to &#39;2&#39; or &#39;3&#39;. If not specified, the default is &#39;2&#39;. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use Python major version 3. When `null`, the `python_version` field will be omitted from the resulting object.\n  - `scheduler_count` (`number`): The number of schedulers for Airflow. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-2.*.*. When `null`, the `scheduler_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `software_config` sub block.\n', args=[]),
      new(
        airflow_config_overrides=null,
        env_variables=null,
        image_version=null,
        pypi_packages=null,
        python_version=null,
        scheduler_count=null
      ):: std.prune(a={
        airflow_config_overrides: airflow_config_overrides,
        env_variables: env_variables,
        image_version: image_version,
        pypi_packages: pypi_packages,
        python_version: python_version,
        scheduler_count: scheduler_count,
      }),
    },
    web_server_config:: {
      '#new':: d.fn(help='\n`google.composer_environment.config.web_server_config.new` constructs a new object with attributes and blocks configured for the `web_server_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `machine_type` (`string`): Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.\n\n**Returns**:\n  - An attribute object that represents the `web_server_config` sub block.\n', args=[]),
      new(
        machine_type
      ):: std.prune(a={
        machine_type: machine_type,
      }),
    },
    web_server_network_access_control:: {
      allowed_ip_range:: {
        '#new':: d.fn(help='\n`google.composer_environment.config.web_server_network_access_control.allowed_ip_range.new` constructs a new object with attributes and blocks configured for the `allowed_ip_range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A description of this ip range. When `null`, the `description` field will be omitted from the resulting object.\n  - `value` (`string`): IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. IP range prefixes should be properly truncated. For example, 1.2.3.4/24 should be truncated to 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 should be truncated to 2001:db8::/32.\n\n**Returns**:\n  - An attribute object that represents the `allowed_ip_range` sub block.\n', args=[]),
        new(
          value,
          description=null
        ):: std.prune(a={
          description: description,
          value: value,
        }),
      },
      '#new':: d.fn(help='\n`google.composer_environment.config.web_server_network_access_control.new` constructs a new object with attributes and blocks configured for the `web_server_network_access_control`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_ip_range` (`list[obj]`): A collection of allowed IP ranges with descriptions. When `null`, the `allowed_ip_range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.web_server_network_access_control.allowed_ip_range.new](#fn-web_server_network_access_controlallowed_ip_rangenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `web_server_network_access_control` sub block.\n', args=[]),
      new(
        allowed_ip_range=null
      ):: std.prune(a={
        allowed_ip_range: allowed_ip_range,
      }),
    },
    workloads_config:: {
      '#new':: d.fn(help='\n`google.composer_environment.config.workloads_config.new` constructs a new object with attributes and blocks configured for the `workloads_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `scheduler` (`list[obj]`): Configuration for resources used by Airflow schedulers. When `null`, the `scheduler` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.scheduler.new](#fn-workloads_configschedulernew) constructor.\n  - `web_server` (`list[obj]`): Configuration for resources used by Airflow web server. When `null`, the `web_server` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.web_server.new](#fn-workloads_configweb_servernew) constructor.\n  - `worker` (`list[obj]`): Configuration for resources used by Airflow workers. When `null`, the `worker` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.worker.new](#fn-workloads_configworkernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `workloads_config` sub block.\n', args=[]),
      new(
        scheduler=null,
        web_server=null,
        worker=null
      ):: std.prune(a={
        scheduler: scheduler,
        web_server: web_server,
        worker: worker,
      }),
      scheduler:: {
        '#new':: d.fn(help='\n`google.composer_environment.config.workloads_config.scheduler.new` constructs a new object with attributes and blocks configured for the `scheduler`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The number of schedulers. When `null`, the `count` field will be omitted from the resulting object.\n  - `cpu` (`number`): CPU request and limit for a single Airflow scheduler replica When `null`, the `cpu` field will be omitted from the resulting object.\n  - `memory_gb` (`number`): Memory (GB) request and limit for a single Airflow scheduler replica. When `null`, the `memory_gb` field will be omitted from the resulting object.\n  - `storage_gb` (`number`): Storage (GB) request and limit for a single Airflow scheduler replica. When `null`, the `storage_gb` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `scheduler` sub block.\n', args=[]),
        new(
          count=null,
          cpu=null,
          memory_gb=null,
          storage_gb=null
        ):: std.prune(a={
          count: count,
          cpu: cpu,
          memory_gb: memory_gb,
          storage_gb: storage_gb,
        }),
      },
      web_server:: {
        '#new':: d.fn(help='\n`google.composer_environment.config.workloads_config.web_server.new` constructs a new object with attributes and blocks configured for the `web_server`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu` (`number`): CPU request and limit for Airflow web server. When `null`, the `cpu` field will be omitted from the resulting object.\n  - `memory_gb` (`number`): Memory (GB) request and limit for Airflow web server. When `null`, the `memory_gb` field will be omitted from the resulting object.\n  - `storage_gb` (`number`): Storage (GB) request and limit for Airflow web server. When `null`, the `storage_gb` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `web_server` sub block.\n', args=[]),
        new(
          cpu=null,
          memory_gb=null,
          storage_gb=null
        ):: std.prune(a={
          cpu: cpu,
          memory_gb: memory_gb,
          storage_gb: storage_gb,
        }),
      },
      worker:: {
        '#new':: d.fn(help='\n`google.composer_environment.config.workloads_config.worker.new` constructs a new object with attributes and blocks configured for the `worker`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu` (`number`): CPU request and limit for a single Airflow worker replica. When `null`, the `cpu` field will be omitted from the resulting object.\n  - `max_count` (`number`): Maximum number of workers for autoscaling. When `null`, the `max_count` field will be omitted from the resulting object.\n  - `memory_gb` (`number`): Memory (GB) request and limit for a single Airflow worker replica. When `null`, the `memory_gb` field will be omitted from the resulting object.\n  - `min_count` (`number`): Minimum number of workers for autoscaling. When `null`, the `min_count` field will be omitted from the resulting object.\n  - `storage_gb` (`number`): Storage (GB) request and limit for a single Airflow worker replica. When `null`, the `storage_gb` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `worker` sub block.\n', args=[]),
        new(
          cpu=null,
          max_count=null,
          memory_gb=null,
          min_count=null,
          storage_gb=null
        ):: std.prune(a={
          cpu: cpu,
          max_count: max_count,
          memory_gb: memory_gb,
          min_count: min_count,
          storage_gb: storage_gb,
        }),
      },
    },
  },
  '#new':: d.fn(help="\n`google.composer_environment.new` injects a new `google_composer_environment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.composer_environment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.composer_environment` using the reference:\n\n    $._ref.google_composer_environment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_composer_environment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `labels` (`obj`): User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]*[a-z0-9])?. Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]*[a-z0-9])?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be \u0026lt;= 128 bytes in size. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the environment.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The location or Compute Engine region for the environment. When `null`, the `region` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): Configuration parameters for this environment. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.new](#fn-composer_environmentconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.timeouts.new](#fn-composer_environmenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    config=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_composer_environment',
    label=resourceLabel,
    attrs=self.newAttrs(
      config=config,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.composer_environment.newAttrs` constructs a new object with attributes and blocks configured for the `composer_environment`\nTerraform resource.\n\nUnlike [google.composer_environment.new](#fn-composer_environmentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `labels` (`obj`): User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]*[a-z0-9])?. Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]*[a-z0-9])?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be &lt;= 128 bytes in size. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the environment.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The location or Compute Engine region for the environment. When `null`, the `region` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): Configuration parameters for this environment. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.new](#fn-composer_environmentconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.timeouts.new](#fn-composer_environmenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `composer_environment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    config=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    config: config,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.composer_environment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withConfig':: d.fn(help='`google.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value): {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withConfigMixin':: d.fn(help='`google.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfigMixin(resourceLabel, value): {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_composer_environment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
