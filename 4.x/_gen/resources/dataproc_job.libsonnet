local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataproc_job', url='', help='`dataproc_job` represents the `google_dataproc_job` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  hadoop_config:: {
    logging_config:: {
      '#new':: d.fn(help='\n`google.dataproc_job.hadoop_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_job.hadoop_config.new` constructs a new object with attributes and blocks configured for the `hadoop_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `args` (`list`): The arguments to pass to the driver. When `null`, the `args` field will be omitted from the resulting object.\n  - `file_uris` (`list`): HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks. When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `main_class` (`string`): The class containing the main method of the driver. Must be in a provided jar or jar that is already on the classpath. Conflicts with main_jar_file_uri When `null`, the `main_class` field will be omitted from the resulting object.\n  - `main_jar_file_uri` (`string`): The HCFS URI of jar file containing the driver jar. Conflicts with main_class When `null`, the `main_jar_file_uri` field will be omitted from the resulting object.\n  - `properties` (`obj`): A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hadoop_config.logging_config.new](#fn-hadoop_configlogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `hadoop_config` sub block.\n', args=[]),
    new(
      archive_uris=null,
      args=null,
      file_uris=null,
      jar_file_uris=null,
      logging_config=null,
      main_class=null,
      main_jar_file_uri=null,
      properties=null
    ):: std.prune(a={
      archive_uris: archive_uris,
      args: args,
      file_uris: file_uris,
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      main_class: main_class,
      main_jar_file_uri: main_jar_file_uri,
      properties: properties,
    }),
  },
  hive_config:: {
    '#new':: d.fn(help='\n`google.dataproc_job.hive_config.new` constructs a new object with attributes and blocks configured for the `hive_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `continue_on_failure` (`bool`): Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false. When `null`, the `continue_on_failure` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `properties` (`obj`): A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `query_file_uri` (`string`): HCFS URI of file containing Hive script to execute as the job. Conflicts with query_list When `null`, the `query_file_uri` field will be omitted from the resulting object.\n  - `query_list` (`list`): The list of Hive queries or statements to execute as part of the job. Conflicts with query_file_uri When `null`, the `query_list` field will be omitted from the resulting object.\n  - `script_variables` (`obj`): Mapping of query variable names to values (equivalent to the Hive command: SET name=&#34;value&#34;;). When `null`, the `script_variables` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `hive_config` sub block.\n', args=[]),
    new(
      continue_on_failure=null,
      jar_file_uris=null,
      properties=null,
      query_file_uri=null,
      query_list=null,
      script_variables=null
    ):: std.prune(a={
      continue_on_failure: continue_on_failure,
      jar_file_uris: jar_file_uris,
      properties: properties,
      query_file_uri: query_file_uri,
      query_list: query_list,
      script_variables: script_variables,
    }),
  },
  '#new':: d.fn(help="\n`google.dataproc_job.new` injects a new `google_dataproc_job` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataproc_job.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataproc_job` using the reference:\n\n    $._ref.google_dataproc_job.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataproc_job.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `force_delete` (`bool`): By default, you can only delete inactive jobs within Dataproc. Setting this to true, and calling destroy, will ensure that the job is first cancelled before issuing the delete. When `null`, the `force_delete` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. The labels to associate with this job.\n\n\t\t\t\t**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\n\t\t\t\tPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): The project in which the cluster can be found and jobs subsequently run against. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Cloud Dataproc region. This essentially determines which clusters are available for this job to be submitted to. If not specified, defaults to global. When `null`, the `region` field will be omitted from the resulting object.\n  - `hadoop_config` (`list[obj]`): The config of Hadoop job When `null`, the `hadoop_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hadoop_config.new](#fn-hadoop_confignew) constructor.\n  - `hive_config` (`list[obj]`): The config of hive job When `null`, the `hive_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hive_config.new](#fn-hive_confignew) constructor.\n  - `pig_config` (`list[obj]`): The config of pag job. When `null`, the `pig_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pig_config.new](#fn-pig_confignew) constructor.\n  - `placement` (`list[obj]`): The config of job placement. When `null`, the `placement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.placement.new](#fn-placementnew) constructor.\n  - `presto_config` (`list[obj]`): The config of presto job When `null`, the `presto_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.presto_config.new](#fn-presto_confignew) constructor.\n  - `pyspark_config` (`list[obj]`): The config of pySpark job. When `null`, the `pyspark_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pyspark_config.new](#fn-pyspark_confignew) constructor.\n  - `reference` (`list[obj]`): The reference of the job When `null`, the `reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.reference.new](#fn-referencenew) constructor.\n  - `scheduling` (`list[obj]`): Optional. Job scheduling configuration. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.scheduling.new](#fn-schedulingnew) constructor.\n  - `spark_config` (`list[obj]`): The config of the Spark job. When `null`, the `spark_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.spark_config.new](#fn-spark_confignew) constructor.\n  - `sparksql_config` (`list[obj]`): The config of SparkSql job When `null`, the `sparksql_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.sparksql_config.new](#fn-sparksql_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    force_delete=null,
    hadoop_config=null,
    hive_config=null,
    labels=null,
    pig_config=null,
    placement=null,
    presto_config=null,
    project=null,
    pyspark_config=null,
    reference=null,
    region=null,
    scheduling=null,
    spark_config=null,
    sparksql_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      force_delete=force_delete,
      hadoop_config=hadoop_config,
      hive_config=hive_config,
      labels=labels,
      pig_config=pig_config,
      placement=placement,
      presto_config=presto_config,
      project=project,
      pyspark_config=pyspark_config,
      reference=reference,
      region=region,
      scheduling=scheduling,
      spark_config=spark_config,
      sparksql_config=sparksql_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataproc_job.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_job`\nTerraform resource.\n\nUnlike [google.dataproc_job.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `force_delete` (`bool`): By default, you can only delete inactive jobs within Dataproc. Setting this to true, and calling destroy, will ensure that the job is first cancelled before issuing the delete. When `null`, the `force_delete` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. The labels to associate with this job.\n\n\t\t\t\t**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\n\t\t\t\tPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): The project in which the cluster can be found and jobs subsequently run against. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Cloud Dataproc region. This essentially determines which clusters are available for this job to be submitted to. If not specified, defaults to global. When `null`, the `region` field will be omitted from the resulting object.\n  - `hadoop_config` (`list[obj]`): The config of Hadoop job When `null`, the `hadoop_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hadoop_config.new](#fn-hadoop_confignew) constructor.\n  - `hive_config` (`list[obj]`): The config of hive job When `null`, the `hive_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.hive_config.new](#fn-hive_confignew) constructor.\n  - `pig_config` (`list[obj]`): The config of pag job. When `null`, the `pig_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pig_config.new](#fn-pig_confignew) constructor.\n  - `placement` (`list[obj]`): The config of job placement. When `null`, the `placement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.placement.new](#fn-placementnew) constructor.\n  - `presto_config` (`list[obj]`): The config of presto job When `null`, the `presto_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.presto_config.new](#fn-presto_confignew) constructor.\n  - `pyspark_config` (`list[obj]`): The config of pySpark job. When `null`, the `pyspark_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pyspark_config.new](#fn-pyspark_confignew) constructor.\n  - `reference` (`list[obj]`): The reference of the job When `null`, the `reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.reference.new](#fn-referencenew) constructor.\n  - `scheduling` (`list[obj]`): Optional. Job scheduling configuration. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.scheduling.new](#fn-schedulingnew) constructor.\n  - `spark_config` (`list[obj]`): The config of the Spark job. When `null`, the `spark_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.spark_config.new](#fn-spark_confignew) constructor.\n  - `sparksql_config` (`list[obj]`): The config of SparkSql job When `null`, the `sparksql_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.sparksql_config.new](#fn-sparksql_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_job` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    force_delete=null,
    hadoop_config=null,
    hive_config=null,
    labels=null,
    pig_config=null,
    placement=null,
    presto_config=null,
    project=null,
    pyspark_config=null,
    reference=null,
    region=null,
    scheduling=null,
    spark_config=null,
    sparksql_config=null,
    timeouts=null
  ):: std.prune(a={
    force_delete: force_delete,
    hadoop_config: hadoop_config,
    hive_config: hive_config,
    labels: labels,
    pig_config: pig_config,
    placement: placement,
    presto_config: presto_config,
    project: project,
    pyspark_config: pyspark_config,
    reference: reference,
    region: region,
    scheduling: scheduling,
    spark_config: spark_config,
    sparksql_config: sparksql_config,
    timeouts: timeouts,
  }),
  pig_config:: {
    logging_config:: {
      '#new':: d.fn(help='\n`google.dataproc_job.pig_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_job.pig_config.new` constructs a new object with attributes and blocks configured for the `pig_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `continue_on_failure` (`bool`): Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false. When `null`, the `continue_on_failure` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `properties` (`obj`): A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `query_file_uri` (`string`): HCFS URI of file containing Hive script to execute as the job. Conflicts with query_list When `null`, the `query_file_uri` field will be omitted from the resulting object.\n  - `query_list` (`list`): The list of Hive queries or statements to execute as part of the job. Conflicts with query_file_uri When `null`, the `query_list` field will be omitted from the resulting object.\n  - `script_variables` (`obj`): Mapping of query variable names to values (equivalent to the Pig command: name=[value]). When `null`, the `script_variables` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pig_config.logging_config.new](#fn-pig_configlogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `pig_config` sub block.\n', args=[]),
    new(
      continue_on_failure=null,
      jar_file_uris=null,
      logging_config=null,
      properties=null,
      query_file_uri=null,
      query_list=null,
      script_variables=null
    ):: std.prune(a={
      continue_on_failure: continue_on_failure,
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      properties: properties,
      query_file_uri: query_file_uri,
      query_list: query_list,
      script_variables: script_variables,
    }),
  },
  placement:: {
    '#new':: d.fn(help='\n`google.dataproc_job.placement.new` constructs a new object with attributes and blocks configured for the `placement`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_name` (`string`): The name of the cluster where the job will be submitted\n\n**Returns**:\n  - An attribute object that represents the `placement` sub block.\n', args=[]),
    new(
      cluster_name
    ):: std.prune(a={
      cluster_name: cluster_name,
    }),
  },
  presto_config:: {
    logging_config:: {
      '#new':: d.fn(help='\n`google.dataproc_job.presto_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_job.presto_config.new` constructs a new object with attributes and blocks configured for the `presto_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_tags` (`list`): Presto client tags to attach to this query. When `null`, the `client_tags` field will be omitted from the resulting object.\n  - `continue_on_failure` (`bool`): Whether to continue executing queries if a query fails. Setting to true can be useful when executing independent parallel queries. Defaults to false. When `null`, the `continue_on_failure` field will be omitted from the resulting object.\n  - `output_format` (`string`): The format in which query output will be displayed. See the Presto documentation for supported output formats. When `null`, the `output_format` field will be omitted from the resulting object.\n  - `properties` (`obj`): A mapping of property names to values. Used to set Presto session properties Equivalent to using the --session flag in the Presto CLI. When `null`, the `properties` field will be omitted from the resulting object.\n  - `query_file_uri` (`string`): The HCFS URI of the script that contains SQL queries. Conflicts with query_list When `null`, the `query_file_uri` field will be omitted from the resulting object.\n  - `query_list` (`list`): The list of SQL queries or statements to execute as part of the job. Conflicts with query_file_uri When `null`, the `query_list` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.presto_config.logging_config.new](#fn-presto_configlogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `presto_config` sub block.\n', args=[]),
    new(
      client_tags=null,
      continue_on_failure=null,
      logging_config=null,
      output_format=null,
      properties=null,
      query_file_uri=null,
      query_list=null
    ):: std.prune(a={
      client_tags: client_tags,
      continue_on_failure: continue_on_failure,
      logging_config: logging_config,
      output_format: output_format,
      properties: properties,
      query_file_uri: query_file_uri,
      query_list: query_list,
    }),
  },
  pyspark_config:: {
    logging_config:: {
      '#new':: d.fn(help='\n`google.dataproc_job.pyspark_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_job.pyspark_config.new` constructs a new object with attributes and blocks configured for the `pyspark_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): Optional. HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `args` (`list`): Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission When `null`, the `args` field will be omitted from the resulting object.\n  - `file_uris` (`list`): Optional. HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `main_python_file_uri` (`string`): Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file\n  - `properties` (`obj`): Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code When `null`, the `properties` field will be omitted from the resulting object.\n  - `python_file_uris` (`list`): Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip When `null`, the `python_file_uris` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.pyspark_config.logging_config.new](#fn-pyspark_configlogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `pyspark_config` sub block.\n', args=[]),
    new(
      main_python_file_uri,
      archive_uris=null,
      args=null,
      file_uris=null,
      jar_file_uris=null,
      logging_config=null,
      properties=null,
      python_file_uris=null
    ):: std.prune(a={
      archive_uris: archive_uris,
      args: args,
      file_uris: file_uris,
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      main_python_file_uri: main_python_file_uri,
      properties: properties,
      python_file_uris: python_file_uris,
    }),
  },
  reference:: {
    '#new':: d.fn(help='\n`google.dataproc_job.reference.new` constructs a new object with attributes and blocks configured for the `reference`\nTerraform sub block.\n\n\n\n**Args**:\n  - `job_id` (`string`): The job ID, which must be unique within the project. The job ID is generated by the server upon job submission or provided by the user as a means to perform retries without creating duplicate jobs When `null`, the `job_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `reference` sub block.\n', args=[]),
    new(
      job_id=null
    ):: std.prune(a={
      job_id: job_id,
    }),
  },
  scheduling:: {
    '#new':: d.fn(help='\n`google.dataproc_job.scheduling.new` constructs a new object with attributes and blocks configured for the `scheduling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_failures_per_hour` (`number`): Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.\n  - `max_failures_total` (`number`): Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.\n\n**Returns**:\n  - An attribute object that represents the `scheduling` sub block.\n', args=[]),
    new(
      max_failures_per_hour,
      max_failures_total
    ):: std.prune(a={
      max_failures_per_hour: max_failures_per_hour,
      max_failures_total: max_failures_total,
    }),
  },
  spark_config:: {
    logging_config:: {
      '#new':: d.fn(help='\n`google.dataproc_job.spark_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_job.spark_config.new` constructs a new object with attributes and blocks configured for the `spark_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `args` (`list`): The arguments to pass to the driver. When `null`, the `args` field will be omitted from the resulting object.\n  - `file_uris` (`list`): HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks. When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `main_class` (`string`): The class containing the main method of the driver. Must be in a provided jar or jar that is already on the classpath. Conflicts with main_jar_file_uri When `null`, the `main_class` field will be omitted from the resulting object.\n  - `main_jar_file_uri` (`string`): The HCFS URI of jar file containing the driver jar. Conflicts with main_class When `null`, the `main_jar_file_uri` field will be omitted from the resulting object.\n  - `properties` (`obj`): A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.spark_config.logging_config.new](#fn-spark_configlogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spark_config` sub block.\n', args=[]),
    new(
      archive_uris=null,
      args=null,
      file_uris=null,
      jar_file_uris=null,
      logging_config=null,
      main_class=null,
      main_jar_file_uri=null,
      properties=null
    ):: std.prune(a={
      archive_uris: archive_uris,
      args: args,
      file_uris: file_uris,
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      main_class: main_class,
      main_jar_file_uri: main_jar_file_uri,
      properties: properties,
    }),
  },
  sparksql_config:: {
    logging_config:: {
      '#new':: d.fn(help='\n`google.dataproc_job.sparksql_config.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): Optional. The per-package log levels for the driver. This may include &#39;root&#39; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39;.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
      new(
        driver_log_levels
      ):: std.prune(a={
        driver_log_levels: driver_log_levels,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_job.sparksql_config.new` constructs a new object with attributes and blocks configured for the `sparksql_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `jar_file_uris` (`list`): HCFS URIs of jar files to be added to the Spark CLASSPATH. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `properties` (`obj`): A mapping of property names to values, used to configure Spark SQL&#39;s SparkConf. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. When `null`, the `properties` field will be omitted from the resulting object.\n  - `query_file_uri` (`string`): The HCFS URI of the script that contains SQL queries. Conflicts with query_list When `null`, the `query_file_uri` field will be omitted from the resulting object.\n  - `query_list` (`list`): The list of SQL queries or statements to execute as part of the job. Conflicts with query_file_uri When `null`, the `query_list` field will be omitted from the resulting object.\n  - `script_variables` (`obj`): Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=&#34;value&#34;;). When `null`, the `script_variables` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): The runtime logging config of the job When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_job.sparksql_config.logging_config.new](#fn-sparksql_configlogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `sparksql_config` sub block.\n', args=[]),
    new(
      jar_file_uris=null,
      logging_config=null,
      properties=null,
      query_file_uri=null,
      query_list=null,
      script_variables=null
    ):: std.prune(a={
      jar_file_uris: jar_file_uris,
      logging_config: logging_config,
      properties: properties,
      query_file_uri: query_file_uri,
      query_list: query_list,
      script_variables: script_variables,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataproc_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withForceDelete':: d.fn(help='`google.bool.withForceDelete` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_delete field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_delete` field.\n', args=[]),
  withForceDelete(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          force_delete: value,
        },
      },
    },
  },
  '#withHadoopConfig':: d.fn(help='`google.list[obj].withHadoopConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hadoop_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHadoopConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hadoop_config` field.\n', args=[]),
  withHadoopConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          hadoop_config: value,
        },
      },
    },
  },
  '#withHadoopConfigMixin':: d.fn(help='`google.list[obj].withHadoopConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hadoop_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHadoopConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hadoop_config` field.\n', args=[]),
  withHadoopConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          hadoop_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHiveConfig':: d.fn(help='`google.list[obj].withHiveConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hive_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHiveConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hive_config` field.\n', args=[]),
  withHiveConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          hive_config: value,
        },
      },
    },
  },
  '#withHiveConfigMixin':: d.fn(help='`google.list[obj].withHiveConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hive_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHiveConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hive_config` field.\n', args=[]),
  withHiveConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          hive_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withPigConfig':: d.fn(help='`google.list[obj].withPigConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the pig_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPigConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `pig_config` field.\n', args=[]),
  withPigConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          pig_config: value,
        },
      },
    },
  },
  '#withPigConfigMixin':: d.fn(help='`google.list[obj].withPigConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the pig_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPigConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `pig_config` field.\n', args=[]),
  withPigConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          pig_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPlacement':: d.fn(help='`google.list[obj].withPlacement` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the placement field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPlacementMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `placement` field.\n', args=[]),
  withPlacement(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          placement: value,
        },
      },
    },
  },
  '#withPlacementMixin':: d.fn(help='`google.list[obj].withPlacementMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the placement field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPlacement](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `placement` field.\n', args=[]),
  withPlacementMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          placement+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPrestoConfig':: d.fn(help='`google.list[obj].withPrestoConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the presto_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPrestoConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `presto_config` field.\n', args=[]),
  withPrestoConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          presto_config: value,
        },
      },
    },
  },
  '#withPrestoConfigMixin':: d.fn(help='`google.list[obj].withPrestoConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the presto_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPrestoConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `presto_config` field.\n', args=[]),
  withPrestoConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          presto_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPysparkConfig':: d.fn(help='`google.list[obj].withPysparkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the pyspark_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPysparkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `pyspark_config` field.\n', args=[]),
  withPysparkConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          pyspark_config: value,
        },
      },
    },
  },
  '#withPysparkConfigMixin':: d.fn(help='`google.list[obj].withPysparkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the pyspark_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPysparkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `pyspark_config` field.\n', args=[]),
  withPysparkConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          pyspark_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withReference':: d.fn(help='`google.list[obj].withReference` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the reference field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withReferenceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `reference` field.\n', args=[]),
  withReference(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          reference: value,
        },
      },
    },
  },
  '#withReferenceMixin':: d.fn(help='`google.list[obj].withReferenceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the reference field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withReference](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `reference` field.\n', args=[]),
  withReferenceMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          reference+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withScheduling':: d.fn(help='`google.list[obj].withScheduling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSchedulingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling` field.\n', args=[]),
  withScheduling(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          scheduling: value,
        },
      },
    },
  },
  '#withSchedulingMixin':: d.fn(help='`google.list[obj].withSchedulingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withScheduling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling` field.\n', args=[]),
  withSchedulingMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          scheduling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSparkConfig':: d.fn(help='`google.list[obj].withSparkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spark_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSparkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spark_config` field.\n', args=[]),
  withSparkConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          spark_config: value,
        },
      },
    },
  },
  '#withSparkConfigMixin':: d.fn(help='`google.list[obj].withSparkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spark_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSparkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spark_config` field.\n', args=[]),
  withSparkConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          spark_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSparksqlConfig':: d.fn(help='`google.list[obj].withSparksqlConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sparksql_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSparksqlConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sparksql_config` field.\n', args=[]),
  withSparksqlConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          sparksql_config: value,
        },
      },
    },
  },
  '#withSparksqlConfigMixin':: d.fn(help='`google.list[obj].withSparksqlConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sparksql_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSparksqlConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sparksql_config` field.\n', args=[]),
  withSparksqlConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          sparksql_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
