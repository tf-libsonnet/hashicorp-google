local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_aws_cluster', url='', help='`container_aws_cluster` represents the `google_container_aws_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  authorization:: {
    admin_users:: {
      '#new':: d.fn(help='\n`google.container_aws_cluster.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`\nTerraform sub block.\n\n\n\n**Args**:\n  - `username` (`string`): The name of the user, e.g. `my-gcp-id@gmail.com`.\n\n**Returns**:\n  - An attribute object that represents the `admin_users` sub block.\n', args=[]),
      new(
        username
      ):: std.prune(a={
        username: username,
      }),
    },
    '#new':: d.fn(help='\n`google.container_aws_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `admin_users` (`list[obj]`): Users to perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.authorization.admin_users.new](#fn-authorizationadminusersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `authorization` sub block.\n', args=[]),
    new(
      admin_users=null
    ):: std.prune(a={
      admin_users: admin_users,
    }),
  },
  control_plane:: {
    aws_services_authentication:: {
      '#new':: d.fn(help='\n`google.container_aws_cluster.control_plane.aws_services_authentication.new` constructs a new object with attributes and blocks configured for the `aws_services_authentication`\nTerraform sub block.\n\n\n\n**Args**:\n  - `role_arn` (`string`): The Amazon Resource Name (ARN) of the role that the Anthos Multi-Cloud API will assume when managing AWS resources on your account.\n  - `role_session_name` (`string`): Optional. An identifier for the assumed role session. When unspecified, it defaults to `multicloud-service-agent`. When `null`, the `role_session_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `aws_services_authentication` sub block.\n', args=[]),
      new(
        role_arn,
        role_session_name=null
      ):: std.prune(a={
        role_arn: role_arn,
        role_session_name: role_session_name,
      }),
    },
    config_encryption:: {
      '#new':: d.fn(help='\n`google.container_aws_cluster.control_plane.config_encryption.new` constructs a new object with attributes and blocks configured for the `config_encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_arn` (`string`): The ARN of the AWS KMS key used to encrypt cluster configuration.\n\n**Returns**:\n  - An attribute object that represents the `config_encryption` sub block.\n', args=[]),
      new(
        kms_key_arn
      ):: std.prune(a={
        kms_key_arn: kms_key_arn,
      }),
    },
    database_encryption:: {
      '#new':: d.fn(help='\n`google.container_aws_cluster.control_plane.database_encryption.new` constructs a new object with attributes and blocks configured for the `database_encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_arn` (`string`): The ARN of the AWS KMS key used to encrypt cluster secrets.\n\n**Returns**:\n  - An attribute object that represents the `database_encryption` sub block.\n', args=[]),
      new(
        kms_key_arn
      ):: std.prune(a={
        kms_key_arn: kms_key_arn,
      }),
    },
    main_volume:: {
      '#new':: d.fn(help='\n`google.container_aws_cluster.control_plane.main_volume.new` constructs a new object with attributes and blocks configured for the `main_volume`\nTerraform sub block.\n\n\n\n**Args**:\n  - `iops` (`number`): Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume. When `null`, the `iops` field will be omitted from the resulting object.\n  - `kms_key_arn` (`string`): Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used. When `null`, the `kms_key_arn` field will be omitted from the resulting object.\n  - `size_gib` (`number`): Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.\n  - `volume_type` (`string`): Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3 When `null`, the `volume_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `main_volume` sub block.\n', args=[]),
      new(
        iops=null,
        kms_key_arn=null,
        size_gib=null,
        volume_type=null
      ):: std.prune(a={
        iops: iops,
        kms_key_arn: kms_key_arn,
        size_gib: size_gib,
        volume_type: volume_type,
      }),
    },
    '#new':: d.fn(help='\n`google.container_aws_cluster.control_plane.new` constructs a new object with attributes and blocks configured for the `control_plane`\nTerraform sub block.\n\n\n\n**Args**:\n  - `iam_instance_profile` (`string`): The name of the AWS IAM instance pofile to assign to each control plane replica.\n  - `instance_type` (`string`): Optional. The AWS instance type. When unspecified, it defaults to `m5.large`. When `null`, the `instance_type` field will be omitted from the resulting object.\n  - `security_group_ids` (`list`): Optional. The IDs of additional security groups to add to control plane replicas. The Anthos Multi-Cloud API will automatically create and manage security groups with the minimum rules needed for a functioning cluster. When `null`, the `security_group_ids` field will be omitted from the resulting object.\n  - `subnet_ids` (`list`): The list of subnets where control plane replicas will run. A replica will be provisioned on each subnet and up to three values can be provided. Each subnet must be in a different AWS Availability Zone (AZ).\n  - `tags` (`obj`): Optional. A set of AWS resource tags to propagate to all underlying managed AWS resources. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.&#43;-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. When `null`, the `tags` field will be omitted from the resulting object.\n  - `version` (`string`): The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling .\n  - `aws_services_authentication` (`list[obj]`): Authentication configuration for management of AWS resources. When `null`, the `aws_services_authentication` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.aws_services_authentication.new](#fn-controlplaneawsservicesauthenticationnew) constructor.\n  - `config_encryption` (`list[obj]`): The ARN of the AWS KMS key used to encrypt cluster configuration. When `null`, the `config_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.config_encryption.new](#fn-controlplaneconfigencryptionnew) constructor.\n  - `database_encryption` (`list[obj]`): The ARN of the AWS KMS key used to encrypt cluster secrets. When `null`, the `database_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.database_encryption.new](#fn-controlplanedatabaseencryptionnew) constructor.\n  - `main_volume` (`list[obj]`): Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster&#39;s etcd state. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 8 GiB with the GP2 volume type. When `null`, the `main_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.main_volume.new](#fn-controlplanemainvolumenew) constructor.\n  - `proxy_config` (`list[obj]`): Proxy configuration for outbound HTTP(S) traffic. When `null`, the `proxy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.proxy_config.new](#fn-controlplaneproxyconfignew) constructor.\n  - `root_volume` (`list[obj]`): Optional. Configuration related to the root volume provisioned for each control plane replica. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type. When `null`, the `root_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.root_volume.new](#fn-controlplanerootvolumenew) constructor.\n  - `ssh_config` (`list[obj]`): Optional. SSH configuration for how to access the underlying control plane machines. When `null`, the `ssh_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.ssh_config.new](#fn-controlplanesshconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `control_plane` sub block.\n', args=[]),
    new(
      iam_instance_profile,
      subnet_ids,
      version,
      aws_services_authentication=null,
      config_encryption=null,
      database_encryption=null,
      instance_type=null,
      main_volume=null,
      proxy_config=null,
      root_volume=null,
      security_group_ids=null,
      ssh_config=null,
      tags=null
    ):: std.prune(a={
      aws_services_authentication: aws_services_authentication,
      config_encryption: config_encryption,
      database_encryption: database_encryption,
      iam_instance_profile: iam_instance_profile,
      instance_type: instance_type,
      main_volume: main_volume,
      proxy_config: proxy_config,
      root_volume: root_volume,
      security_group_ids: security_group_ids,
      ssh_config: ssh_config,
      subnet_ids: subnet_ids,
      tags: tags,
      version: version,
    }),
    proxy_config:: {
      '#new':: d.fn(help='\n`google.container_aws_cluster.control_plane.proxy_config.new` constructs a new object with attributes and blocks configured for the `proxy_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_arn` (`string`): The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.\n  - `secret_version` (`string`): The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.\n\n**Returns**:\n  - An attribute object that represents the `proxy_config` sub block.\n', args=[]),
      new(
        secret_arn,
        secret_version
      ):: std.prune(a={
        secret_arn: secret_arn,
        secret_version: secret_version,
      }),
    },
    root_volume:: {
      '#new':: d.fn(help='\n`google.container_aws_cluster.control_plane.root_volume.new` constructs a new object with attributes and blocks configured for the `root_volume`\nTerraform sub block.\n\n\n\n**Args**:\n  - `iops` (`number`): Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume. When `null`, the `iops` field will be omitted from the resulting object.\n  - `kms_key_arn` (`string`): Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used. When `null`, the `kms_key_arn` field will be omitted from the resulting object.\n  - `size_gib` (`number`): Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.\n  - `volume_type` (`string`): Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3 When `null`, the `volume_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `root_volume` sub block.\n', args=[]),
      new(
        iops=null,
        kms_key_arn=null,
        size_gib=null,
        volume_type=null
      ):: std.prune(a={
        iops: iops,
        kms_key_arn: kms_key_arn,
        size_gib: size_gib,
        volume_type: volume_type,
      }),
    },
    ssh_config:: {
      '#new':: d.fn(help='\n`google.container_aws_cluster.control_plane.ssh_config.new` constructs a new object with attributes and blocks configured for the `ssh_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ec2_key_pair` (`string`): The name of the EC2 key pair used to login into cluster machines.\n\n**Returns**:\n  - An attribute object that represents the `ssh_config` sub block.\n', args=[]),
      new(
        ec2_key_pair
      ):: std.prune(a={
        ec2_key_pair: ec2_key_pair,
      }),
    },
  },
  fleet:: {
    '#new':: d.fn(help='\n`google.container_aws_cluster.fleet.new` constructs a new object with attributes and blocks configured for the `fleet`\nTerraform sub block.\n\n\n\n**Args**:\n  - `project` (`string`): The number of the Fleet host project where this cluster will be registered. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fleet` sub block.\n', args=[]),
    new(
      project=null
    ):: std.prune(a={
      project: project,
    }),
  },
  networking:: {
    '#new':: d.fn(help='\n`google.container_aws_cluster.networking.new` constructs a new object with attributes and blocks configured for the `networking`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pod_address_cidr_blocks` (`list`): All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.\n  - `service_address_cidr_blocks` (`list`): All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.\n  - `vpc_id` (`string`): The VPC associated with the cluster. All component clusters (i.e. control plane and node pools) run on a single VPC. This field cannot be changed after creation.\n\n**Returns**:\n  - An attribute object that represents the `networking` sub block.\n', args=[]),
    new(
      pod_address_cidr_blocks,
      service_address_cidr_blocks,
      vpc_id
    ):: std.prune(a={
      pod_address_cidr_blocks: pod_address_cidr_blocks,
      service_address_cidr_blocks: service_address_cidr_blocks,
      vpc_id: vpc_id,
    }),
  },
  '#new':: d.fn(help="\n`google.container_aws_cluster.new` injects a new `google_container_aws_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_aws_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_aws_cluster` using the reference:\n\n    $._ref.google_container_aws_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_aws_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `aws_region` (`string`): The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.\n  - `description` (`string`): Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.authorization.new](#fn-containerawsclusterauthorizationnew) constructor.\n  - `control_plane` (`list[obj]`): Configuration related to the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.new](#fn-containerawsclustercontrolplanenew) constructor.\n  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.fleet.new](#fn-containerawsclusterfleetnew) constructor.\n  - `networking` (`list[obj]`): Cluster-wide networking configuration. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.networking.new](#fn-containerawsclusternetworkingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.timeouts.new](#fn-containerawsclustertimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    aws_region,
    location,
    name,
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
    type='google_container_aws_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      authorization=authorization,
      aws_region=aws_region,
      control_plane=control_plane,
      description=description,
      fleet=fleet,
      location=location,
      name=name,
      networking=networking,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_aws_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `container_aws_cluster`\nTerraform resource.\n\nUnlike [google.container_aws_cluster.new](#fn-containerawsclusternew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `aws_region` (`string`): The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.\n  - `description` (`string`): Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.authorization.new](#fn-containerawsclusterauthorizationnew) constructor.\n  - `control_plane` (`list[obj]`): Configuration related to the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.control_plane.new](#fn-containerawsclustercontrolplanenew) constructor.\n  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.fleet.new](#fn-containerawsclusterfleetnew) constructor.\n  - `networking` (`list[obj]`): Cluster-wide networking configuration. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.networking.new](#fn-containerawsclusternetworkingnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_cluster.timeouts.new](#fn-containerawsclustertimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_aws_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    aws_region,
    location,
    name,
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
    aws_region: aws_region,
    control_plane: control_plane,
    description: description,
    fleet: fleet,
    location: location,
    name: name,
    networking: networking,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_aws_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google.container_aws_cluster.withAnnotations` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAuthorization':: d.fn(help='`google.container_aws_cluster.withAuthorization` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the authorization field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorization(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          authorization: value,
        },
      },
    },
  },
  '#withAuthorizationMixin':: d.fn(help='`google.container_aws_cluster.withAuthorizationMixin` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the authorization field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.container_aws_cluster.withAuthorization](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorizationMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAwsRegion':: d.fn(help='`google.container_aws_cluster.withAwsRegion` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the aws_region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `aws_region` field.\n', args=[]),
  withAwsRegion(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          aws_region: value,
        },
      },
    },
  },
  '#withControlPlane':: d.fn(help='`google.container_aws_cluster.withControlPlane` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the control_plane field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `control_plane` field.\n', args=[]),
  withControlPlane(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          control_plane: value,
        },
      },
    },
  },
  '#withControlPlaneMixin':: d.fn(help='`google.container_aws_cluster.withControlPlaneMixin` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the control_plane field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.container_aws_cluster.withControlPlane](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `control_plane` field.\n', args=[]),
  withControlPlaneMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          control_plane+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.container_aws_cluster.withDescription` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFleet':: d.fn(help='`google.container_aws_cluster.withFleet` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the fleet field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `fleet` field.\n', args=[]),
  withFleet(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          fleet: value,
        },
      },
    },
  },
  '#withFleetMixin':: d.fn(help='`google.container_aws_cluster.withFleetMixin` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the fleet field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.container_aws_cluster.withFleet](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `fleet` field.\n', args=[]),
  withFleetMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          fleet+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.container_aws_cluster.withLocation` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.container_aws_cluster.withName` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworking':: d.fn(help='`google.container_aws_cluster.withNetworking` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the networking field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `networking` field.\n', args=[]),
  withNetworking(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          networking: value,
        },
      },
    },
  },
  '#withNetworkingMixin':: d.fn(help='`google.container_aws_cluster.withNetworkingMixin` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the networking field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.container_aws_cluster.withNetworking](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `networking` field.\n', args=[]),
  withNetworkingMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          networking+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.container_aws_cluster.withProject` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.container_aws_cluster.withTimeouts` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.container_aws_cluster.withTimeoutsMixin` constructs a mixin object that can be merged into the `container_aws_cluster`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.container_aws_cluster.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
