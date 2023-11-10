local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataplex_task', url='', help='`dataplex_task` represents the `google_dataplex_task` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  execution_spec:: {
    '#new':: d.fn(help='\n`google.dataplex_task.execution_spec.new` constructs a new object with attributes and blocks configured for the `execution_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `args` (`obj`): The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${taskId} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument. An object containing a list of &#39;key&#39;: value pairs. Example: { &#39;name&#39;: &#39;wrench&#39;, &#39;mass&#39;: &#39;1.3kg&#39;, &#39;count&#39;: &#39;3&#39; }. When `null`, the `args` field will be omitted from the resulting object.\n  - `kms_key` (`string`): The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{locationId}/keyRings/{key-ring-name}/cryptoKeys/{key-name}. When `null`, the `kms_key` field will be omitted from the resulting object.\n  - `max_job_execution_lifetime` (`string`): The maximum duration after which the job execution is expired. A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#39;3.5s&#39;. When `null`, the `max_job_execution_lifetime` field will be omitted from the resulting object.\n  - `project` (`string`): The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): Service account to use to execute a task. If not provided, the default Compute service account for the project is used.\n\n**Returns**:\n  - An attribute object that represents the `execution_spec` sub block.\n', args=[]),
    new(
      service_account,
      args=null,
      kms_key=null,
      max_job_execution_lifetime=null,
      project=null
    ):: std.prune(a={
      args: args,
      kms_key: kms_key,
      max_job_execution_lifetime: max_job_execution_lifetime,
      project: project,
      service_account: service_account,
    }),
  },
  '#new':: d.fn(help="\n`google.dataplex_task.new` injects a new `google_dataplex_task` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataplex_task.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataplex_task` using the reference:\n\n    $._ref.google_dataplex_task.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataplex_task.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): User-provided description of the task. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the task.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lake` (`string`): The lake in which the task will be created in. When `null`, the `lake` field will be omitted from the resulting object.\n  - `location` (`string`): The location in which the task will be created in. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `task_id` (`string`): The task Id of the task. When `null`, the `task_id` field will be omitted from the resulting object.\n  - `execution_spec` (`list[obj]`): Configuration for the cluster When `null`, the `execution_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.execution_spec.new](#fn-execution_specnew) constructor.\n  - `notebook` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `notebook` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.new](#fn-notebooknew) constructor.\n  - `spark` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `spark` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.new](#fn-sparknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.timeouts.new](#fn-timeoutsnew) constructor.\n  - `trigger_spec` (`list[obj]`): Configuration for the cluster When `null`, the `trigger_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.trigger_spec.new](#fn-trigger_specnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    description=null,
    display_name=null,
    execution_spec=null,
    labels=null,
    lake=null,
    location=null,
    notebook=null,
    project=null,
    spark=null,
    task_id=null,
    timeouts=null,
    trigger_spec=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataplex_task',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      execution_spec=execution_spec,
      labels=labels,
      lake=lake,
      location=location,
      notebook=notebook,
      project=project,
      spark=spark,
      task_id=task_id,
      timeouts=timeouts,
      trigger_spec=trigger_spec
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataplex_task.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_task`\nTerraform resource.\n\nUnlike [google.dataplex_task.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): User-provided description of the task. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the task.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lake` (`string`): The lake in which the task will be created in. When `null`, the `lake` field will be omitted from the resulting object.\n  - `location` (`string`): The location in which the task will be created in. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `task_id` (`string`): The task Id of the task. When `null`, the `task_id` field will be omitted from the resulting object.\n  - `execution_spec` (`list[obj]`): Configuration for the cluster When `null`, the `execution_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.execution_spec.new](#fn-execution_specnew) constructor.\n  - `notebook` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `notebook` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.new](#fn-notebooknew) constructor.\n  - `spark` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `spark` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.new](#fn-sparknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.timeouts.new](#fn-timeoutsnew) constructor.\n  - `trigger_spec` (`list[obj]`): Configuration for the cluster When `null`, the `trigger_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.trigger_spec.new](#fn-trigger_specnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataplex_task` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    description=null,
    display_name=null,
    execution_spec=null,
    labels=null,
    lake=null,
    location=null,
    notebook=null,
    project=null,
    spark=null,
    task_id=null,
    timeouts=null,
    trigger_spec=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    execution_spec: execution_spec,
    labels: labels,
    lake: lake,
    location: location,
    notebook: notebook,
    project: project,
    spark: spark,
    task_id: task_id,
    timeouts: timeouts,
    trigger_spec: trigger_spec,
  }),
  notebook:: {
    infrastructure_spec:: {
      batch:: {
        '#new':: d.fn(help='\n`google.dataplex_task.notebook.infrastructure_spec.batch.new` constructs a new object with attributes and blocks configured for the `batch`\nTerraform sub block.\n\n\n\n**Args**:\n  - `executors_count` (`number`): Total number of job executors. Executor Count should be between 2 and 100. [Default=2] When `null`, the `executors_count` field will be omitted from the resulting object.\n  - `max_executors_count` (`number`): Max configurable executors. If maxExecutorsCount &gt; executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000] When `null`, the `max_executors_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `batch` sub block.\n', args=[]),
        new(
          executors_count=null,
          max_executors_count=null
        ):: std.prune(a={
          executors_count: executors_count,
          max_executors_count: max_executors_count,
        }),
      },
      container_image:: {
        '#new':: d.fn(help='\n`google.dataplex_task.notebook.infrastructure_spec.container_image.new` constructs a new object with attributes and blocks configured for the `container_image`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image` (`string`): Container image to use. When `null`, the `image` field will be omitted from the resulting object.\n  - `java_jars` (`list`): A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar When `null`, the `java_jars` field will be omitted from the resulting object.\n  - `properties` (`obj`): Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties. When `null`, the `properties` field will be omitted from the resulting object.\n  - `python_packages` (`list`): A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz When `null`, the `python_packages` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `container_image` sub block.\n', args=[]),
        new(
          image=null,
          java_jars=null,
          properties=null,
          python_packages=null
        ):: std.prune(a={
          image: image,
          java_jars: java_jars,
          properties: properties,
          python_packages: python_packages,
        }),
      },
      '#new':: d.fn(help='\n`google.dataplex_task.notebook.infrastructure_spec.new` constructs a new object with attributes and blocks configured for the `infrastructure_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `batch` (`list[obj]`): Compute resources needed for a Task when using Dataproc Serverless. When `null`, the `batch` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.infrastructure_spec.batch.new](#fn-notebooknotebookbatchnew) constructor.\n  - `container_image` (`list[obj]`): Container Image Runtime Configuration. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.infrastructure_spec.container_image.new](#fn-notebooknotebookcontainer_imagenew) constructor.\n  - `vpc_network` (`list[obj]`): Vpc network. When `null`, the `vpc_network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.infrastructure_spec.vpc_network.new](#fn-notebooknotebookvpc_networknew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `infrastructure_spec` sub block.\n', args=[]),
      new(
        batch=null,
        container_image=null,
        vpc_network=null
      ):: std.prune(a={
        batch: batch,
        container_image: container_image,
        vpc_network: vpc_network,
      }),
      vpc_network:: {
        '#new':: d.fn(help='\n`google.dataplex_task.notebook.infrastructure_spec.vpc_network.new` constructs a new object with attributes and blocks configured for the `vpc_network`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network` (`string`): The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_tags` (`list`): List of network tags to apply to the job. When `null`, the `network_tags` field will be omitted from the resulting object.\n  - `sub_network` (`string`): The Cloud VPC sub-network in which the job is run. When `null`, the `sub_network` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vpc_network` sub block.\n', args=[]),
        new(
          network=null,
          network_tags=null,
          sub_network=null
        ):: std.prune(a={
          network: network,
          network_tags: network_tags,
          sub_network: sub_network,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.dataplex_task.notebook.new` constructs a new object with attributes and blocks configured for the `notebook`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `file_uris` (`list`): Cloud Storage URIs of files to be placed in the working directory of each executor. When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `notebook` (`string`): Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).\n  - `infrastructure_spec` (`list[obj]`): Infrastructure specification for the execution. When `null`, the `infrastructure_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.infrastructure_spec.new](#fn-notebookinfrastructure_specnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `notebook` sub block.\n', args=[]),
    new(
      notebook,
      archive_uris=null,
      file_uris=null,
      infrastructure_spec=null
    ):: std.prune(a={
      archive_uris: archive_uris,
      file_uris: file_uris,
      infrastructure_spec: infrastructure_spec,
      notebook: notebook,
    }),
  },
  spark:: {
    infrastructure_spec:: {
      batch:: {
        '#new':: d.fn(help='\n`google.dataplex_task.spark.infrastructure_spec.batch.new` constructs a new object with attributes and blocks configured for the `batch`\nTerraform sub block.\n\n\n\n**Args**:\n  - `executors_count` (`number`): Total number of job executors. Executor Count should be between 2 and 100. [Default=2] When `null`, the `executors_count` field will be omitted from the resulting object.\n  - `max_executors_count` (`number`): Max configurable executors. If maxExecutorsCount &gt; executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000] When `null`, the `max_executors_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `batch` sub block.\n', args=[]),
        new(
          executors_count=null,
          max_executors_count=null
        ):: std.prune(a={
          executors_count: executors_count,
          max_executors_count: max_executors_count,
        }),
      },
      container_image:: {
        '#new':: d.fn(help='\n`google.dataplex_task.spark.infrastructure_spec.container_image.new` constructs a new object with attributes and blocks configured for the `container_image`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image` (`string`): Container image to use. When `null`, the `image` field will be omitted from the resulting object.\n  - `java_jars` (`list`): A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar When `null`, the `java_jars` field will be omitted from the resulting object.\n  - `properties` (`obj`): Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties. When `null`, the `properties` field will be omitted from the resulting object.\n  - `python_packages` (`list`): A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz When `null`, the `python_packages` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `container_image` sub block.\n', args=[]),
        new(
          image=null,
          java_jars=null,
          properties=null,
          python_packages=null
        ):: std.prune(a={
          image: image,
          java_jars: java_jars,
          properties: properties,
          python_packages: python_packages,
        }),
      },
      '#new':: d.fn(help='\n`google.dataplex_task.spark.infrastructure_spec.new` constructs a new object with attributes and blocks configured for the `infrastructure_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `batch` (`list[obj]`): Compute resources needed for a Task when using Dataproc Serverless. When `null`, the `batch` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.infrastructure_spec.batch.new](#fn-sparksparkbatchnew) constructor.\n  - `container_image` (`list[obj]`): Container Image Runtime Configuration. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.infrastructure_spec.container_image.new](#fn-sparksparkcontainer_imagenew) constructor.\n  - `vpc_network` (`list[obj]`): Vpc network. When `null`, the `vpc_network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.infrastructure_spec.vpc_network.new](#fn-sparksparkvpc_networknew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `infrastructure_spec` sub block.\n', args=[]),
      new(
        batch=null,
        container_image=null,
        vpc_network=null
      ):: std.prune(a={
        batch: batch,
        container_image: container_image,
        vpc_network: vpc_network,
      }),
      vpc_network:: {
        '#new':: d.fn(help='\n`google.dataplex_task.spark.infrastructure_spec.vpc_network.new` constructs a new object with attributes and blocks configured for the `vpc_network`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network` (`string`): The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_tags` (`list`): List of network tags to apply to the job. When `null`, the `network_tags` field will be omitted from the resulting object.\n  - `sub_network` (`string`): The Cloud VPC sub-network in which the job is run. When `null`, the `sub_network` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vpc_network` sub block.\n', args=[]),
        new(
          network=null,
          network_tags=null,
          sub_network=null
        ):: std.prune(a={
          network: network,
          network_tags: network_tags,
          sub_network: sub_network,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.dataplex_task.spark.new` constructs a new object with attributes and blocks configured for the `spark`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `file_uris` (`list`): Cloud Storage URIs of files to be placed in the working directory of each executor. When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `main_class` (`string`): The name of the driver&#39;s main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value). When `null`, the `main_class` field will be omitted from the resulting object.\n  - `main_jar_file_uri` (`string`): The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value). When `null`, the `main_jar_file_uri` field will be omitted from the resulting object.\n  - `python_script_file` (`string`): The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value). When `null`, the `python_script_file` field will be omitted from the resulting object.\n  - `sql_script` (`string`): The query text. The execution args are used to declare a set of script variables (set key=&#39;value&#39;;). When `null`, the `sql_script` field will be omitted from the resulting object.\n  - `sql_script_file` (`string`): A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key=&#39;value&#39;;). When `null`, the `sql_script_file` field will be omitted from the resulting object.\n  - `infrastructure_spec` (`list[obj]`): Infrastructure specification for the execution. When `null`, the `infrastructure_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.infrastructure_spec.new](#fn-sparkinfrastructure_specnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spark` sub block.\n', args=[]),
    new(
      archive_uris=null,
      file_uris=null,
      infrastructure_spec=null,
      main_class=null,
      main_jar_file_uri=null,
      python_script_file=null,
      sql_script=null,
      sql_script_file=null
    ):: std.prune(a={
      archive_uris: archive_uris,
      file_uris: file_uris,
      infrastructure_spec: infrastructure_spec,
      main_class: main_class,
      main_jar_file_uri: main_jar_file_uri,
      python_script_file: python_script_file,
      sql_script: sql_script,
      sql_script_file: sql_script_file,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataplex_task.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  trigger_spec:: {
    '#new':: d.fn(help='\n`google.dataplex_task.trigger_spec.new` constructs a new object with attributes and blocks configured for the `trigger_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `max_retries` (`number`): Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task. When `null`, the `max_retries` field will be omitted from the resulting object.\n  - `schedule` (`string`): Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: &#39;CRON_TZ=${IANA_TIME_ZONE}&#39; or &#39;TZ=${IANA_TIME_ZONE}&#39;. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks. When `null`, the `schedule` field will be omitted from the resulting object.\n  - `start_time` (`string`): The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING. When `null`, the `start_time` field will be omitted from the resulting object.\n  - `type` (`string`): Trigger type of the user-specified Task Possible values: [&#34;ON_DEMAND&#34;, &#34;RECURRING&#34;]\n\n**Returns**:\n  - An attribute object that represents the `trigger_spec` sub block.\n', args=[]),
    new(
      type,
      disabled=null,
      max_retries=null,
      schedule=null,
      start_time=null
    ):: std.prune(a={
      disabled: disabled,
      max_retries: max_retries,
      schedule: schedule,
      start_time: start_time,
      type: type,
    }),
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withExecutionSpec':: d.fn(help='`google.list[obj].withExecutionSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the execution_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withExecutionSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `execution_spec` field.\n', args=[]),
  withExecutionSpec(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          execution_spec: value,
        },
      },
    },
  },
  '#withExecutionSpecMixin':: d.fn(help='`google.list[obj].withExecutionSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the execution_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withExecutionSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `execution_spec` field.\n', args=[]),
  withExecutionSpecMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          execution_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLake':: d.fn(help='`google.string.withLake` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the lake field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `lake` field.\n', args=[]),
  withLake(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          lake: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withNotebook':: d.fn(help='`google.list[obj].withNotebook` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notebook field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNotebookMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notebook` field.\n', args=[]),
  withNotebook(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          notebook: value,
        },
      },
    },
  },
  '#withNotebookMixin':: d.fn(help='`google.list[obj].withNotebookMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notebook field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNotebook](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notebook` field.\n', args=[]),
  withNotebookMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          notebook+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSpark':: d.fn(help='`google.list[obj].withSpark` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spark field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSparkMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spark` field.\n', args=[]),
  withSpark(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          spark: value,
        },
      },
    },
  },
  '#withSparkMixin':: d.fn(help='`google.list[obj].withSparkMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spark field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSpark](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spark` field.\n', args=[]),
  withSparkMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          spark+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTaskId':: d.fn(help='`google.string.withTaskId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the task_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `task_id` field.\n', args=[]),
  withTaskId(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          task_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTriggerSpec':: d.fn(help='`google.list[obj].withTriggerSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the trigger_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTriggerSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `trigger_spec` field.\n', args=[]),
  withTriggerSpec(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          trigger_spec: value,
        },
      },
    },
  },
  '#withTriggerSpecMixin':: d.fn(help='`google.list[obj].withTriggerSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the trigger_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTriggerSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `trigger_spec` field.\n', args=[]),
  withTriggerSpecMixin(resourceLabel, value): {
    resource+: {
      google_dataplex_task+: {
        [resourceLabel]+: {
          trigger_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
