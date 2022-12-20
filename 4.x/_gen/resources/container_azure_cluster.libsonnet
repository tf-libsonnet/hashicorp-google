local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_azure_cluster', url='', help='`container_azure_cluster` represents the `google_container_azure_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  authorization:: {
    admin_users:: {
      '#new':: d.fn(help='\n`google.container_azure_cluster.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`\nTerraform sub block.\n\n\n\n**Args**:\n  - `username` (`string`): The name of the user, e.g. `my-gcp-id@gmail.com`.\n\n**Returns**:\n  - An attribute object that represents the `admin_users` sub block.\n', args=[]),
      new(
        username
      ):: std.prune(a={
        username: username,
      }),
    },
    '#new':: d.fn(help='\n`google.container_azure_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `admin_users` (`list[obj]`): Users that can perform operations as a cluster admin. A new ClusterRoleBinding will be created to grant the cluster-admin ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.authorization.admin_users.new](#fn-authorizationadmin_usersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `authorization` sub block.\n', args=[]),
    new(
      admin_users=null
    ):: std.prune(a={
      admin_users: admin_users,
    }),
  },
  control_plane:: {
    database_encryption:: {
      '#new':: d.fn(help='\n`google.container_azure_cluster.control_plane.database_encryption.new` constructs a new object with attributes and blocks configured for the `database_encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key_id` (`string`): The ARM ID of the Azure Key Vault key to encrypt / decrypt data. For example: `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-id&gt;/providers/Microsoft.KeyVault/vaults/&lt;key-vault-id&gt;/keys/&lt;key-name&gt;` Encryption will always take the latest version of the key and hence specific version is not supported.\n\n**Returns**:\n  - An attribute object that represents the `database_encryption` sub block.\n', args=[]),
      new(
        key_id
      ):: std.prune(a={
        key_id: key_id,
      }),
    },
    main_volume:: {
      '#new':: d.fn(help='\n`google.container_azure_cluster.control_plane.main_volume.new` constructs a new object with attributes and blocks configured for the `main_volume`\nTerraform sub block.\n\n\n\n**Args**:\n  - `size_gib` (`number`): Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `main_volume` sub block.\n', args=[]),
      new(
        size_gib=null
      ):: std.prune(a={
        size_gib: size_gib,
      }),
    },
    '#new':: d.fn(help='\n`google.container_azure_cluster.control_plane.new` constructs a new object with attributes and blocks configured for the `control_plane`\nTerraform sub block.\n\n\n\n**Args**:\n  - `subnet_id` (`string`): The ARM ID of the subnet where the control plane VMs are deployed. Example: `/subscriptions//resourceGroups//providers/Microsoft.Network/virtualNetworks//subnets/default`.\n  - `tags` (`obj`): Optional. A set of tags to apply to all underlying control plane Azure resources. When `null`, the `tags` field will be omitted from the resulting object.\n  - `version` (`string`): The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAzureServerConfig.\n  - `vm_size` (`string`): Optional. The Azure VM size name. Example: `Standard_DS2_v2`. For available VM sizes, see https://docs.microsoft.com/en-us/azure/virtual-machines/vm-naming-conventions. When unspecified, it defaults to `Standard_DS2_v2`. When `null`, the `vm_size` field will be omitted from the resulting object.\n  - `database_encryption` (`list[obj]`): Optional. Configuration related to application-layer secrets encryption. When `null`, the `database_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.database_encryption.new](#fn-control_planedatabase_encryptionnew) constructor.\n  - `main_volume` (`list[obj]`): Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster&#39;s etcd state. When unspecified, it defaults to a 8-GiB Azure Disk. When `null`, the `main_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.main_volume.new](#fn-control_planemain_volumenew) constructor.\n  - `proxy_config` (`list[obj]`): Proxy configuration for outbound HTTP(S) traffic. When `null`, the `proxy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.proxy_config.new](#fn-control_planeproxy_confignew) constructor.\n  - `replica_placements` (`list[obj]`): Configuration for where to place the control plane replicas. Up to three replica placement instances can be specified. If replica_placements is set, the replica placement instances will be applied to the three control plane replicas as evenly as possible. When `null`, the `replica_placements` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.replica_placements.new](#fn-control_planereplica_placementsnew) constructor.\n  - `root_volume` (`list[obj]`): Optional. Configuration related to the root volume provisioned for each control plane replica. When unspecified, it defaults to 32-GiB Azure Disk. When `null`, the `root_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.root_volume.new](#fn-control_planeroot_volumenew) constructor.\n  - `ssh_config` (`list[obj]`): SSH configuration for how to access the underlying control plane machines. When `null`, the `ssh_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.ssh_config.new](#fn-control_planessh_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `control_plane` sub block.\n', args=[]),
    new(
      subnet_id,
      version,
      database_encryption=null,
      main_volume=null,
      proxy_config=null,
      replica_placements=null,
      root_volume=null,
      ssh_config=null,
      tags=null,
      vm_size=null
    ):: std.prune(a={
      database_encryption: database_encryption,
      main_volume: main_volume,
      proxy_config: proxy_config,
      replica_placements: replica_placements,
      root_volume: root_volume,
      ssh_config: ssh_config,
      subnet_id: subnet_id,
      tags: tags,
      version: version,
      vm_size: vm_size,
    }),
    proxy_config:: {
      '#new':: d.fn(help='\n`google.container_azure_cluster.control_plane.proxy_config.new` constructs a new object with attributes and blocks configured for the `proxy_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_group_id` (`string`): The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-name&gt;`\n  - `secret_id` (`string`): The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:&lt;key-vault-name&gt;.vault.azure.net/secrets/&lt;secret-name&gt;/&lt;secret-version&gt;`.\n\n**Returns**:\n  - An attribute object that represents the `proxy_config` sub block.\n', args=[]),
      new(
        resource_group_id,
        secret_id
      ):: std.prune(a={
        resource_group_id: resource_group_id,
        secret_id: secret_id,
      }),
    },
    replica_placements:: {
      '#new':: d.fn(help='\n`google.container_azure_cluster.control_plane.replica_placements.new` constructs a new object with attributes and blocks configured for the `replica_placements`\nTerraform sub block.\n\n\n\n**Args**:\n  - `azure_availability_zone` (`string`): For a given replica, the Azure availability zone where to provision the control plane VM and the ETCD disk.\n  - `subnet_id` (`string`): For a given replica, the ARM ID of the subnet where the control plane VM is deployed. Make sure it&#39;s a subnet under the virtual network in the cluster configuration.\n\n**Returns**:\n  - An attribute object that represents the `replica_placements` sub block.\n', args=[]),
      new(
        azure_availability_zone,
        subnet_id
      ):: std.prune(a={
        azure_availability_zone: azure_availability_zone,
        subnet_id: subnet_id,
      }),
    },
    root_volume:: {
      '#new':: d.fn(help='\n`google.container_azure_cluster.control_plane.root_volume.new` constructs a new object with attributes and blocks configured for the `root_volume`\nTerraform sub block.\n\n\n\n**Args**:\n  - `size_gib` (`number`): Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `root_volume` sub block.\n', args=[]),
      new(
        size_gib=null
      ):: std.prune(a={
        size_gib: size_gib,
      }),
    },
    ssh_config:: {
      '#new':: d.fn(help='\n`google.container_azure_cluster.control_plane.ssh_config.new` constructs a new object with attributes and blocks configured for the `ssh_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `authorized_key` (`string`): The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page.\n\n**Returns**:\n  - An attribute object that represents the `ssh_config` sub block.\n', args=[]),
      new(
        authorized_key
      ):: std.prune(a={
        authorized_key: authorized_key,
      }),
    },
  },
  fleet:: {
    '#new':: d.fn(help='\n`google.container_azure_cluster.fleet.new` constructs a new object with attributes and blocks configured for the `fleet`\nTerraform sub block.\n\n\n\n**Args**:\n  - `project` (`string`): The number of the Fleet host project where this cluster will be registered. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fleet` sub block.\n', args=[]),
    new(
      project=null
    ):: std.prune(a={
      project: project,
    }),
  },
  networking:: {
    '#new':: d.fn(help='\n`google.container_azure_cluster.networking.new` constructs a new object with attributes and blocks configured for the `networking`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pod_address_cidr_blocks` (`list`): The IP address range of the pods in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All pods in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.\n  - `service_address_cidr_blocks` (`list`): The IP address range for services in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All services in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creating a cluster.\n  - `virtual_network_id` (`string`): The Azure Resource Manager (ARM) ID of the VNet associated with your cluster. All components in the cluster (i.e. control plane and node pools) run on a single VNet. Example: `/subscriptions/*/resourceGroups/*/providers/Microsoft.Network/virtualNetworks/*` This field cannot be changed after creation.\n\n**Returns**:\n  - An attribute object that represents the `networking` sub block.\n', args=[]),
    new(
      pod_address_cidr_blocks,
      service_address_cidr_blocks,
      virtual_network_id
    ):: std.prune(a={
      pod_address_cidr_blocks: pod_address_cidr_blocks,
      service_address_cidr_blocks: service_address_cidr_blocks,
      virtual_network_id: virtual_network_id,
    }),
  },
  '#new':: d.fn(help="\n`google.container_azure_cluster.new` injects a new `google_container_azure_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_azure_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_azure_cluster` using the reference:\n\n    $._ref.google_container_azure_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_azure_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `azure_region` (`string`): The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.\n  - `client` (`string`): Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/\u0026lt;project-number\u0026gt;/locations/\u0026lt;region\u0026gt;/azureClients/\u0026lt;client-id\u0026gt;`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.\n  - `description` (`string`): Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `resource_group_id` (`string`): The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`\n  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.authorization.new](#fn-authorizationnew) constructor.\n  - `control_plane` (`list[obj]`): Configuration related to the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.new](#fn-control_planenew) constructor.\n  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.fleet.new](#fn-fleetnew) constructor.\n  - `networking` (`list[obj]`): Cluster-wide networking configuration. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.networking.new](#fn-networkingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    azure_region,
    client,
    location,
    name,
    resource_group_id,
    annotations=null,
    authorization=null,
    control_plane=null,
    description=null,
    fleet=null,
    networking=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_azure_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      authorization=authorization,
      azure_region=azure_region,
      client=client,
      control_plane=control_plane,
      description=description,
      fleet=fleet,
      location=location,
      name=name,
      networking=networking,
      project=project,
      resource_group_id=resource_group_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_azure_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `container_azure_cluster`\nTerraform resource.\n\nUnlike [google.container_azure_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `azure_region` (`string`): The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.\n  - `client` (`string`): Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/&lt;project-number&gt;/locations/&lt;region&gt;/azureClients/&lt;client-id&gt;`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.\n  - `description` (`string`): Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `resource_group_id` (`string`): The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`\n  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.authorization.new](#fn-authorizationnew) constructor.\n  - `control_plane` (`list[obj]`): Configuration related to the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.new](#fn-control_planenew) constructor.\n  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.fleet.new](#fn-fleetnew) constructor.\n  - `networking` (`list[obj]`): Cluster-wide networking configuration. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.networking.new](#fn-networkingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_azure_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    azure_region,
    client,
    location,
    name,
    resource_group_id,
    annotations=null,
    authorization=null,
    control_plane=null,
    description=null,
    fleet=null,
    networking=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    authorization: authorization,
    azure_region: azure_region,
    client: client,
    control_plane: control_plane,
    description: description,
    fleet: fleet,
    location: location,
    name: name,
    networking: networking,
    project: project,
    resource_group_id: resource_group_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_azure_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAuthorization':: d.fn(help='`google.list[obj].withAuthorization` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authorization field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAuthorizationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorization(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          authorization: value,
        },
      },
    },
  },
  '#withAuthorizationMixin':: d.fn(help='`google.list[obj].withAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authorization field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAuthorization](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorizationMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAzureRegion':: d.fn(help='`google.string.withAzureRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the azure_region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `azure_region` field.\n', args=[]),
  withAzureRegion(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          azure_region: value,
        },
      },
    },
  },
  '#withClient':: d.fn(help='`google.string.withClient` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the client field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `client` field.\n', args=[]),
  withClient(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          client: value,
        },
      },
    },
  },
  '#withControlPlane':: d.fn(help='`google.list[obj].withControlPlane` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withControlPlaneMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane` field.\n', args=[]),
  withControlPlane(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          control_plane: value,
        },
      },
    },
  },
  '#withControlPlaneMixin':: d.fn(help='`google.list[obj].withControlPlaneMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlane](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane` field.\n', args=[]),
  withControlPlaneMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          control_plane+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFleet':: d.fn(help='`google.list[obj].withFleet` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFleetMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet` field.\n', args=[]),
  withFleet(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          fleet: value,
        },
      },
    },
  },
  '#withFleetMixin':: d.fn(help='`google.list[obj].withFleetMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFleet](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet` field.\n', args=[]),
  withFleetMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          fleet+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworking':: d.fn(help='`google.list[obj].withNetworking` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networking field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networking` field.\n', args=[]),
  withNetworking(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          networking: value,
        },
      },
    },
  },
  '#withNetworkingMixin':: d.fn(help='`google.list[obj].withNetworkingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networking field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworking](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networking` field.\n', args=[]),
  withNetworkingMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          networking+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withResourceGroupId':: d.fn(help='`google.string.withResourceGroupId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the resource_group_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `resource_group_id` field.\n', args=[]),
  withResourceGroupId(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          resource_group_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
