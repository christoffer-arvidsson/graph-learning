??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
SparseTensorDenseMatMul
	a_indices"Tindices
a_values"T
a_shape	
b"T
product"T"	
Ttype"
Tindicestype0	:
2	"
	adjoint_abool( "
	adjoint_bbool( 
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
gcn_10/gcn_conv_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? **
shared_namegcn_10/gcn_conv_25/kernel
?
-gcn_10/gcn_conv_25/kernel/Read/ReadVariableOpReadVariableOpgcn_10/gcn_conv_25/kernel*
_output_shapes
:	? *
dtype0
?
gcn_10/gcn_conv_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namegcn_10/gcn_conv_25/bias

+gcn_10/gcn_conv_25/bias/Read/ReadVariableOpReadVariableOpgcn_10/gcn_conv_25/bias*
_output_shapes
: *
dtype0
?
gcn_10/gcn_conv_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_namegcn_10/gcn_conv_26/kernel
?
-gcn_10/gcn_conv_26/kernel/Read/ReadVariableOpReadVariableOpgcn_10/gcn_conv_26/kernel*
_output_shapes

: *
dtype0
?
gcn_10/gcn_conv_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namegcn_10/gcn_conv_26/bias

+gcn_10/gcn_conv_26/bias/Read/ReadVariableOpReadVariableOpgcn_10/gcn_conv_26/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
 Adam/gcn_10/gcn_conv_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *1
shared_name" Adam/gcn_10/gcn_conv_25/kernel/m
?
4Adam/gcn_10/gcn_conv_25/kernel/m/Read/ReadVariableOpReadVariableOp Adam/gcn_10/gcn_conv_25/kernel/m*
_output_shapes
:	? *
dtype0
?
Adam/gcn_10/gcn_conv_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/gcn_10/gcn_conv_25/bias/m
?
2Adam/gcn_10/gcn_conv_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/gcn_10/gcn_conv_25/bias/m*
_output_shapes
: *
dtype0
?
 Adam/gcn_10/gcn_conv_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/gcn_10/gcn_conv_26/kernel/m
?
4Adam/gcn_10/gcn_conv_26/kernel/m/Read/ReadVariableOpReadVariableOp Adam/gcn_10/gcn_conv_26/kernel/m*
_output_shapes

: *
dtype0
?
Adam/gcn_10/gcn_conv_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/gcn_10/gcn_conv_26/bias/m
?
2Adam/gcn_10/gcn_conv_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/gcn_10/gcn_conv_26/bias/m*
_output_shapes
:*
dtype0
?
 Adam/gcn_10/gcn_conv_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *1
shared_name" Adam/gcn_10/gcn_conv_25/kernel/v
?
4Adam/gcn_10/gcn_conv_25/kernel/v/Read/ReadVariableOpReadVariableOp Adam/gcn_10/gcn_conv_25/kernel/v*
_output_shapes
:	? *
dtype0
?
Adam/gcn_10/gcn_conv_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/gcn_10/gcn_conv_25/bias/v
?
2Adam/gcn_10/gcn_conv_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/gcn_10/gcn_conv_25/bias/v*
_output_shapes
: *
dtype0
?
 Adam/gcn_10/gcn_conv_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/gcn_10/gcn_conv_26/kernel/v
?
4Adam/gcn_10/gcn_conv_26/kernel/v/Read/ReadVariableOpReadVariableOp Adam/gcn_10/gcn_conv_26/kernel/v*
_output_shapes

: *
dtype0
?
Adam/gcn_10/gcn_conv_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/gcn_10/gcn_conv_26/bias/v
?
2Adam/gcn_10/gcn_conv_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/gcn_10/gcn_conv_26/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
dropout
gcn0
classification
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
R

	variables
trainable_variables
regularization_losses
	keras_api
y
kwargs_keys

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
y
kwargs_keys

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
 learning_ratem@mAmBmCvDvEvFvG

0
1
2
3

0
1
2
3
 
?
!layer_regularization_losses
	variables
"layer_metrics
#non_trainable_variables

$layers
%metrics
trainable_variables
regularization_losses
 
 
 
 
?
&layer_regularization_losses

	variables
'layer_metrics
(non_trainable_variables

)layers
*metrics
trainable_variables
regularization_losses
 
US
VARIABLE_VALUEgcn_10/gcn_conv_25/kernel&gcn0/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEgcn_10/gcn_conv_25/bias$gcn0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
+layer_regularization_losses
	variables
,layer_metrics
-non_trainable_variables

.layers
/metrics
trainable_variables
regularization_losses
 
_]
VARIABLE_VALUEgcn_10/gcn_conv_26/kernel0classification/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEgcn_10/gcn_conv_26/bias.classification/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
0layer_regularization_losses
	variables
1layer_metrics
2non_trainable_variables

3layers
4metrics
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

0
1
2

50
61
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	7total
	8count
9	variables
:	keras_api
D
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

70
81

9	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

>	variables
xv
VARIABLE_VALUE Adam/gcn_10/gcn_conv_25/kernel/mBgcn0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/gcn_10/gcn_conv_25/bias/m@gcn0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/gcn_10/gcn_conv_26/kernel/mLclassification/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/gcn_10/gcn_conv_26/bias/mJclassification/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gcn_10/gcn_conv_25/kernel/vBgcn0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/gcn_10/gcn_conv_25/bias/v@gcn0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/gcn_10/gcn_conv_26/kernel/vLclassification/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/gcn_10/gcn_conv_26/bias/vJclassification/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_args_0Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
{
serving_default_args_0_1Placeholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
s
serving_default_args_0_2Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
a
serving_default_args_0_3Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_0_1serving_default_args_0_2serving_default_args_0_3gcn_10/gcn_conv_25/kernelgcn_10/gcn_conv_25/biasgcn_10/gcn_conv_26/kernelgcn_10/gcn_conv_26/bias*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2695089
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-gcn_10/gcn_conv_25/kernel/Read/ReadVariableOp+gcn_10/gcn_conv_25/bias/Read/ReadVariableOp-gcn_10/gcn_conv_26/kernel/Read/ReadVariableOp+gcn_10/gcn_conv_26/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/gcn_10/gcn_conv_25/kernel/m/Read/ReadVariableOp2Adam/gcn_10/gcn_conv_25/bias/m/Read/ReadVariableOp4Adam/gcn_10/gcn_conv_26/kernel/m/Read/ReadVariableOp2Adam/gcn_10/gcn_conv_26/bias/m/Read/ReadVariableOp4Adam/gcn_10/gcn_conv_25/kernel/v/Read/ReadVariableOp2Adam/gcn_10/gcn_conv_25/bias/v/Read/ReadVariableOp4Adam/gcn_10/gcn_conv_26/kernel/v/Read/ReadVariableOp2Adam/gcn_10/gcn_conv_26/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_2695346
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamegcn_10/gcn_conv_25/kernelgcn_10/gcn_conv_25/biasgcn_10/gcn_conv_26/kernelgcn_10/gcn_conv_26/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1 Adam/gcn_10/gcn_conv_25/kernel/mAdam/gcn_10/gcn_conv_25/bias/m Adam/gcn_10/gcn_conv_26/kernel/mAdam/gcn_10/gcn_conv_26/bias/m Adam/gcn_10/gcn_conv_25/kernel/vAdam/gcn_10/gcn_conv_25/bias/v Adam/gcn_10/gcn_conv_26/kernel/vAdam/gcn_10/gcn_conv_26/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_2695419ŝ
?	
?
(__inference_gcn_10_layer_call_fn_2695176
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gcn_10_layer_call_and_return_conditional_losses_26950362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_2695089

args_0
args_0_1	
args_0_2
args_0_3	
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0args_0_1args_0_2args_0_3unknown	unknown_0	unknown_1	unknown_2*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_26948882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0:QM
'
_output_shapes
:?????????
"
_user_specified_name
args_0_1:MI
#
_output_shapes
:?????????
"
_user_specified_name
args_0_2:D@

_output_shapes
:
"
_user_specified_name
args_0_3
?	
?
-__inference_gcn_conv_25_layer_call_fn_2695230
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gcn_conv_25_layer_call_and_return_conditional_losses_26949402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????:?????????:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
?
H__inference_gcn_conv_25_layer_call_and_return_conditional_losses_2695218
inputs_0

inputs	
inputs_1
inputs_2	"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2MatMul:product:0*
T0*'
_output_shapes
:????????? 21
/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAdd9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????:?????????:?????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?Z
?
#__inference__traced_restore_2695419
file_prefix.
*assignvariableop_gcn_10_gcn_conv_25_kernel.
*assignvariableop_1_gcn_10_gcn_conv_25_bias0
,assignvariableop_2_gcn_10_gcn_conv_26_kernel.
*assignvariableop_3_gcn_10_gcn_conv_26_bias 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rate
assignvariableop_9_total
assignvariableop_10_count
assignvariableop_11_total_1
assignvariableop_12_count_18
4assignvariableop_13_adam_gcn_10_gcn_conv_25_kernel_m6
2assignvariableop_14_adam_gcn_10_gcn_conv_25_bias_m8
4assignvariableop_15_adam_gcn_10_gcn_conv_26_kernel_m6
2assignvariableop_16_adam_gcn_10_gcn_conv_26_bias_m8
4assignvariableop_17_adam_gcn_10_gcn_conv_25_kernel_v6
2assignvariableop_18_adam_gcn_10_gcn_conv_25_bias_v8
4assignvariableop_19_adam_gcn_10_gcn_conv_26_kernel_v6
2assignvariableop_20_adam_gcn_10_gcn_conv_26_bias_v
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B&gcn0/kernel/.ATTRIBUTES/VARIABLE_VALUEB$gcn0/bias/.ATTRIBUTES/VARIABLE_VALUEB0classification/kernel/.ATTRIBUTES/VARIABLE_VALUEB.classification/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBgcn0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB@gcn0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLclassification/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJclassification/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBgcn0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB@gcn0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLclassification/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJclassification/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp*assignvariableop_gcn_10_gcn_conv_25_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp*assignvariableop_1_gcn_10_gcn_conv_25_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_gcn_10_gcn_conv_26_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp*assignvariableop_3_gcn_10_gcn_conv_26_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp4assignvariableop_13_adam_gcn_10_gcn_conv_25_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp2assignvariableop_14_adam_gcn_10_gcn_conv_25_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp4assignvariableop_15_adam_gcn_10_gcn_conv_26_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_gcn_10_gcn_conv_26_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_gcn_10_gcn_conv_25_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_gcn_10_gcn_conv_25_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_gcn_10_gcn_conv_26_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gcn_10_gcn_conv_26_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21?
Identity_22IdentityIdentity_21:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_22"#
identity_22Identity_22:output:0*i
_input_shapesX
V: :::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
(__inference_gcn_10_layer_call_fn_2695160
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gcn_10_layer_call_and_return_conditional_losses_26950362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
?
H__inference_gcn_conv_26_layer_call_and_return_conditional_losses_2695245
inputs_0

inputs	
inputs_1
inputs_2	"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2MatMul:product:0*
T0*'
_output_shapes
:?????????21
/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAdd9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:????????? :?????????:?????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
f
-__inference_dropout_127_layer_call_fn_2695198

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_127_layer_call_and_return_conditional_losses_26949072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_gcn_10_layer_call_and_return_conditional_losses_2695036

inputs
inputs_1	
inputs_2
inputs_3	
gcn_conv_25_2695025
gcn_conv_25_2695027
gcn_conv_26_2695030
gcn_conv_26_2695032
identity??#gcn_conv_25/StatefulPartitionedCall?#gcn_conv_26/StatefulPartitionedCall?
dropout_127/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_127_layer_call_and_return_conditional_losses_26949122
dropout_127/PartitionedCall?
#gcn_conv_25/StatefulPartitionedCallStatefulPartitionedCall$dropout_127/PartitionedCall:output:0inputs_1inputs_2inputs_3gcn_conv_25_2695025gcn_conv_25_2695027*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gcn_conv_25_layer_call_and_return_conditional_losses_26949402%
#gcn_conv_25/StatefulPartitionedCall?
#gcn_conv_26/StatefulPartitionedCallStatefulPartitionedCall,gcn_conv_25/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3gcn_conv_26_2695030gcn_conv_26_2695032*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gcn_conv_26_layer_call_and_return_conditional_losses_26949742%
#gcn_conv_26/StatefulPartitionedCall?
IdentityIdentity,gcn_conv_26/StatefulPartitionedCall:output:0$^gcn_conv_25/StatefulPartitionedCall$^gcn_conv_26/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::2J
#gcn_conv_25/StatefulPartitionedCall#gcn_conv_25/StatefulPartitionedCall2J
#gcn_conv_26/StatefulPartitionedCall#gcn_conv_26/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?!
?
"__inference__wrapped_model_2694888

args_0
args_0_1	
args_0_2
args_0_3	5
1gcn_10_gcn_conv_25_matmul_readvariableop_resource6
2gcn_10_gcn_conv_25_biasadd_readvariableop_resource5
1gcn_10_gcn_conv_26_matmul_readvariableop_resource6
2gcn_10_gcn_conv_26_biasadd_readvariableop_resource
identity??)gcn_10/gcn_conv_25/BiasAdd/ReadVariableOp?(gcn_10/gcn_conv_25/MatMul/ReadVariableOp?)gcn_10/gcn_conv_26/BiasAdd/ReadVariableOp?(gcn_10/gcn_conv_26/MatMul/ReadVariableOp?
gcn_10/dropout_127/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
gcn_10/dropout_127/Identity?
(gcn_10/gcn_conv_25/MatMul/ReadVariableOpReadVariableOp1gcn_10_gcn_conv_25_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02*
(gcn_10/gcn_conv_25/MatMul/ReadVariableOp?
gcn_10/gcn_conv_25/MatMulMatMul$gcn_10/dropout_127/Identity:output:00gcn_10/gcn_conv_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
gcn_10/gcn_conv_25/MatMul?
Bgcn_10/gcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3#gcn_10/gcn_conv_25/MatMul:product:0*
T0*'
_output_shapes
:????????? 2D
Bgcn_10/gcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
)gcn_10/gcn_conv_25/BiasAdd/ReadVariableOpReadVariableOp2gcn_10_gcn_conv_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)gcn_10/gcn_conv_25/BiasAdd/ReadVariableOp?
gcn_10/gcn_conv_25/BiasAddBiasAddLgcn_10/gcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:01gcn_10/gcn_conv_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
gcn_10/gcn_conv_25/BiasAdd?
gcn_10/gcn_conv_25/ReluRelu#gcn_10/gcn_conv_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
gcn_10/gcn_conv_25/Relu?
(gcn_10/gcn_conv_26/MatMul/ReadVariableOpReadVariableOp1gcn_10_gcn_conv_26_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(gcn_10/gcn_conv_26/MatMul/ReadVariableOp?
gcn_10/gcn_conv_26/MatMulMatMul%gcn_10/gcn_conv_25/Relu:activations:00gcn_10/gcn_conv_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
gcn_10/gcn_conv_26/MatMul?
Bgcn_10/gcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3#gcn_10/gcn_conv_26/MatMul:product:0*
T0*'
_output_shapes
:?????????2D
Bgcn_10/gcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
)gcn_10/gcn_conv_26/BiasAdd/ReadVariableOpReadVariableOp2gcn_10_gcn_conv_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)gcn_10/gcn_conv_26/BiasAdd/ReadVariableOp?
gcn_10/gcn_conv_26/BiasAddBiasAddLgcn_10/gcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:01gcn_10/gcn_conv_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
gcn_10/gcn_conv_26/BiasAdd?
gcn_10/gcn_conv_26/SoftmaxSoftmax#gcn_10/gcn_conv_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
gcn_10/gcn_conv_26/Softmax?
IdentityIdentity$gcn_10/gcn_conv_26/Softmax:softmax:0*^gcn_10/gcn_conv_25/BiasAdd/ReadVariableOp)^gcn_10/gcn_conv_25/MatMul/ReadVariableOp*^gcn_10/gcn_conv_26/BiasAdd/ReadVariableOp)^gcn_10/gcn_conv_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::2V
)gcn_10/gcn_conv_25/BiasAdd/ReadVariableOp)gcn_10/gcn_conv_25/BiasAdd/ReadVariableOp2T
(gcn_10/gcn_conv_25/MatMul/ReadVariableOp(gcn_10/gcn_conv_25/MatMul/ReadVariableOp2V
)gcn_10/gcn_conv_26/BiasAdd/ReadVariableOp)gcn_10/gcn_conv_26/BiasAdd/ReadVariableOp2T
(gcn_10/gcn_conv_26/MatMul/ReadVariableOp(gcn_10/gcn_conv_26/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0:OK
'
_output_shapes
:?????????
 
_user_specified_nameargs_0:KG
#
_output_shapes
:?????????
 
_user_specified_nameargs_0:B>

_output_shapes
:
 
_user_specified_nameargs_0
?
I
-__inference_dropout_127_layer_call_fn_2695203

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_127_layer_call_and_return_conditional_losses_26949122
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
H__inference_dropout_127_layer_call_and_return_conditional_losses_2694907

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_gcn_conv_25_layer_call_and_return_conditional_losses_2694940

inputs
inputs_1	
inputs_2
inputs_3	"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputs_1inputs_2inputs_3MatMul:product:0*
T0*'
_output_shapes
:????????? 21
/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAdd9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????:?????????:?????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
f
H__inference_dropout_127_layer_call_and_return_conditional_losses_2694912

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_gcn_10_layer_call_and_return_conditional_losses_2695144
inputs_0

inputs	
inputs_1
inputs_2	.
*gcn_conv_25_matmul_readvariableop_resource/
+gcn_conv_25_biasadd_readvariableop_resource.
*gcn_conv_26_matmul_readvariableop_resource/
+gcn_conv_26_biasadd_readvariableop_resource
identity??"gcn_conv_25/BiasAdd/ReadVariableOp?!gcn_conv_25/MatMul/ReadVariableOp?"gcn_conv_26/BiasAdd/ReadVariableOp?!gcn_conv_26/MatMul/ReadVariableOpu
dropout_127/IdentityIdentityinputs_0*
T0*(
_output_shapes
:??????????2
dropout_127/Identity?
!gcn_conv_25/MatMul/ReadVariableOpReadVariableOp*gcn_conv_25_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02#
!gcn_conv_25/MatMul/ReadVariableOp?
gcn_conv_25/MatMulMatMuldropout_127/Identity:output:0)gcn_conv_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
gcn_conv_25/MatMul?
;gcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv_25/MatMul:product:0*
T0*'
_output_shapes
:????????? 2=
;gcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
"gcn_conv_25/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"gcn_conv_25/BiasAdd/ReadVariableOp?
gcn_conv_25/BiasAddBiasAddEgcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0*gcn_conv_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
gcn_conv_25/BiasAdd|
gcn_conv_25/ReluRelugcn_conv_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
gcn_conv_25/Relu?
!gcn_conv_26/MatMul/ReadVariableOpReadVariableOp*gcn_conv_26_matmul_readvariableop_resource*
_output_shapes

: *
dtype02#
!gcn_conv_26/MatMul/ReadVariableOp?
gcn_conv_26/MatMulMatMulgcn_conv_25/Relu:activations:0)gcn_conv_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
gcn_conv_26/MatMul?
;gcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv_26/MatMul:product:0*
T0*'
_output_shapes
:?????????2=
;gcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
"gcn_conv_26/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"gcn_conv_26/BiasAdd/ReadVariableOp?
gcn_conv_26/BiasAddBiasAddEgcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0*gcn_conv_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
gcn_conv_26/BiasAdd?
gcn_conv_26/SoftmaxSoftmaxgcn_conv_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
gcn_conv_26/Softmax?
IdentityIdentitygcn_conv_26/Softmax:softmax:0#^gcn_conv_25/BiasAdd/ReadVariableOp"^gcn_conv_25/MatMul/ReadVariableOp#^gcn_conv_26/BiasAdd/ReadVariableOp"^gcn_conv_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::2H
"gcn_conv_25/BiasAdd/ReadVariableOp"gcn_conv_25/BiasAdd/ReadVariableOp2F
!gcn_conv_25/MatMul/ReadVariableOp!gcn_conv_25/MatMul/ReadVariableOp2H
"gcn_conv_26/BiasAdd/ReadVariableOp"gcn_conv_26/BiasAdd/ReadVariableOp2F
!gcn_conv_26/MatMul/ReadVariableOp!gcn_conv_26/MatMul/ReadVariableOp:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
?
H__inference_gcn_conv_26_layer_call_and_return_conditional_losses_2694974

inputs
inputs_1	
inputs_2
inputs_3	"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputs_1inputs_2inputs_3MatMul:product:0*
T0*'
_output_shapes
:?????????21
/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAdd9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:????????? :?????????:?????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?3
?	
 __inference__traced_save_2695346
file_prefix8
4savev2_gcn_10_gcn_conv_25_kernel_read_readvariableop6
2savev2_gcn_10_gcn_conv_25_bias_read_readvariableop8
4savev2_gcn_10_gcn_conv_26_kernel_read_readvariableop6
2savev2_gcn_10_gcn_conv_26_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_adam_gcn_10_gcn_conv_25_kernel_m_read_readvariableop=
9savev2_adam_gcn_10_gcn_conv_25_bias_m_read_readvariableop?
;savev2_adam_gcn_10_gcn_conv_26_kernel_m_read_readvariableop=
9savev2_adam_gcn_10_gcn_conv_26_bias_m_read_readvariableop?
;savev2_adam_gcn_10_gcn_conv_25_kernel_v_read_readvariableop=
9savev2_adam_gcn_10_gcn_conv_25_bias_v_read_readvariableop?
;savev2_adam_gcn_10_gcn_conv_26_kernel_v_read_readvariableop=
9savev2_adam_gcn_10_gcn_conv_26_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B&gcn0/kernel/.ATTRIBUTES/VARIABLE_VALUEB$gcn0/bias/.ATTRIBUTES/VARIABLE_VALUEB0classification/kernel/.ATTRIBUTES/VARIABLE_VALUEB.classification/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBgcn0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB@gcn0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLclassification/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJclassification/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBgcn0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB@gcn0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLclassification/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJclassification/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_gcn_10_gcn_conv_25_kernel_read_readvariableop2savev2_gcn_10_gcn_conv_25_bias_read_readvariableop4savev2_gcn_10_gcn_conv_26_kernel_read_readvariableop2savev2_gcn_10_gcn_conv_26_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_gcn_10_gcn_conv_25_kernel_m_read_readvariableop9savev2_adam_gcn_10_gcn_conv_25_bias_m_read_readvariableop;savev2_adam_gcn_10_gcn_conv_26_kernel_m_read_readvariableop9savev2_adam_gcn_10_gcn_conv_26_bias_m_read_readvariableop;savev2_adam_gcn_10_gcn_conv_25_kernel_v_read_readvariableop9savev2_adam_gcn_10_gcn_conv_25_bias_v_read_readvariableop;savev2_adam_gcn_10_gcn_conv_26_kernel_v_read_readvariableop9savev2_adam_gcn_10_gcn_conv_26_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes{
y: :	? : : :: : : : : : : : : :	? : : ::	? : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
?	
?
-__inference_gcn_conv_26_layer_call_fn_2695257
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gcn_conv_26_layer_call_and_return_conditional_losses_26949742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:????????? :?????????:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
g
H__inference_dropout_127_layer_call_and_return_conditional_losses_2695188

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?'
?
C__inference_gcn_10_layer_call_and_return_conditional_losses_2695120
inputs_0

inputs	
inputs_1
inputs_2	.
*gcn_conv_25_matmul_readvariableop_resource/
+gcn_conv_25_biasadd_readvariableop_resource.
*gcn_conv_26_matmul_readvariableop_resource/
+gcn_conv_26_biasadd_readvariableop_resource
identity??"gcn_conv_25/BiasAdd/ReadVariableOp?!gcn_conv_25/MatMul/ReadVariableOp?"gcn_conv_26/BiasAdd/ReadVariableOp?!gcn_conv_26/MatMul/ReadVariableOp{
dropout_127/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_127/dropout/Const?
dropout_127/dropout/MulMulinputs_0"dropout_127/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_127/dropout/Muln
dropout_127/dropout/ShapeShapeinputs_0*
T0*
_output_shapes
:2
dropout_127/dropout/Shape?
0dropout_127/dropout/random_uniform/RandomUniformRandomUniform"dropout_127/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_127/dropout/random_uniform/RandomUniform?
"dropout_127/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_127/dropout/GreaterEqual/y?
 dropout_127/dropout/GreaterEqualGreaterEqual9dropout_127/dropout/random_uniform/RandomUniform:output:0+dropout_127/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_127/dropout/GreaterEqual?
dropout_127/dropout/CastCast$dropout_127/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_127/dropout/Cast?
dropout_127/dropout/Mul_1Muldropout_127/dropout/Mul:z:0dropout_127/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_127/dropout/Mul_1?
!gcn_conv_25/MatMul/ReadVariableOpReadVariableOp*gcn_conv_25_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02#
!gcn_conv_25/MatMul/ReadVariableOp?
gcn_conv_25/MatMulMatMuldropout_127/dropout/Mul_1:z:0)gcn_conv_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
gcn_conv_25/MatMul?
;gcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv_25/MatMul:product:0*
T0*'
_output_shapes
:????????? 2=
;gcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
"gcn_conv_25/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"gcn_conv_25/BiasAdd/ReadVariableOp?
gcn_conv_25/BiasAddBiasAddEgcn_conv_25/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0*gcn_conv_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
gcn_conv_25/BiasAdd|
gcn_conv_25/ReluRelugcn_conv_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
gcn_conv_25/Relu?
!gcn_conv_26/MatMul/ReadVariableOpReadVariableOp*gcn_conv_26_matmul_readvariableop_resource*
_output_shapes

: *
dtype02#
!gcn_conv_26/MatMul/ReadVariableOp?
gcn_conv_26/MatMulMatMulgcn_conv_25/Relu:activations:0)gcn_conv_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
gcn_conv_26/MatMul?
;gcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv_26/MatMul:product:0*
T0*'
_output_shapes
:?????????2=
;gcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMul?
"gcn_conv_26/BiasAdd/ReadVariableOpReadVariableOp+gcn_conv_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"gcn_conv_26/BiasAdd/ReadVariableOp?
gcn_conv_26/BiasAddBiasAddEgcn_conv_26/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0*gcn_conv_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
gcn_conv_26/BiasAdd?
gcn_conv_26/SoftmaxSoftmaxgcn_conv_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
gcn_conv_26/Softmax?
IdentityIdentitygcn_conv_26/Softmax:softmax:0#^gcn_conv_25/BiasAdd/ReadVariableOp"^gcn_conv_25/MatMul/ReadVariableOp#^gcn_conv_26/BiasAdd/ReadVariableOp"^gcn_conv_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::2H
"gcn_conv_25/BiasAdd/ReadVariableOp"gcn_conv_25/BiasAdd/ReadVariableOp2F
!gcn_conv_25/MatMul/ReadVariableOp!gcn_conv_25/MatMul/ReadVariableOp2H
"gcn_conv_26/BiasAdd/ReadVariableOp"gcn_conv_26/BiasAdd/ReadVariableOp2F
!gcn_conv_26/MatMul/ReadVariableOp!gcn_conv_26/MatMul/ReadVariableOp:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
f
H__inference_dropout_127_layer_call_and_return_conditional_losses_2695193

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
:
args_00
serving_default_args_0:0??????????
=
args_0_11
serving_default_args_0_1:0	?????????
9
args_0_2-
serving_default_args_0_2:0?????????
0
args_0_3$
serving_default_args_0_3:0	<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?g
?	
dropout
gcn0
classification
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
H_default_save_signature
*I&call_and_return_all_conditional_losses
J__call__"?
_tf_keras_model?{"class_name": "GCN", "name": "gcn_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "GCN"}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "sum", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}}, "metrics": null, "weighted_metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}}]], "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.009999999776482582, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

	variables
trainable_variables
regularization_losses
	keras_api
*K&call_and_return_all_conditional_losses
L__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_127", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_127", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?
kwargs_keys

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*M&call_and_return_all_conditional_losses
N__call__"?
_tf_keras_layer?{"class_name": "GCNConv", "name": "gcn_conv_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gcn_conv_25", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 32}, "build_input_shape": [{"class_name": "TensorShape", "items": [2708, 1433]}, {"class_name": "TensorShape", "items": [2708, 2708]}]}
?
kwargs_keys

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"?
_tf_keras_layer?{"class_name": "GCNConv", "name": "gcn_conv_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gcn_conv_26", "trainable": true, "dtype": "float32", "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 7}, "build_input_shape": [{"class_name": "TensorShape", "items": [2708, 32]}, {"class_name": "TensorShape", "items": [2708, 2708]}]}
?
iter

beta_1

beta_2
	decay
 learning_ratem@mAmBmCvDvEvFvG"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
!layer_regularization_losses
	variables
"layer_metrics
#non_trainable_variables

$layers
%metrics
trainable_variables
regularization_losses
J__call__
H_default_save_signature
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
,
Qserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
&layer_regularization_losses

	variables
'layer_metrics
(non_trainable_variables

)layers
*metrics
trainable_variables
regularization_losses
L__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*	? 2gcn_10/gcn_conv_25/kernel
%:# 2gcn_10/gcn_conv_25/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
+layer_regularization_losses
	variables
,layer_metrics
-non_trainable_variables

.layers
/metrics
trainable_variables
regularization_losses
N__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:) 2gcn_10/gcn_conv_26/kernel
%:#2gcn_10/gcn_conv_26/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0layer_regularization_losses
	variables
1layer_metrics
2non_trainable_variables

3layers
4metrics
trainable_variables
regularization_losses
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	7total
	8count
9	variables
:	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
.
70
81"
trackable_list_wrapper
-
9	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
1:/	? 2 Adam/gcn_10/gcn_conv_25/kernel/m
*:( 2Adam/gcn_10/gcn_conv_25/bias/m
0:. 2 Adam/gcn_10/gcn_conv_26/kernel/m
*:(2Adam/gcn_10/gcn_conv_26/bias/m
1:/	? 2 Adam/gcn_10/gcn_conv_25/kernel/v
*:( 2Adam/gcn_10/gcn_conv_25/bias/v
0:. 2 Adam/gcn_10/gcn_conv_26/kernel/v
*:(2Adam/gcn_10/gcn_conv_26/bias/v
?2?
"__inference__wrapped_model_2694888?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *]?Z
X?U
???????????
8?5?
???????????
?SparseTensorSpec
?2?
C__inference_gcn_10_layer_call_and_return_conditional_losses_2695144
C__inference_gcn_10_layer_call_and_return_conditional_losses_2695120?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_gcn_10_layer_call_fn_2695160
(__inference_gcn_10_layer_call_fn_2695176?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dropout_127_layer_call_and_return_conditional_losses_2695193
H__inference_dropout_127_layer_call_and_return_conditional_losses_2695188?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_127_layer_call_fn_2695203
-__inference_dropout_127_layer_call_fn_2695198?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_gcn_conv_25_layer_call_and_return_conditional_losses_2695218?
???
FullArgSpec
args?

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_gcn_conv_25_layer_call_fn_2695230?
???
FullArgSpec
args?

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_gcn_conv_26_layer_call_and_return_conditional_losses_2695245?
???
FullArgSpec
args?

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_gcn_conv_26_layer_call_fn_2695257?
???
FullArgSpec
args?

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2695089args_0args_0_1args_0_2args_0_3"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_2694888?y?v
o?l
j?g
#? 
args_0/0??????????
@?='?$
???????????????????
?SparseTensorSpec
? "3?0
.
output_1"?
output_1??????????
H__inference_dropout_127_layer_call_and_return_conditional_losses_2695188^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
H__inference_dropout_127_layer_call_and_return_conditional_losses_2695193^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
-__inference_dropout_127_layer_call_fn_2695198Q4?1
*?'
!?
inputs??????????
p
? "????????????
-__inference_dropout_127_layer_call_fn_2695203Q4?1
*?'
!?
inputs??????????
p 
? "????????????
C__inference_gcn_10_layer_call_and_return_conditional_losses_2695120?}?z
s?p
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
p
? "%?"
?
0?????????
? ?
C__inference_gcn_10_layer_call_and_return_conditional_losses_2695144?}?z
s?p
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
p 
? "%?"
?
0?????????
? ?
(__inference_gcn_10_layer_call_fn_2695160?}?z
s?p
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
p
? "???????????
(__inference_gcn_10_layer_call_fn_2695176?}?z
s?p
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
p 
? "???????????
H__inference_gcn_conv_25_layer_call_and_return_conditional_losses_2695218?y?v
o?l
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
? "%?"
?
0????????? 
? ?
-__inference_gcn_conv_25_layer_call_fn_2695230?y?v
o?l
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
? "?????????? ?
H__inference_gcn_conv_26_layer_call_and_return_conditional_losses_2695245?x?u
n?k
i?f
"?
inputs/0????????? 
@?='?$
???????????????????
?SparseTensorSpec
? "%?"
?
0?????????
? ?
-__inference_gcn_conv_26_layer_call_fn_2695257?x?u
n?k
i?f
"?
inputs/0????????? 
@?='?$
???????????????????
?SparseTensorSpec
? "???????????
%__inference_signature_wrapper_2695089????
? 
???
+
args_0!?
args_0??????????
.
args_0_1"?
args_0_1?????????	
*
args_0_2?
args_0_2?????????
!
args_0_3?
args_0_3	"3?0
.
output_1"?
output_1?????????