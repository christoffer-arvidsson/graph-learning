??%
?#?#
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
;
Elu
features"T
activations"T"
Ttype:
2
A
EnsureShape

input"T
output"T"
shapeshape"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
y
SparseReorder
input_indices	
input_values"T
input_shape	
output_indices	
output_values"T"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
UnsortedSegmentMax	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T"
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
?
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.4.12v2.4.0-49-g85c8b2a817f8??#
?
#gcn_improved_78/gat_conv_190/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#gcn_improved_78/gat_conv_190/kernel
?
7gcn_improved_78/gat_conv_190/kernel/Read/ReadVariableOpReadVariableOp#gcn_improved_78/gat_conv_190/kernel*#
_output_shapes
:?*
dtype0
?
-gcn_improved_78/gat_conv_190/attn_kernel_selfVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-gcn_improved_78/gat_conv_190/attn_kernel_self
?
Agcn_improved_78/gat_conv_190/attn_kernel_self/Read/ReadVariableOpReadVariableOp-gcn_improved_78/gat_conv_190/attn_kernel_self*"
_output_shapes
:*
dtype0
?
.gcn_improved_78/gat_conv_190/attn_kernel_neighVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.gcn_improved_78/gat_conv_190/attn_kernel_neigh
?
Bgcn_improved_78/gat_conv_190/attn_kernel_neigh/Read/ReadVariableOpReadVariableOp.gcn_improved_78/gat_conv_190/attn_kernel_neigh*"
_output_shapes
:*
dtype0
?
!gcn_improved_78/gat_conv_190/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!gcn_improved_78/gat_conv_190/bias
?
5gcn_improved_78/gat_conv_190/bias/Read/ReadVariableOpReadVariableOp!gcn_improved_78/gat_conv_190/bias*
_output_shapes
:@*
dtype0
?
#gcn_improved_78/gat_conv_191/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#gcn_improved_78/gat_conv_191/kernel
?
7gcn_improved_78/gat_conv_191/kernel/Read/ReadVariableOpReadVariableOp#gcn_improved_78/gat_conv_191/kernel*"
_output_shapes
:@*
dtype0
?
-gcn_improved_78/gat_conv_191/attn_kernel_selfVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-gcn_improved_78/gat_conv_191/attn_kernel_self
?
Agcn_improved_78/gat_conv_191/attn_kernel_self/Read/ReadVariableOpReadVariableOp-gcn_improved_78/gat_conv_191/attn_kernel_self*"
_output_shapes
:*
dtype0
?
.gcn_improved_78/gat_conv_191/attn_kernel_neighVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.gcn_improved_78/gat_conv_191/attn_kernel_neigh
?
Bgcn_improved_78/gat_conv_191/attn_kernel_neigh/Read/ReadVariableOpReadVariableOp.gcn_improved_78/gat_conv_191/attn_kernel_neigh*"
_output_shapes
:*
dtype0
?
!gcn_improved_78/gat_conv_191/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!gcn_improved_78/gat_conv_191/bias
?
5gcn_improved_78/gat_conv_191/bias/Read/ReadVariableOpReadVariableOp!gcn_improved_78/gat_conv_191/bias*
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
*Adam/gcn_improved_78/gat_conv_190/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/gcn_improved_78/gat_conv_190/kernel/m
?
>Adam/gcn_improved_78/gat_conv_190/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gcn_improved_78/gat_conv_190/kernel/m*#
_output_shapes
:?*
dtype0
?
4Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/m
?
HAdam/gcn_improved_78/gat_conv_190/attn_kernel_self/m/Read/ReadVariableOpReadVariableOp4Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/m*"
_output_shapes
:*
dtype0
?
5Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/m
?
IAdam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/m/Read/ReadVariableOpReadVariableOp5Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/m*"
_output_shapes
:*
dtype0
?
(Adam/gcn_improved_78/gat_conv_190/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(Adam/gcn_improved_78/gat_conv_190/bias/m
?
<Adam/gcn_improved_78/gat_conv_190/bias/m/Read/ReadVariableOpReadVariableOp(Adam/gcn_improved_78/gat_conv_190/bias/m*
_output_shapes
:@*
dtype0
?
*Adam/gcn_improved_78/gat_conv_191/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/gcn_improved_78/gat_conv_191/kernel/m
?
>Adam/gcn_improved_78/gat_conv_191/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gcn_improved_78/gat_conv_191/kernel/m*"
_output_shapes
:@*
dtype0
?
4Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/m
?
HAdam/gcn_improved_78/gat_conv_191/attn_kernel_self/m/Read/ReadVariableOpReadVariableOp4Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/m*"
_output_shapes
:*
dtype0
?
5Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/m
?
IAdam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/m/Read/ReadVariableOpReadVariableOp5Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/m*"
_output_shapes
:*
dtype0
?
(Adam/gcn_improved_78/gat_conv_191/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/gcn_improved_78/gat_conv_191/bias/m
?
<Adam/gcn_improved_78/gat_conv_191/bias/m/Read/ReadVariableOpReadVariableOp(Adam/gcn_improved_78/gat_conv_191/bias/m*
_output_shapes
:*
dtype0
?
*Adam/gcn_improved_78/gat_conv_190/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/gcn_improved_78/gat_conv_190/kernel/v
?
>Adam/gcn_improved_78/gat_conv_190/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gcn_improved_78/gat_conv_190/kernel/v*#
_output_shapes
:?*
dtype0
?
4Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/v
?
HAdam/gcn_improved_78/gat_conv_190/attn_kernel_self/v/Read/ReadVariableOpReadVariableOp4Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/v*"
_output_shapes
:*
dtype0
?
5Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/v
?
IAdam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/v/Read/ReadVariableOpReadVariableOp5Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/v*"
_output_shapes
:*
dtype0
?
(Adam/gcn_improved_78/gat_conv_190/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(Adam/gcn_improved_78/gat_conv_190/bias/v
?
<Adam/gcn_improved_78/gat_conv_190/bias/v/Read/ReadVariableOpReadVariableOp(Adam/gcn_improved_78/gat_conv_190/bias/v*
_output_shapes
:@*
dtype0
?
*Adam/gcn_improved_78/gat_conv_191/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/gcn_improved_78/gat_conv_191/kernel/v
?
>Adam/gcn_improved_78/gat_conv_191/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gcn_improved_78/gat_conv_191/kernel/v*"
_output_shapes
:@*
dtype0
?
4Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/v
?
HAdam/gcn_improved_78/gat_conv_191/attn_kernel_self/v/Read/ReadVariableOpReadVariableOp4Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/v*"
_output_shapes
:*
dtype0
?
5Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/v
?
IAdam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/v/Read/ReadVariableOpReadVariableOp5Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/v*"
_output_shapes
:*
dtype0
?
(Adam/gcn_improved_78/gat_conv_191/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/gcn_improved_78/gat_conv_191/bias/v
?
<Adam/gcn_improved_78/gat_conv_191/bias/v/Read/ReadVariableOpReadVariableOp(Adam/gcn_improved_78/gat_conv_191/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?6
value?6B?6 B?6
?
do1
gat0
do2
classification
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
R
	variables
trainable_variables
regularization_losses
	keras_api
?
kwargs_keys

kernel
attn_kernel_self
attn_kernel_neigh
attn_kernel_neighs
bias
dropout
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
?
kwargs_keys

kernel
attn_kernel_self
 attn_kernel_neigh
 attn_kernel_neighs
!bias
"dropout
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?
'iter

(beta_1

)beta_2
	*decay
+learning_ratembmcmdmemfmg mh!mivjvkvlvmvnvo vp!vq
8
0
1
2
3
4
5
 6
!7
8
0
1
2
3
4
5
 6
!7
 
?
,layer_regularization_losses
	variables
-layer_metrics
.non_trainable_variables

/layers
0metrics
trainable_variables
regularization_losses
 
 
 
 
?
1layer_regularization_losses
	variables
2layer_metrics
3non_trainable_variables

4layers
5metrics
trainable_variables
regularization_losses
 
_]
VARIABLE_VALUE#gcn_improved_78/gat_conv_190/kernel&gat0/kernel/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE-gcn_improved_78/gat_conv_190/attn_kernel_self0gat0/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.gcn_improved_78/gat_conv_190/attn_kernel_neigh1gat0/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUE!gcn_improved_78/gat_conv_190/bias$gat0/bias/.ATTRIBUTES/VARIABLE_VALUE
R
6	variables
7trainable_variables
8regularization_losses
9	keras_api

0
1
2
3

0
1
2
3
 
?
:layer_regularization_losses
	variables
;layer_metrics
<non_trainable_variables

=layers
>metrics
trainable_variables
regularization_losses
 
 
 
?
?layer_regularization_losses
	variables
@layer_metrics
Anon_trainable_variables

Blayers
Cmetrics
trainable_variables
regularization_losses
 
ig
VARIABLE_VALUE#gcn_improved_78/gat_conv_191/kernel0classification/kernel/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE-gcn_improved_78/gat_conv_191/attn_kernel_self:classification/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE.gcn_improved_78/gat_conv_191/attn_kernel_neigh;classification/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE!gcn_improved_78/gat_conv_191/bias.classification/bias/.ATTRIBUTES/VARIABLE_VALUE
R
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api

0
1
 2
!3

0
1
 2
!3
 
?
Hlayer_regularization_losses
#	variables
Ilayer_metrics
Jnon_trainable_variables

Klayers
Lmetrics
$trainable_variables
%regularization_losses
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

0
1
2
3

M0
N1
 
 
 
 
 
 
 
 
?
Olayer_regularization_losses
6	variables
Player_metrics
Qnon_trainable_variables

Rlayers
Smetrics
7trainable_variables
8regularization_losses
 
 
 

0
 
 
 
 
 
 
 
 
 
?
Tlayer_regularization_losses
D	variables
Ulayer_metrics
Vnon_trainable_variables

Wlayers
Xmetrics
Etrainable_variables
Fregularization_losses
 
 
 

"0
 
4
	Ytotal
	Zcount
[	variables
\	keras_api
D
	]total
	^count
_
_fn_kwargs
`	variables
a	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Y0
Z1

[	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

]0
^1

`	variables
??
VARIABLE_VALUE*Adam/gcn_improved_78/gat_conv_190/kernel/mBgat0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/mLgat0/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/mMgat0/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE(Adam/gcn_improved_78/gat_conv_190/bias/m@gat0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/gcn_improved_78/gat_conv_191/kernel/mLclassification/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/mVclassification/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/mWclassification/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/gcn_improved_78/gat_conv_191/bias/mJclassification/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/gcn_improved_78/gat_conv_190/kernel/vBgat0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/vLgat0/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/vMgat0/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE(Adam/gcn_improved_78/gat_conv_190/bias/v@gat0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/gcn_improved_78/gat_conv_191/kernel/vLclassification/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/vVclassification/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/vWclassification/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/gcn_improved_78/gat_conv_191/bias/vJclassification/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
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
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_0_1serving_default_args_0_2serving_default_args_0_3#gcn_improved_78/gat_conv_190/kernel-gcn_improved_78/gat_conv_190/attn_kernel_self.gcn_improved_78/gat_conv_190/attn_kernel_neigh!gcn_improved_78/gat_conv_190/bias#gcn_improved_78/gat_conv_191/kernel-gcn_improved_78/gat_conv_191/attn_kernel_self.gcn_improved_78/gat_conv_191/attn_kernel_neigh!gcn_improved_78/gat_conv_191/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2759225
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename7gcn_improved_78/gat_conv_190/kernel/Read/ReadVariableOpAgcn_improved_78/gat_conv_190/attn_kernel_self/Read/ReadVariableOpBgcn_improved_78/gat_conv_190/attn_kernel_neigh/Read/ReadVariableOp5gcn_improved_78/gat_conv_190/bias/Read/ReadVariableOp7gcn_improved_78/gat_conv_191/kernel/Read/ReadVariableOpAgcn_improved_78/gat_conv_191/attn_kernel_self/Read/ReadVariableOpBgcn_improved_78/gat_conv_191/attn_kernel_neigh/Read/ReadVariableOp5gcn_improved_78/gat_conv_191/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp>Adam/gcn_improved_78/gat_conv_190/kernel/m/Read/ReadVariableOpHAdam/gcn_improved_78/gat_conv_190/attn_kernel_self/m/Read/ReadVariableOpIAdam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/m/Read/ReadVariableOp<Adam/gcn_improved_78/gat_conv_190/bias/m/Read/ReadVariableOp>Adam/gcn_improved_78/gat_conv_191/kernel/m/Read/ReadVariableOpHAdam/gcn_improved_78/gat_conv_191/attn_kernel_self/m/Read/ReadVariableOpIAdam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/m/Read/ReadVariableOp<Adam/gcn_improved_78/gat_conv_191/bias/m/Read/ReadVariableOp>Adam/gcn_improved_78/gat_conv_190/kernel/v/Read/ReadVariableOpHAdam/gcn_improved_78/gat_conv_190/attn_kernel_self/v/Read/ReadVariableOpIAdam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/v/Read/ReadVariableOp<Adam/gcn_improved_78/gat_conv_190/bias/v/Read/ReadVariableOp>Adam/gcn_improved_78/gat_conv_191/kernel/v/Read/ReadVariableOpHAdam/gcn_improved_78/gat_conv_191/attn_kernel_self/v/Read/ReadVariableOpIAdam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/v/Read/ReadVariableOp<Adam/gcn_improved_78/gat_conv_191/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
 __inference__traced_save_2761168
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename#gcn_improved_78/gat_conv_190/kernel-gcn_improved_78/gat_conv_190/attn_kernel_self.gcn_improved_78/gat_conv_190/attn_kernel_neigh!gcn_improved_78/gat_conv_190/bias#gcn_improved_78/gat_conv_191/kernel-gcn_improved_78/gat_conv_191/attn_kernel_self.gcn_improved_78/gat_conv_191/attn_kernel_neigh!gcn_improved_78/gat_conv_191/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1*Adam/gcn_improved_78/gat_conv_190/kernel/m4Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/m5Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/m(Adam/gcn_improved_78/gat_conv_190/bias/m*Adam/gcn_improved_78/gat_conv_191/kernel/m4Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/m5Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/m(Adam/gcn_improved_78/gat_conv_191/bias/m*Adam/gcn_improved_78/gat_conv_190/kernel/v4Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/v5Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/v(Adam/gcn_improved_78/gat_conv_190/bias/v*Adam/gcn_improved_78/gat_conv_191/kernel/v4Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/v5Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/v(Adam/gcn_improved_78/gat_conv_191/bias/v*-
Tin&
$2"*
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
#__inference__traced_restore_2761277??"
?
?
__inference_loss_fn_0_2760966R
Ngcn_improved_78_gat_conv_190_kernel_regularizer_square_readvariableop_resource
identity??Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpReadVariableOpNgcn_improved_78_gat_conv_190_kernel_regularizer_square_readvariableop_resource*#
_output_shapes
:?*
dtype02G
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_190/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:?28
6gcn_improved_78/gat_conv_190/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_190/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_190/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_190/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mul?
IdentityIdentity7gcn_improved_78/gat_conv_190/kernel/Regularizer/mul:z:0F^gcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_2_2760988]
Ygcn_improved_78_gat_conv_190_attn_kernel_neigh_regularizer_square_readvariableop_resource
identity??Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOpYgcn_improved_78_gat_conv_190_attn_kernel_neigh_regularizer_square_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul?
IdentityIdentityBgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul:z:0Q^gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp
?
I
-__inference_dropout_129_layer_call_fn_2760528

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_129_layer_call_and_return_conditional_losses_27584682
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_4_2761010R
Ngcn_improved_78_gat_conv_191_kernel_regularizer_square_readvariableop_resource
identity??Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpReadVariableOpNgcn_improved_78_gat_conv_191_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:@*
dtype02G
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_191/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@28
6gcn_improved_78/gat_conv_191/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_191/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_191/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_191/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mul?
IdentityIdentity7gcn_improved_78/gat_conv_191/kernel/Regularizer/mul:z:0F^gcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp
??
?
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_2758852

inputs
inputs_1	
inputs_2
inputs_3	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource!
add_2_readvariableop_resource
identity??Reshape/ReadVariableOp?add_2/ReadVariableOp?Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?transpose/ReadVariableOp?transpose_1/ReadVariableOp?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:@*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:@2	
Reshape?
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose?
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1T
ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0	2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputs_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2?
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim?
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1?
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiples?
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/Tile?
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stack?
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1?
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2?
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_slice?
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stack?
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1?
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2?
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mul?
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stack?
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1?
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2?
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis?
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concat?
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
Repeat/Reshape_1`
boolean_mask/ShapeShapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape?
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stack?
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1?
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2?
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_slice?
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indices?
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodd
boolean_mask/Shape_1Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_1?
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stack?
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1?
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2?
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1d
boolean_mask/Shape_2Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_2?
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stack?
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1?
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2?
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2?
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axis?
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat?
boolean_mask/ReshapeReshapeinputs_1boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2
boolean_mask/Reshape?
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
boolean_mask/Reshape_1/shape?
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2
boolean_mask/Where?
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axis?
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
	ones_like?
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shape?
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6f
MatMulMatMulinputsReshape:output:0*
T0*'
_output_shapes
:?????????2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:?????????2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:?????????2
	LeakyRelu?
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:?????????2
Exp?
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:?????????2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2	
truedivs
dropout_1/IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:?????????2
dropout_1/Identity
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicedropout_1/Identity:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
mul_2?
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2
UnsortedSegmentSum_1{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Mean/reduction_indices?
MeanMeanUnsortedSegmentSum_1:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Mean?
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02
add_2/ReadVariableOpv
add_2AddV2Mean:output:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
add_2Z
SoftmaxSoftmax	add_2:z:0*
T0*'
_output_shapes
:?????????2	
Softmax?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:@*
dtype02G
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_191/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@28
6gcn_improved_78/gat_conv_191/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_191/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_191/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_191/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02E
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_191/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:26
4gcn_improved_78/gat_conv_191/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_191/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_191/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_191/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_191/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_191/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_191/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_191/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/mul?
IdentityIdentitySoftmax:softmax:0^Reshape/ReadVariableOp^add_2/ReadVariableOpQ^gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????@:?????????:?????????:::::20
Reshape/ReadVariableOpReshape/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
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
?
I
-__inference_dropout_128_layer_call_fn_2760060

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
H__inference_dropout_128_layer_call_and_return_conditional_losses_27580102
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
??
?
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_2758670

inputs
inputs_1	
inputs_2
inputs_3	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource!
add_2_readvariableop_resource
identity??Reshape/ReadVariableOp?add_2/ReadVariableOp?Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?transpose/ReadVariableOp?transpose_1/ReadVariableOp?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:@*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:@2	
Reshape?
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose?
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1T
ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0	2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputs_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2?
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim?
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1?
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiples?
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/Tile?
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stack?
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1?
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2?
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_slice?
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stack?
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1?
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2?
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mul?
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stack?
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1?
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2?
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis?
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concat?
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
Repeat/Reshape_1`
boolean_mask/ShapeShapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape?
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stack?
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1?
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2?
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_slice?
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indices?
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodd
boolean_mask/Shape_1Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_1?
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stack?
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1?
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2?
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1d
boolean_mask/Shape_2Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_2?
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stack?
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1?
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2?
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2?
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axis?
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat?
boolean_mask/ReshapeReshapeinputs_1boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2
boolean_mask/Reshape?
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
boolean_mask/Reshape_1/shape?
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2
boolean_mask/Where?
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axis?
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
	ones_like?
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shape?
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6f
MatMulMatMulinputsReshape:output:0*
T0*'
_output_shapes
:?????????2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:?????????2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:?????????2
	LeakyRelu?
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:?????????2
Exp?
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:?????????2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2	
truedivw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const?
dropout_1/dropout/MulMultruediv:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mulm
dropout_1/dropout/ShapeShapetruediv:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mul_1
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicedropout_1/dropout/Mul_1:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
mul_2?
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2
UnsortedSegmentSum_1{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Mean/reduction_indices?
MeanMeanUnsortedSegmentSum_1:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Mean?
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02
add_2/ReadVariableOpv
add_2AddV2Mean:output:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
add_2Z
SoftmaxSoftmax	add_2:z:0*
T0*'
_output_shapes
:?????????2	
Softmax?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:@*
dtype02G
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_191/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@28
6gcn_improved_78/gat_conv_191/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_191/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_191/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_191/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02E
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_191/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:26
4gcn_improved_78/gat_conv_191/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_191/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_191/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_191/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_191/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_191/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_191/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_191/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/mul?
IdentityIdentitySoftmax:softmax:0^Reshape/ReadVariableOp^add_2/ReadVariableOpQ^gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????@:?????????:?????????:::::20
Reshape/ReadVariableOpReshape/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
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
?
?
__inference_loss_fn_3_2760999P
Lgcn_improved_78_gat_conv_190_bias_regularizer_square_readvariableop_resource
identity??Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpReadVariableOpLgcn_improved_78_gat_conv_190_bias_regularizer_square_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_190/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@26
4gcn_improved_78/gat_conv_190/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_190/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_190/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_190/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_190/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_190/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_190/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_190/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/mul?
IdentityIdentity5gcn_improved_78/gat_conv_190/bias/Regularizer/mul:z:0D^gcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp
?
g
H__inference_dropout_129_layer_call_and_return_conditional_losses_2760513

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
g
H__inference_dropout_129_layer_call_and_return_conditional_losses_2758463

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
H__inference_dropout_129_layer_call_and_return_conditional_losses_2760518

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
1__inference_gcn_improved_78_layer_call_fn_2760009
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_27591002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*o
_input_shapes^
\:??????????:?????????:?????????:::::::::22
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
??
?
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_2760280
inputs_0

inputs	
inputs_1
inputs_2	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource!
add_2_readvariableop_resource
identity??Reshape/ReadVariableOp?add_2/ReadVariableOp?Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?transpose/ReadVariableOp?transpose_1/ReadVariableOp?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*#
_output_shapes
:?*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes
:	?@2	
Reshape?
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose?
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1V
ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2?
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim?
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1?
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiples?
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/Tile?
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stack?
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1?
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2?
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_slice?
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stack?
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1?
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2?
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mul?
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stack?
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1?
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2?
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis?
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concat?
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
Repeat/Reshape_1^
boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape?
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stack?
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1?
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2?
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_slice?
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indices?
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodb
boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_1?
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stack?
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1?
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2?
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1b
boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_2?
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stack?
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1?
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2?
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2?
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axis?
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat?
boolean_mask/ReshapeReshapeinputsboolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2
boolean_mask/Reshape?
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
boolean_mask/Reshape_1/shape?
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2
boolean_mask/Where?
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axis?
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
	ones_like?
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shape?
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6h
MatMulMatMulinputs_0Reshape:output:0*
T0*'
_output_shapes
:?????????@2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:?????????2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:?????????2
	LeakyRelu?
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:?????????2
Exp?
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:?????????2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2	
truedivs
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const?
dropout/dropout/MulMultruediv:z:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/Muli
dropout/dropout/ShapeShapetruediv:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/Mul_1
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicedropout/dropout/Mul_1:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
mul_2?
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2
UnsortedSegmentSum_1_
Shape_1ShapeUnsortedSegmentSum_1:output:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack?
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2?
strided_slice_8StridedSliceShape_1:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
strided_slice_8p
concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:@2
concat_1/values_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2strided_slice_8:output:0concat_1/values_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1?
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0concat_1:output:0*
T0*'
_output_shapes
:?????????@2
	Reshape_2?
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02
add_2/ReadVariableOp{
add_2AddV2Reshape_2:output:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
add_2N
EluElu	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Elu?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpReadVariableOpreshape_readvariableop_resource*#
_output_shapes
:?*
dtype02G
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_190/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:?28
6gcn_improved_78/gat_conv_190/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_190/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_190/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_190/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_190/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@26
4gcn_improved_78/gat_conv_190/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_190/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_190/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_190/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_190/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_190/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_190/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_190/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/mul?
IdentityIdentityElu:activations:0^Reshape/ReadVariableOp^add_2/ReadVariableOpQ^gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::20
Reshape/ReadVariableOpReshape/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:R N
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
.__inference_gat_conv_190_layer_call_fn_2760485
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
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_27584082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

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
.__inference_gat_conv_191_layer_call_fn_2760955
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
GPU 2J 8? *R
fMRK
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_27588522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????@:?????????:?????????:::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????@
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
-__inference_dropout_129_layer_call_fn_2760523

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_129_layer_call_and_return_conditional_losses_27584632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_5_2761021\
Xgcn_improved_78_gat_conv_191_attn_kernel_self_regularizer_square_readvariableop_resource
identity??Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOpXgcn_improved_78_gat_conv_191_attn_kernel_self_regularizer_square_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul?
IdentityIdentityAgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul:z:0P^gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_6_2761032]
Ygcn_improved_78_gat_conv_191_attn_kernel_neigh_regularizer_square_readvariableop_resource
identity??Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOpYgcn_improved_78_gat_conv_191_attn_kernel_neigh_regularizer_square_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul?
IdentityIdentityBgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul:z:0Q^gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_1_2760977\
Xgcn_improved_78_gat_conv_190_attn_kernel_self_regularizer_square_readvariableop_resource
identity??Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOpXgcn_improved_78_gat_conv_190_attn_kernel_self_regularizer_square_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul?
IdentityIdentityAgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul:z:0P^gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp
?Q
?
 __inference__traced_save_2761168
file_prefixB
>savev2_gcn_improved_78_gat_conv_190_kernel_read_readvariableopL
Hsavev2_gcn_improved_78_gat_conv_190_attn_kernel_self_read_readvariableopM
Isavev2_gcn_improved_78_gat_conv_190_attn_kernel_neigh_read_readvariableop@
<savev2_gcn_improved_78_gat_conv_190_bias_read_readvariableopB
>savev2_gcn_improved_78_gat_conv_191_kernel_read_readvariableopL
Hsavev2_gcn_improved_78_gat_conv_191_attn_kernel_self_read_readvariableopM
Isavev2_gcn_improved_78_gat_conv_191_attn_kernel_neigh_read_readvariableop@
<savev2_gcn_improved_78_gat_conv_191_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopI
Esavev2_adam_gcn_improved_78_gat_conv_190_kernel_m_read_readvariableopS
Osavev2_adam_gcn_improved_78_gat_conv_190_attn_kernel_self_m_read_readvariableopT
Psavev2_adam_gcn_improved_78_gat_conv_190_attn_kernel_neigh_m_read_readvariableopG
Csavev2_adam_gcn_improved_78_gat_conv_190_bias_m_read_readvariableopI
Esavev2_adam_gcn_improved_78_gat_conv_191_kernel_m_read_readvariableopS
Osavev2_adam_gcn_improved_78_gat_conv_191_attn_kernel_self_m_read_readvariableopT
Psavev2_adam_gcn_improved_78_gat_conv_191_attn_kernel_neigh_m_read_readvariableopG
Csavev2_adam_gcn_improved_78_gat_conv_191_bias_m_read_readvariableopI
Esavev2_adam_gcn_improved_78_gat_conv_190_kernel_v_read_readvariableopS
Osavev2_adam_gcn_improved_78_gat_conv_190_attn_kernel_self_v_read_readvariableopT
Psavev2_adam_gcn_improved_78_gat_conv_190_attn_kernel_neigh_v_read_readvariableopG
Csavev2_adam_gcn_improved_78_gat_conv_190_bias_v_read_readvariableopI
Esavev2_adam_gcn_improved_78_gat_conv_191_kernel_v_read_readvariableopS
Osavev2_adam_gcn_improved_78_gat_conv_191_attn_kernel_self_v_read_readvariableopT
Psavev2_adam_gcn_improved_78_gat_conv_191_attn_kernel_neigh_v_read_readvariableopG
Csavev2_adam_gcn_improved_78_gat_conv_191_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B&gat0/kernel/.ATTRIBUTES/VARIABLE_VALUEB0gat0/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUEB1gat0/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUEB$gat0/bias/.ATTRIBUTES/VARIABLE_VALUEB0classification/kernel/.ATTRIBUTES/VARIABLE_VALUEB:classification/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUEB;classification/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUEB.classification/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBgat0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLgat0/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMgat0/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB@gat0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLclassification/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVclassification/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWclassification/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJclassification/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBgat0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLgat0/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMgat0/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB@gat0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLclassification/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVclassification/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWclassification/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJclassification/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0>savev2_gcn_improved_78_gat_conv_190_kernel_read_readvariableopHsavev2_gcn_improved_78_gat_conv_190_attn_kernel_self_read_readvariableopIsavev2_gcn_improved_78_gat_conv_190_attn_kernel_neigh_read_readvariableop<savev2_gcn_improved_78_gat_conv_190_bias_read_readvariableop>savev2_gcn_improved_78_gat_conv_191_kernel_read_readvariableopHsavev2_gcn_improved_78_gat_conv_191_attn_kernel_self_read_readvariableopIsavev2_gcn_improved_78_gat_conv_191_attn_kernel_neigh_read_readvariableop<savev2_gcn_improved_78_gat_conv_191_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopEsavev2_adam_gcn_improved_78_gat_conv_190_kernel_m_read_readvariableopOsavev2_adam_gcn_improved_78_gat_conv_190_attn_kernel_self_m_read_readvariableopPsavev2_adam_gcn_improved_78_gat_conv_190_attn_kernel_neigh_m_read_readvariableopCsavev2_adam_gcn_improved_78_gat_conv_190_bias_m_read_readvariableopEsavev2_adam_gcn_improved_78_gat_conv_191_kernel_m_read_readvariableopOsavev2_adam_gcn_improved_78_gat_conv_191_attn_kernel_self_m_read_readvariableopPsavev2_adam_gcn_improved_78_gat_conv_191_attn_kernel_neigh_m_read_readvariableopCsavev2_adam_gcn_improved_78_gat_conv_191_bias_m_read_readvariableopEsavev2_adam_gcn_improved_78_gat_conv_190_kernel_v_read_readvariableopOsavev2_adam_gcn_improved_78_gat_conv_190_attn_kernel_self_v_read_readvariableopPsavev2_adam_gcn_improved_78_gat_conv_190_attn_kernel_neigh_v_read_readvariableopCsavev2_adam_gcn_improved_78_gat_conv_190_bias_v_read_readvariableopEsavev2_adam_gcn_improved_78_gat_conv_191_kernel_v_read_readvariableopOsavev2_adam_gcn_improved_78_gat_conv_191_attn_kernel_self_v_read_readvariableopPsavev2_adam_gcn_improved_78_gat_conv_191_attn_kernel_neigh_v_read_readvariableopCsavev2_adam_gcn_improved_78_gat_conv_191_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :?:::@:@:::: : : : : : : : : :?:::@:@::::?:::@:@:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
:?:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:@:($
"
_output_shapes
:@:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :)%
#
_output_shapes
:?:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:@:($
"
_output_shapes
:@:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::)%
#
_output_shapes
:?:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:@:($
"
_output_shapes
:@:($
"
_output_shapes
::( $
"
_output_shapes
:: !

_output_shapes
::"

_output_shapes
: 
??
?
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_2758408

inputs
inputs_1	
inputs_2
inputs_3	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource!
add_2_readvariableop_resource
identity??Reshape/ReadVariableOp?add_2/ReadVariableOp?Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?transpose/ReadVariableOp?transpose_1/ReadVariableOp?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*#
_output_shapes
:?*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes
:	?@2	
Reshape?
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose?
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1T
ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0	2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputs_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2?
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim?
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1?
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiples?
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/Tile?
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stack?
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1?
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2?
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_slice?
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stack?
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1?
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2?
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mul?
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stack?
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1?
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2?
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis?
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concat?
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
Repeat/Reshape_1`
boolean_mask/ShapeShapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape?
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stack?
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1?
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2?
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_slice?
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indices?
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodd
boolean_mask/Shape_1Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_1?
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stack?
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1?
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2?
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1d
boolean_mask/Shape_2Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_2?
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stack?
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1?
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2?
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2?
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axis?
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat?
boolean_mask/ReshapeReshapeinputs_1boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2
boolean_mask/Reshape?
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
boolean_mask/Reshape_1/shape?
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2
boolean_mask/Where?
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axis?
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
	ones_like?
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shape?
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6f
MatMulMatMulinputsReshape:output:0*
T0*'
_output_shapes
:?????????@2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:?????????2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:?????????2
	LeakyRelu?
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:?????????2
Exp?
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:?????????2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2	
truedivo
dropout/IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:?????????2
dropout/Identity
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicedropout/Identity:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
mul_2?
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2
UnsortedSegmentSum_1_
Shape_1ShapeUnsortedSegmentSum_1:output:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack?
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2?
strided_slice_8StridedSliceShape_1:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
strided_slice_8p
concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:@2
concat_1/values_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2strided_slice_8:output:0concat_1/values_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1?
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0concat_1:output:0*
T0*'
_output_shapes
:?????????@2
	Reshape_2?
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02
add_2/ReadVariableOp{
add_2AddV2Reshape_2:output:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
add_2N
EluElu	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Elu?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpReadVariableOpreshape_readvariableop_resource*#
_output_shapes
:?*
dtype02G
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_190/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:?28
6gcn_improved_78/gat_conv_190/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_190/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_190/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_190/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_190/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@26
4gcn_improved_78/gat_conv_190/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_190/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_190/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_190/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_190/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_190/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_190/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_190/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/mul?
IdentityIdentityElu:activations:0^Reshape/ReadVariableOp^add_2/ReadVariableOpQ^gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::20
Reshape/ReadVariableOpReshape/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:P L
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
H__inference_dropout_128_layer_call_and_return_conditional_losses_2760050

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
?
f
H__inference_dropout_129_layer_call_and_return_conditional_losses_2758468

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
1__inference_gcn_improved_78_layer_call_fn_2760033
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_27591002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*o
_input_shapes^
\:??????????:?????????:?????????:::::::::22
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
??
?
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_2759985
inputs_0

inputs	
inputs_1
inputs_2	0
,gat_conv_190_reshape_readvariableop_resource2
.gat_conv_190_transpose_readvariableop_resource4
0gat_conv_190_transpose_1_readvariableop_resource.
*gat_conv_190_add_2_readvariableop_resource0
,gat_conv_191_reshape_readvariableop_resource2
.gat_conv_191_transpose_readvariableop_resource4
0gat_conv_191_transpose_1_readvariableop_resource.
*gat_conv_191_add_2_readvariableop_resource
identity??#gat_conv_190/Reshape/ReadVariableOp?!gat_conv_190/add_2/ReadVariableOp?%gat_conv_190/transpose/ReadVariableOp?'gat_conv_190/transpose_1/ReadVariableOp?#gat_conv_191/Reshape/ReadVariableOp?!gat_conv_191/add_2/ReadVariableOp?%gat_conv_191/transpose/ReadVariableOp?'gat_conv_191/transpose_1/ReadVariableOp?Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpu
dropout_128/IdentityIdentityinputs_0*
T0*(
_output_shapes
:??????????2
dropout_128/Identity?
#gat_conv_190/Reshape/ReadVariableOpReadVariableOp,gat_conv_190_reshape_readvariableop_resource*#
_output_shapes
:?*
dtype02%
#gat_conv_190/Reshape/ReadVariableOp?
gat_conv_190/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
gat_conv_190/Reshape/shape?
gat_conv_190/ReshapeReshape+gat_conv_190/Reshape/ReadVariableOp:value:0#gat_conv_190/Reshape/shape:output:0*
T0*
_output_shapes
:	?@2
gat_conv_190/Reshape?
%gat_conv_190/transpose/ReadVariableOpReadVariableOp.gat_conv_190_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02'
%gat_conv_190/transpose/ReadVariableOp?
gat_conv_190/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_190/transpose/perm?
gat_conv_190/transpose	Transpose-gat_conv_190/transpose/ReadVariableOp:value:0$gat_conv_190/transpose/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_190/transpose?
'gat_conv_190/transpose_1/ReadVariableOpReadVariableOp0gat_conv_190_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02)
'gat_conv_190/transpose_1/ReadVariableOp?
gat_conv_190/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_190/transpose_1/perm?
gat_conv_190/transpose_1	Transpose/gat_conv_190/transpose_1/ReadVariableOp:value:0&gat_conv_190/transpose_1/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_190/transpose_1?
gat_conv_190/ShapeShapedropout_128/Identity:output:0*
T0*
_output_shapes
:*
out_type0	2
gat_conv_190/Shape?
 gat_conv_190/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 gat_conv_190/strided_slice/stack?
"gat_conv_190/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"gat_conv_190/strided_slice/stack_1?
"gat_conv_190/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gat_conv_190/strided_slice/stack_2?
gat_conv_190/strided_sliceStridedSlicegat_conv_190/Shape:output:0)gat_conv_190/strided_slice/stack:output:0+gat_conv_190/strided_slice/stack_1:output:0+gat_conv_190/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
gat_conv_190/strided_slice?
"gat_conv_190/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_1/stack?
$gat_conv_190/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_1/stack_1?
$gat_conv_190/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_1/stack_2?
gat_conv_190/strided_slice_1StridedSliceinputs+gat_conv_190/strided_slice_1/stack:output:0-gat_conv_190/strided_slice_1/stack_1:output:0-gat_conv_190/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_1?
"gat_conv_190/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"gat_conv_190/strided_slice_2/stack?
$gat_conv_190/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_2/stack_1?
$gat_conv_190/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_2/stack_2?
gat_conv_190/strided_slice_2StridedSliceinputs+gat_conv_190/strided_slice_2/stack:output:0-gat_conv_190/strided_slice_2/stack_1:output:0-gat_conv_190/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_2?
gat_conv_190/NotEqualNotEqual%gat_conv_190/strided_slice_1:output:0%gat_conv_190/strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2
gat_conv_190/NotEqual?
gat_conv_190/EnsureShapeEnsureShapegat_conv_190/NotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
gat_conv_190/EnsureShapev
gat_conv_190/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
gat_conv_190/range/startv
gat_conv_190/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_190/range/delta?
gat_conv_190/rangeRange!gat_conv_190/range/start:output:0#gat_conv_190/strided_slice:output:0!gat_conv_190/range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
gat_conv_190/range?
"gat_conv_190/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_3/stack?
$gat_conv_190/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gat_conv_190/strided_slice_3/stack_1?
$gat_conv_190/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_3/stack_2?
gat_conv_190/strided_slice_3StridedSlicegat_conv_190/range:output:0+gat_conv_190/strided_slice_3/stack:output:0-gat_conv_190/strided_slice_3/stack_1:output:0-gat_conv_190/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
gat_conv_190/strided_slice_3|
gat_conv_190/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
gat_conv_190/Repeat/repeats?
gat_conv_190/Repeat/CastCast$gat_conv_190/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
gat_conv_190/Repeat/Cast?
gat_conv_190/Repeat/ShapeShape%gat_conv_190/strided_slice_3:output:0*
T0	*
_output_shapes
:2
gat_conv_190/Repeat/Shape?
!gat_conv_190/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2#
!gat_conv_190/Repeat/Reshape/shape?
#gat_conv_190/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2%
#gat_conv_190/Repeat/Reshape/shape_1?
gat_conv_190/Repeat/ReshapeReshapegat_conv_190/Repeat/Cast:y:0,gat_conv_190/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gat_conv_190/Repeat/Reshape?
"gat_conv_190/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"gat_conv_190/Repeat/ExpandDims/dim?
gat_conv_190/Repeat/ExpandDims
ExpandDims%gat_conv_190/strided_slice_3:output:0+gat_conv_190/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2 
gat_conv_190/Repeat/ExpandDims?
$gat_conv_190/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2&
$gat_conv_190/Repeat/Tile/multiples/0?
$gat_conv_190/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$gat_conv_190/Repeat/Tile/multiples/1?
"gat_conv_190/Repeat/Tile/multiplesPack-gat_conv_190/Repeat/Tile/multiples/0:output:0-gat_conv_190/Repeat/Tile/multiples/1:output:0$gat_conv_190/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2$
"gat_conv_190/Repeat/Tile/multiples?
gat_conv_190/Repeat/TileTile'gat_conv_190/Repeat/ExpandDims:output:0+gat_conv_190/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
gat_conv_190/Repeat/Tile?
'gat_conv_190/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'gat_conv_190/Repeat/strided_slice/stack?
)gat_conv_190/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_190/Repeat/strided_slice/stack_1?
)gat_conv_190/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_190/Repeat/strided_slice/stack_2?
!gat_conv_190/Repeat/strided_sliceStridedSlice"gat_conv_190/Repeat/Shape:output:00gat_conv_190/Repeat/strided_slice/stack:output:02gat_conv_190/Repeat/strided_slice/stack_1:output:02gat_conv_190/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2#
!gat_conv_190/Repeat/strided_slice?
)gat_conv_190/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_190/Repeat/strided_slice_1/stack?
+gat_conv_190/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_190/Repeat/strided_slice_1/stack_1?
+gat_conv_190/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_190/Repeat/strided_slice_1/stack_2?
#gat_conv_190/Repeat/strided_slice_1StridedSlice"gat_conv_190/Repeat/Shape:output:02gat_conv_190/Repeat/strided_slice_1/stack:output:04gat_conv_190/Repeat/strided_slice_1/stack_1:output:04gat_conv_190/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#gat_conv_190/Repeat/strided_slice_1?
gat_conv_190/Repeat/mulMul$gat_conv_190/Repeat/Reshape:output:0,gat_conv_190/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2
gat_conv_190/Repeat/mul?
)gat_conv_190/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_190/Repeat/strided_slice_2/stack?
+gat_conv_190/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+gat_conv_190/Repeat/strided_slice_2/stack_1?
+gat_conv_190/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_190/Repeat/strided_slice_2/stack_2?
#gat_conv_190/Repeat/strided_slice_2StridedSlice"gat_conv_190/Repeat/Shape:output:02gat_conv_190/Repeat/strided_slice_2/stack:output:04gat_conv_190/Repeat/strided_slice_2/stack_1:output:04gat_conv_190/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2%
#gat_conv_190/Repeat/strided_slice_2?
#gat_conv_190/Repeat/concat/values_1Packgat_conv_190/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2%
#gat_conv_190/Repeat/concat/values_1?
gat_conv_190/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
gat_conv_190/Repeat/concat/axis?
gat_conv_190/Repeat/concatConcatV2*gat_conv_190/Repeat/strided_slice:output:0,gat_conv_190/Repeat/concat/values_1:output:0,gat_conv_190/Repeat/strided_slice_2:output:0(gat_conv_190/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_190/Repeat/concat?
gat_conv_190/Repeat/Reshape_1Reshape!gat_conv_190/Repeat/Tile:output:0#gat_conv_190/Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
gat_conv_190/Repeat/Reshape_1x
gat_conv_190/boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2!
gat_conv_190/boolean_mask/Shape?
-gat_conv_190/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-gat_conv_190/boolean_mask/strided_slice/stack?
/gat_conv_190/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_190/boolean_mask/strided_slice/stack_1?
/gat_conv_190/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_190/boolean_mask/strided_slice/stack_2?
'gat_conv_190/boolean_mask/strided_sliceStridedSlice(gat_conv_190/boolean_mask/Shape:output:06gat_conv_190/boolean_mask/strided_slice/stack:output:08gat_conv_190/boolean_mask/strided_slice/stack_1:output:08gat_conv_190/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'gat_conv_190/boolean_mask/strided_slice?
0gat_conv_190/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_190/boolean_mask/Prod/reduction_indices?
gat_conv_190/boolean_mask/ProdProd0gat_conv_190/boolean_mask/strided_slice:output:09gat_conv_190/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2 
gat_conv_190/boolean_mask/Prod|
!gat_conv_190/boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2#
!gat_conv_190/boolean_mask/Shape_1?
/gat_conv_190/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/gat_conv_190/boolean_mask/strided_slice_1/stack?
1gat_conv_190/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1gat_conv_190/boolean_mask/strided_slice_1/stack_1?
1gat_conv_190/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1gat_conv_190/boolean_mask/strided_slice_1/stack_2?
)gat_conv_190/boolean_mask/strided_slice_1StridedSlice*gat_conv_190/boolean_mask/Shape_1:output:08gat_conv_190/boolean_mask/strided_slice_1/stack:output:0:gat_conv_190/boolean_mask/strided_slice_1/stack_1:output:0:gat_conv_190/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2+
)gat_conv_190/boolean_mask/strided_slice_1|
!gat_conv_190/boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2#
!gat_conv_190/boolean_mask/Shape_2?
/gat_conv_190/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_190/boolean_mask/strided_slice_2/stack?
1gat_conv_190/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1gat_conv_190/boolean_mask/strided_slice_2/stack_1?
1gat_conv_190/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1gat_conv_190/boolean_mask/strided_slice_2/stack_2?
)gat_conv_190/boolean_mask/strided_slice_2StridedSlice*gat_conv_190/boolean_mask/Shape_2:output:08gat_conv_190/boolean_mask/strided_slice_2/stack:output:0:gat_conv_190/boolean_mask/strided_slice_2/stack_1:output:0:gat_conv_190/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2+
)gat_conv_190/boolean_mask/strided_slice_2?
)gat_conv_190/boolean_mask/concat/values_1Pack'gat_conv_190/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2+
)gat_conv_190/boolean_mask/concat/values_1?
%gat_conv_190/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%gat_conv_190/boolean_mask/concat/axis?
 gat_conv_190/boolean_mask/concatConcatV22gat_conv_190/boolean_mask/strided_slice_1:output:02gat_conv_190/boolean_mask/concat/values_1:output:02gat_conv_190/boolean_mask/strided_slice_2:output:0.gat_conv_190/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 gat_conv_190/boolean_mask/concat?
!gat_conv_190/boolean_mask/ReshapeReshapeinputs)gat_conv_190/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2#
!gat_conv_190/boolean_mask/Reshape?
)gat_conv_190/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)gat_conv_190/boolean_mask/Reshape_1/shape?
#gat_conv_190/boolean_mask/Reshape_1Reshape!gat_conv_190/EnsureShape:output:02gat_conv_190/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2%
#gat_conv_190/boolean_mask/Reshape_1?
gat_conv_190/boolean_mask/WhereWhere,gat_conv_190/boolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2!
gat_conv_190/boolean_mask/Where?
!gat_conv_190/boolean_mask/SqueezeSqueeze'gat_conv_190/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2#
!gat_conv_190/boolean_mask/Squeeze?
'gat_conv_190/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'gat_conv_190/boolean_mask/GatherV2/axis?
"gat_conv_190/boolean_mask/GatherV2GatherV2*gat_conv_190/boolean_mask/Reshape:output:0*gat_conv_190/boolean_mask/Squeeze:output:00gat_conv_190/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2$
"gat_conv_190/boolean_mask/GatherV2v
gat_conv_190/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/concat/axis?
gat_conv_190/concatConcatV2+gat_conv_190/boolean_mask/GatherV2:output:0&gat_conv_190/Repeat/Reshape_1:output:0!gat_conv_190/concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
gat_conv_190/concat?
"gat_conv_190/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_4/stack?
$gat_conv_190/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_4/stack_1?
$gat_conv_190/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_4/stack_2?
gat_conv_190/strided_slice_4StridedSlicegat_conv_190/concat:output:0+gat_conv_190/strided_slice_4/stack:output:0-gat_conv_190/strided_slice_4/stack_1:output:0-gat_conv_190/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_4?
gat_conv_190/ones_like/ShapeShape%gat_conv_190/strided_slice_4:output:0*
T0	*
_output_shapes
:2
gat_conv_190/ones_like/Shape~
gat_conv_190/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_190/ones_like/Const?
gat_conv_190/ones_likeFill%gat_conv_190/ones_like/Shape:output:0%gat_conv_190/ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
gat_conv_190/ones_like?
&gat_conv_190/SparseReorder/input_shapePack#gat_conv_190/strided_slice:output:0#gat_conv_190/strided_slice:output:0*
N*
T0	*
_output_shapes
:2(
&gat_conv_190/SparseReorder/input_shape?
gat_conv_190/SparseReorderSparseReordergat_conv_190/concat:output:0gat_conv_190/ones_like:output:0/gat_conv_190/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
gat_conv_190/SparseReorder?
"gat_conv_190/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"gat_conv_190/strided_slice_5/stack?
$gat_conv_190/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_5/stack_1?
$gat_conv_190/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_5/stack_2?
gat_conv_190/strided_slice_5StridedSlice+gat_conv_190/SparseReorder:output_indices:0+gat_conv_190/strided_slice_5/stack:output:0-gat_conv_190/strided_slice_5/stack_1:output:0-gat_conv_190/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_5?
"gat_conv_190/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_6/stack?
$gat_conv_190/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_6/stack_1?
$gat_conv_190/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_6/stack_2?
gat_conv_190/strided_slice_6StridedSlice+gat_conv_190/SparseReorder:output_indices:0+gat_conv_190/strided_slice_6/stack:output:0-gat_conv_190/strided_slice_6/stack_1:output:0-gat_conv_190/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_6?
gat_conv_190/MatMulMatMuldropout_128/Identity:output:0gat_conv_190/Reshape:output:0*
T0*'
_output_shapes
:?????????@2
gat_conv_190/MatMul?
gat_conv_190/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
gat_conv_190/Reshape_1/shape?
gat_conv_190/Reshape_1Reshapegat_conv_190/MatMul:product:0%gat_conv_190/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
gat_conv_190/Reshape_1?
gat_conv_190/mulMulgat_conv_190/Reshape_1:output:0gat_conv_190/transpose:y:0*
T0*+
_output_shapes
:?????????2
gat_conv_190/mul?
"gat_conv_190/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gat_conv_190/Sum/reduction_indices?
gat_conv_190/SumSumgat_conv_190/mul:z:0+gat_conv_190/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/Sumz
gat_conv_190/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2/axis?
gat_conv_190/GatherV2GatherV2gat_conv_190/Sum:output:0%gat_conv_190/strided_slice_5:output:0#gat_conv_190/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_190/GatherV2?
gat_conv_190/mul_1Mulgat_conv_190/Reshape_1:output:0gat_conv_190/transpose_1:y:0*
T0*+
_output_shapes
:?????????2
gat_conv_190/mul_1?
$gat_conv_190/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gat_conv_190/Sum_1/reduction_indices?
gat_conv_190/Sum_1Sumgat_conv_190/mul_1:z:0-gat_conv_190/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/Sum_1~
gat_conv_190/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2_1/axis?
gat_conv_190/GatherV2_1GatherV2gat_conv_190/Sum_1:output:0%gat_conv_190/strided_slice_6:output:0%gat_conv_190/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_190/GatherV2_1?
gat_conv_190/addAddV2gat_conv_190/GatherV2:output:0 gat_conv_190/GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/add|
gat_conv_190/LeakyRelu	LeakyRelugat_conv_190/add:z:0*'
_output_shapes
:?????????2
gat_conv_190/LeakyRelu?
gat_conv_190/UnsortedSegmentMaxUnsortedSegmentMax$gat_conv_190/LeakyRelu:activations:0%gat_conv_190/strided_slice_5:output:0#gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2!
gat_conv_190/UnsortedSegmentMax~
gat_conv_190/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2_2/axis?
gat_conv_190/GatherV2_2GatherV2(gat_conv_190/UnsortedSegmentMax:output:0%gat_conv_190/strided_slice_5:output:0%gat_conv_190/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_190/GatherV2_2?
gat_conv_190/subSub$gat_conv_190/LeakyRelu:activations:0 gat_conv_190/GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/subs
gat_conv_190/ExpExpgat_conv_190/sub:z:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/Exp?
gat_conv_190/UnsortedSegmentSumUnsortedSegmentSumgat_conv_190/Exp:y:0%gat_conv_190/strided_slice_5:output:0#gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2!
gat_conv_190/UnsortedSegmentSumq
gat_conv_190/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02
gat_conv_190/add_1/y?
gat_conv_190/add_1AddV2(gat_conv_190/UnsortedSegmentSum:output:0gat_conv_190/add_1/y:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/add_1~
gat_conv_190/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2_3/axis?
gat_conv_190/GatherV2_3GatherV2gat_conv_190/add_1:z:0%gat_conv_190/strided_slice_5:output:0%gat_conv_190/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_190/GatherV2_3?
gat_conv_190/truedivRealDivgat_conv_190/Exp:y:0 gat_conv_190/GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/truediv?
gat_conv_190/dropout/IdentityIdentitygat_conv_190/truediv:z:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/dropout/Identity?
"gat_conv_190/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_7/stack?
$gat_conv_190/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gat_conv_190/strided_slice_7/stack_1?
$gat_conv_190/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_7/stack_2?
gat_conv_190/strided_slice_7StridedSlice&gat_conv_190/dropout/Identity:output:0+gat_conv_190/strided_slice_7/stack:output:0-gat_conv_190/strided_slice_7/stack_1:output:0-gat_conv_190/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
gat_conv_190/strided_slice_7~
gat_conv_190/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2_4/axis?
gat_conv_190/GatherV2_4GatherV2gat_conv_190/Reshape_1:output:0%gat_conv_190/strided_slice_6:output:0%gat_conv_190/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2
gat_conv_190/GatherV2_4?
gat_conv_190/mul_2Mul%gat_conv_190/strided_slice_7:output:0 gat_conv_190/GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
gat_conv_190/mul_2?
!gat_conv_190/UnsortedSegmentSum_1UnsortedSegmentSumgat_conv_190/mul_2:z:0%gat_conv_190/strided_slice_5:output:0#gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2#
!gat_conv_190/UnsortedSegmentSum_1?
gat_conv_190/Shape_1Shape*gat_conv_190/UnsortedSegmentSum_1:output:0*
T0*
_output_shapes
:2
gat_conv_190/Shape_1?
"gat_conv_190/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gat_conv_190/strided_slice_8/stack?
$gat_conv_190/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$gat_conv_190/strided_slice_8/stack_1?
$gat_conv_190/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gat_conv_190/strided_slice_8/stack_2?
gat_conv_190/strided_slice_8StridedSlicegat_conv_190/Shape_1:output:0+gat_conv_190/strided_slice_8/stack:output:0-gat_conv_190/strided_slice_8/stack_1:output:0-gat_conv_190/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
gat_conv_190/strided_slice_8?
gat_conv_190/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:@2 
gat_conv_190/concat_1/values_1z
gat_conv_190/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/concat_1/axis?
gat_conv_190/concat_1ConcatV2%gat_conv_190/strided_slice_8:output:0'gat_conv_190/concat_1/values_1:output:0#gat_conv_190/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_190/concat_1?
gat_conv_190/Reshape_2Reshape*gat_conv_190/UnsortedSegmentSum_1:output:0gat_conv_190/concat_1:output:0*
T0*'
_output_shapes
:?????????@2
gat_conv_190/Reshape_2?
!gat_conv_190/add_2/ReadVariableOpReadVariableOp*gat_conv_190_add_2_readvariableop_resource*
_output_shapes
:@*
dtype02#
!gat_conv_190/add_2/ReadVariableOp?
gat_conv_190/add_2AddV2gat_conv_190/Reshape_2:output:0)gat_conv_190/add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
gat_conv_190/add_2u
gat_conv_190/EluElugat_conv_190/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gat_conv_190/Elu?
dropout_129/IdentityIdentitygat_conv_190/Elu:activations:0*
T0*'
_output_shapes
:?????????@2
dropout_129/Identity?
#gat_conv_191/Reshape/ReadVariableOpReadVariableOp,gat_conv_191_reshape_readvariableop_resource*"
_output_shapes
:@*
dtype02%
#gat_conv_191/Reshape/ReadVariableOp?
gat_conv_191/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
gat_conv_191/Reshape/shape?
gat_conv_191/ReshapeReshape+gat_conv_191/Reshape/ReadVariableOp:value:0#gat_conv_191/Reshape/shape:output:0*
T0*
_output_shapes

:@2
gat_conv_191/Reshape?
%gat_conv_191/transpose/ReadVariableOpReadVariableOp.gat_conv_191_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02'
%gat_conv_191/transpose/ReadVariableOp?
gat_conv_191/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_191/transpose/perm?
gat_conv_191/transpose	Transpose-gat_conv_191/transpose/ReadVariableOp:value:0$gat_conv_191/transpose/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_191/transpose?
'gat_conv_191/transpose_1/ReadVariableOpReadVariableOp0gat_conv_191_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02)
'gat_conv_191/transpose_1/ReadVariableOp?
gat_conv_191/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_191/transpose_1/perm?
gat_conv_191/transpose_1	Transpose/gat_conv_191/transpose_1/ReadVariableOp:value:0&gat_conv_191/transpose_1/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_191/transpose_1?
gat_conv_191/ShapeShapedropout_129/Identity:output:0*
T0*
_output_shapes
:*
out_type0	2
gat_conv_191/Shape?
 gat_conv_191/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 gat_conv_191/strided_slice/stack?
"gat_conv_191/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"gat_conv_191/strided_slice/stack_1?
"gat_conv_191/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gat_conv_191/strided_slice/stack_2?
gat_conv_191/strided_sliceStridedSlicegat_conv_191/Shape:output:0)gat_conv_191/strided_slice/stack:output:0+gat_conv_191/strided_slice/stack_1:output:0+gat_conv_191/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
gat_conv_191/strided_slice?
"gat_conv_191/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_1/stack?
$gat_conv_191/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_1/stack_1?
$gat_conv_191/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_1/stack_2?
gat_conv_191/strided_slice_1StridedSliceinputs+gat_conv_191/strided_slice_1/stack:output:0-gat_conv_191/strided_slice_1/stack_1:output:0-gat_conv_191/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_1?
"gat_conv_191/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"gat_conv_191/strided_slice_2/stack?
$gat_conv_191/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_2/stack_1?
$gat_conv_191/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_2/stack_2?
gat_conv_191/strided_slice_2StridedSliceinputs+gat_conv_191/strided_slice_2/stack:output:0-gat_conv_191/strided_slice_2/stack_1:output:0-gat_conv_191/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_2?
gat_conv_191/NotEqualNotEqual%gat_conv_191/strided_slice_1:output:0%gat_conv_191/strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2
gat_conv_191/NotEqual?
gat_conv_191/EnsureShapeEnsureShapegat_conv_191/NotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
gat_conv_191/EnsureShapev
gat_conv_191/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
gat_conv_191/range/startv
gat_conv_191/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_191/range/delta?
gat_conv_191/rangeRange!gat_conv_191/range/start:output:0#gat_conv_191/strided_slice:output:0!gat_conv_191/range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
gat_conv_191/range?
"gat_conv_191/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_3/stack?
$gat_conv_191/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gat_conv_191/strided_slice_3/stack_1?
$gat_conv_191/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_3/stack_2?
gat_conv_191/strided_slice_3StridedSlicegat_conv_191/range:output:0+gat_conv_191/strided_slice_3/stack:output:0-gat_conv_191/strided_slice_3/stack_1:output:0-gat_conv_191/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
gat_conv_191/strided_slice_3|
gat_conv_191/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
gat_conv_191/Repeat/repeats?
gat_conv_191/Repeat/CastCast$gat_conv_191/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
gat_conv_191/Repeat/Cast?
gat_conv_191/Repeat/ShapeShape%gat_conv_191/strided_slice_3:output:0*
T0	*
_output_shapes
:2
gat_conv_191/Repeat/Shape?
!gat_conv_191/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2#
!gat_conv_191/Repeat/Reshape/shape?
#gat_conv_191/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2%
#gat_conv_191/Repeat/Reshape/shape_1?
gat_conv_191/Repeat/ReshapeReshapegat_conv_191/Repeat/Cast:y:0,gat_conv_191/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gat_conv_191/Repeat/Reshape?
"gat_conv_191/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"gat_conv_191/Repeat/ExpandDims/dim?
gat_conv_191/Repeat/ExpandDims
ExpandDims%gat_conv_191/strided_slice_3:output:0+gat_conv_191/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2 
gat_conv_191/Repeat/ExpandDims?
$gat_conv_191/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2&
$gat_conv_191/Repeat/Tile/multiples/0?
$gat_conv_191/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$gat_conv_191/Repeat/Tile/multiples/1?
"gat_conv_191/Repeat/Tile/multiplesPack-gat_conv_191/Repeat/Tile/multiples/0:output:0-gat_conv_191/Repeat/Tile/multiples/1:output:0$gat_conv_191/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2$
"gat_conv_191/Repeat/Tile/multiples?
gat_conv_191/Repeat/TileTile'gat_conv_191/Repeat/ExpandDims:output:0+gat_conv_191/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
gat_conv_191/Repeat/Tile?
'gat_conv_191/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'gat_conv_191/Repeat/strided_slice/stack?
)gat_conv_191/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_191/Repeat/strided_slice/stack_1?
)gat_conv_191/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_191/Repeat/strided_slice/stack_2?
!gat_conv_191/Repeat/strided_sliceStridedSlice"gat_conv_191/Repeat/Shape:output:00gat_conv_191/Repeat/strided_slice/stack:output:02gat_conv_191/Repeat/strided_slice/stack_1:output:02gat_conv_191/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2#
!gat_conv_191/Repeat/strided_slice?
)gat_conv_191/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_191/Repeat/strided_slice_1/stack?
+gat_conv_191/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_191/Repeat/strided_slice_1/stack_1?
+gat_conv_191/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_191/Repeat/strided_slice_1/stack_2?
#gat_conv_191/Repeat/strided_slice_1StridedSlice"gat_conv_191/Repeat/Shape:output:02gat_conv_191/Repeat/strided_slice_1/stack:output:04gat_conv_191/Repeat/strided_slice_1/stack_1:output:04gat_conv_191/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#gat_conv_191/Repeat/strided_slice_1?
gat_conv_191/Repeat/mulMul$gat_conv_191/Repeat/Reshape:output:0,gat_conv_191/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2
gat_conv_191/Repeat/mul?
)gat_conv_191/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_191/Repeat/strided_slice_2/stack?
+gat_conv_191/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+gat_conv_191/Repeat/strided_slice_2/stack_1?
+gat_conv_191/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_191/Repeat/strided_slice_2/stack_2?
#gat_conv_191/Repeat/strided_slice_2StridedSlice"gat_conv_191/Repeat/Shape:output:02gat_conv_191/Repeat/strided_slice_2/stack:output:04gat_conv_191/Repeat/strided_slice_2/stack_1:output:04gat_conv_191/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2%
#gat_conv_191/Repeat/strided_slice_2?
#gat_conv_191/Repeat/concat/values_1Packgat_conv_191/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2%
#gat_conv_191/Repeat/concat/values_1?
gat_conv_191/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
gat_conv_191/Repeat/concat/axis?
gat_conv_191/Repeat/concatConcatV2*gat_conv_191/Repeat/strided_slice:output:0,gat_conv_191/Repeat/concat/values_1:output:0,gat_conv_191/Repeat/strided_slice_2:output:0(gat_conv_191/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_191/Repeat/concat?
gat_conv_191/Repeat/Reshape_1Reshape!gat_conv_191/Repeat/Tile:output:0#gat_conv_191/Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
gat_conv_191/Repeat/Reshape_1x
gat_conv_191/boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2!
gat_conv_191/boolean_mask/Shape?
-gat_conv_191/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-gat_conv_191/boolean_mask/strided_slice/stack?
/gat_conv_191/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_191/boolean_mask/strided_slice/stack_1?
/gat_conv_191/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_191/boolean_mask/strided_slice/stack_2?
'gat_conv_191/boolean_mask/strided_sliceStridedSlice(gat_conv_191/boolean_mask/Shape:output:06gat_conv_191/boolean_mask/strided_slice/stack:output:08gat_conv_191/boolean_mask/strided_slice/stack_1:output:08gat_conv_191/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'gat_conv_191/boolean_mask/strided_slice?
0gat_conv_191/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_191/boolean_mask/Prod/reduction_indices?
gat_conv_191/boolean_mask/ProdProd0gat_conv_191/boolean_mask/strided_slice:output:09gat_conv_191/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2 
gat_conv_191/boolean_mask/Prod|
!gat_conv_191/boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2#
!gat_conv_191/boolean_mask/Shape_1?
/gat_conv_191/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/gat_conv_191/boolean_mask/strided_slice_1/stack?
1gat_conv_191/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1gat_conv_191/boolean_mask/strided_slice_1/stack_1?
1gat_conv_191/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1gat_conv_191/boolean_mask/strided_slice_1/stack_2?
)gat_conv_191/boolean_mask/strided_slice_1StridedSlice*gat_conv_191/boolean_mask/Shape_1:output:08gat_conv_191/boolean_mask/strided_slice_1/stack:output:0:gat_conv_191/boolean_mask/strided_slice_1/stack_1:output:0:gat_conv_191/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2+
)gat_conv_191/boolean_mask/strided_slice_1|
!gat_conv_191/boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2#
!gat_conv_191/boolean_mask/Shape_2?
/gat_conv_191/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_191/boolean_mask/strided_slice_2/stack?
1gat_conv_191/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1gat_conv_191/boolean_mask/strided_slice_2/stack_1?
1gat_conv_191/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1gat_conv_191/boolean_mask/strided_slice_2/stack_2?
)gat_conv_191/boolean_mask/strided_slice_2StridedSlice*gat_conv_191/boolean_mask/Shape_2:output:08gat_conv_191/boolean_mask/strided_slice_2/stack:output:0:gat_conv_191/boolean_mask/strided_slice_2/stack_1:output:0:gat_conv_191/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2+
)gat_conv_191/boolean_mask/strided_slice_2?
)gat_conv_191/boolean_mask/concat/values_1Pack'gat_conv_191/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2+
)gat_conv_191/boolean_mask/concat/values_1?
%gat_conv_191/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%gat_conv_191/boolean_mask/concat/axis?
 gat_conv_191/boolean_mask/concatConcatV22gat_conv_191/boolean_mask/strided_slice_1:output:02gat_conv_191/boolean_mask/concat/values_1:output:02gat_conv_191/boolean_mask/strided_slice_2:output:0.gat_conv_191/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 gat_conv_191/boolean_mask/concat?
!gat_conv_191/boolean_mask/ReshapeReshapeinputs)gat_conv_191/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2#
!gat_conv_191/boolean_mask/Reshape?
)gat_conv_191/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)gat_conv_191/boolean_mask/Reshape_1/shape?
#gat_conv_191/boolean_mask/Reshape_1Reshape!gat_conv_191/EnsureShape:output:02gat_conv_191/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2%
#gat_conv_191/boolean_mask/Reshape_1?
gat_conv_191/boolean_mask/WhereWhere,gat_conv_191/boolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2!
gat_conv_191/boolean_mask/Where?
!gat_conv_191/boolean_mask/SqueezeSqueeze'gat_conv_191/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2#
!gat_conv_191/boolean_mask/Squeeze?
'gat_conv_191/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'gat_conv_191/boolean_mask/GatherV2/axis?
"gat_conv_191/boolean_mask/GatherV2GatherV2*gat_conv_191/boolean_mask/Reshape:output:0*gat_conv_191/boolean_mask/Squeeze:output:00gat_conv_191/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2$
"gat_conv_191/boolean_mask/GatherV2v
gat_conv_191/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/concat/axis?
gat_conv_191/concatConcatV2+gat_conv_191/boolean_mask/GatherV2:output:0&gat_conv_191/Repeat/Reshape_1:output:0!gat_conv_191/concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
gat_conv_191/concat?
"gat_conv_191/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_4/stack?
$gat_conv_191/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_4/stack_1?
$gat_conv_191/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_4/stack_2?
gat_conv_191/strided_slice_4StridedSlicegat_conv_191/concat:output:0+gat_conv_191/strided_slice_4/stack:output:0-gat_conv_191/strided_slice_4/stack_1:output:0-gat_conv_191/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_4?
gat_conv_191/ones_like/ShapeShape%gat_conv_191/strided_slice_4:output:0*
T0	*
_output_shapes
:2
gat_conv_191/ones_like/Shape~
gat_conv_191/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_191/ones_like/Const?
gat_conv_191/ones_likeFill%gat_conv_191/ones_like/Shape:output:0%gat_conv_191/ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
gat_conv_191/ones_like?
&gat_conv_191/SparseReorder/input_shapePack#gat_conv_191/strided_slice:output:0#gat_conv_191/strided_slice:output:0*
N*
T0	*
_output_shapes
:2(
&gat_conv_191/SparseReorder/input_shape?
gat_conv_191/SparseReorderSparseReordergat_conv_191/concat:output:0gat_conv_191/ones_like:output:0/gat_conv_191/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
gat_conv_191/SparseReorder?
"gat_conv_191/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"gat_conv_191/strided_slice_5/stack?
$gat_conv_191/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_5/stack_1?
$gat_conv_191/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_5/stack_2?
gat_conv_191/strided_slice_5StridedSlice+gat_conv_191/SparseReorder:output_indices:0+gat_conv_191/strided_slice_5/stack:output:0-gat_conv_191/strided_slice_5/stack_1:output:0-gat_conv_191/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_5?
"gat_conv_191/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_6/stack?
$gat_conv_191/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_6/stack_1?
$gat_conv_191/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_6/stack_2?
gat_conv_191/strided_slice_6StridedSlice+gat_conv_191/SparseReorder:output_indices:0+gat_conv_191/strided_slice_6/stack:output:0-gat_conv_191/strided_slice_6/stack_1:output:0-gat_conv_191/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_6?
gat_conv_191/MatMulMatMuldropout_129/Identity:output:0gat_conv_191/Reshape:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/MatMul?
gat_conv_191/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
gat_conv_191/Reshape_1/shape?
gat_conv_191/Reshape_1Reshapegat_conv_191/MatMul:product:0%gat_conv_191/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
gat_conv_191/Reshape_1?
gat_conv_191/mulMulgat_conv_191/Reshape_1:output:0gat_conv_191/transpose:y:0*
T0*+
_output_shapes
:?????????2
gat_conv_191/mul?
"gat_conv_191/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gat_conv_191/Sum/reduction_indices?
gat_conv_191/SumSumgat_conv_191/mul:z:0+gat_conv_191/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Sumz
gat_conv_191/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2/axis?
gat_conv_191/GatherV2GatherV2gat_conv_191/Sum:output:0%gat_conv_191/strided_slice_5:output:0#gat_conv_191/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_191/GatherV2?
gat_conv_191/mul_1Mulgat_conv_191/Reshape_1:output:0gat_conv_191/transpose_1:y:0*
T0*+
_output_shapes
:?????????2
gat_conv_191/mul_1?
$gat_conv_191/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gat_conv_191/Sum_1/reduction_indices?
gat_conv_191/Sum_1Sumgat_conv_191/mul_1:z:0-gat_conv_191/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Sum_1~
gat_conv_191/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2_1/axis?
gat_conv_191/GatherV2_1GatherV2gat_conv_191/Sum_1:output:0%gat_conv_191/strided_slice_6:output:0%gat_conv_191/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_191/GatherV2_1?
gat_conv_191/addAddV2gat_conv_191/GatherV2:output:0 gat_conv_191/GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/add|
gat_conv_191/LeakyRelu	LeakyRelugat_conv_191/add:z:0*'
_output_shapes
:?????????2
gat_conv_191/LeakyRelu?
gat_conv_191/UnsortedSegmentMaxUnsortedSegmentMax$gat_conv_191/LeakyRelu:activations:0%gat_conv_191/strided_slice_5:output:0#gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2!
gat_conv_191/UnsortedSegmentMax~
gat_conv_191/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2_2/axis?
gat_conv_191/GatherV2_2GatherV2(gat_conv_191/UnsortedSegmentMax:output:0%gat_conv_191/strided_slice_5:output:0%gat_conv_191/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_191/GatherV2_2?
gat_conv_191/subSub$gat_conv_191/LeakyRelu:activations:0 gat_conv_191/GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/subs
gat_conv_191/ExpExpgat_conv_191/sub:z:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Exp?
gat_conv_191/UnsortedSegmentSumUnsortedSegmentSumgat_conv_191/Exp:y:0%gat_conv_191/strided_slice_5:output:0#gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2!
gat_conv_191/UnsortedSegmentSumq
gat_conv_191/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02
gat_conv_191/add_1/y?
gat_conv_191/add_1AddV2(gat_conv_191/UnsortedSegmentSum:output:0gat_conv_191/add_1/y:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/add_1~
gat_conv_191/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2_3/axis?
gat_conv_191/GatherV2_3GatherV2gat_conv_191/add_1:z:0%gat_conv_191/strided_slice_5:output:0%gat_conv_191/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_191/GatherV2_3?
gat_conv_191/truedivRealDivgat_conv_191/Exp:y:0 gat_conv_191/GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/truediv?
gat_conv_191/dropout_1/IdentityIdentitygat_conv_191/truediv:z:0*
T0*'
_output_shapes
:?????????2!
gat_conv_191/dropout_1/Identity?
"gat_conv_191/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_7/stack?
$gat_conv_191/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gat_conv_191/strided_slice_7/stack_1?
$gat_conv_191/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_7/stack_2?
gat_conv_191/strided_slice_7StridedSlice(gat_conv_191/dropout_1/Identity:output:0+gat_conv_191/strided_slice_7/stack:output:0-gat_conv_191/strided_slice_7/stack_1:output:0-gat_conv_191/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
gat_conv_191/strided_slice_7~
gat_conv_191/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2_4/axis?
gat_conv_191/GatherV2_4GatherV2gat_conv_191/Reshape_1:output:0%gat_conv_191/strided_slice_6:output:0%gat_conv_191/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2
gat_conv_191/GatherV2_4?
gat_conv_191/mul_2Mul%gat_conv_191/strided_slice_7:output:0 gat_conv_191/GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
gat_conv_191/mul_2?
!gat_conv_191/UnsortedSegmentSum_1UnsortedSegmentSumgat_conv_191/mul_2:z:0%gat_conv_191/strided_slice_5:output:0#gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2#
!gat_conv_191/UnsortedSegmentSum_1?
#gat_conv_191/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#gat_conv_191/Mean/reduction_indices?
gat_conv_191/MeanMean*gat_conv_191/UnsortedSegmentSum_1:output:0,gat_conv_191/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Mean?
!gat_conv_191/add_2/ReadVariableOpReadVariableOp*gat_conv_191_add_2_readvariableop_resource*
_output_shapes
:*
dtype02#
!gat_conv_191/add_2/ReadVariableOp?
gat_conv_191/add_2AddV2gat_conv_191/Mean:output:0)gat_conv_191/add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/add_2?
gat_conv_191/SoftmaxSoftmaxgat_conv_191/add_2:z:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Softmax?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,gat_conv_190_reshape_readvariableop_resource*#
_output_shapes
:?*
dtype02G
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_190/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:?28
6gcn_improved_78/gat_conv_190/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_190/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_190/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_190/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp.gat_conv_190_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp0gat_conv_190_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpReadVariableOp*gat_conv_190_add_2_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_190/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@26
4gcn_improved_78/gat_conv_190/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_190/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_190/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_190/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_190/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_190/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_190/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_190/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/mul?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,gat_conv_191_reshape_readvariableop_resource*"
_output_shapes
:@*
dtype02G
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_191/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@28
6gcn_improved_78/gat_conv_191/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_191/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_191/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_191/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp.gat_conv_191_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp0gat_conv_191_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpReadVariableOp*gat_conv_191_add_2_readvariableop_resource*
_output_shapes
:*
dtype02E
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_191/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:26
4gcn_improved_78/gat_conv_191/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_191/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_191/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_191/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_191/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_191/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_191/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_191/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/mul?
IdentityIdentitygat_conv_191/Softmax:softmax:0$^gat_conv_190/Reshape/ReadVariableOp"^gat_conv_190/add_2/ReadVariableOp&^gat_conv_190/transpose/ReadVariableOp(^gat_conv_190/transpose_1/ReadVariableOp$^gat_conv_191/Reshape/ReadVariableOp"^gat_conv_191/add_2/ReadVariableOp&^gat_conv_191/transpose/ReadVariableOp(^gat_conv_191/transpose_1/ReadVariableOpQ^gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpQ^gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*o
_input_shapes^
\:??????????:?????????:?????????:::::::::2J
#gat_conv_190/Reshape/ReadVariableOp#gat_conv_190/Reshape/ReadVariableOp2F
!gat_conv_190/add_2/ReadVariableOp!gat_conv_190/add_2/ReadVariableOp2N
%gat_conv_190/transpose/ReadVariableOp%gat_conv_190/transpose/ReadVariableOp2R
'gat_conv_190/transpose_1/ReadVariableOp'gat_conv_190/transpose_1/ReadVariableOp2J
#gat_conv_191/Reshape/ReadVariableOp#gat_conv_191/Reshape/ReadVariableOp2F
!gat_conv_191/add_2/ReadVariableOp!gat_conv_191/add_2/ReadVariableOp2N
%gat_conv_191/transpose/ReadVariableOp%gat_conv_191/transpose/ReadVariableOp2R
'gat_conv_191/transpose_1/ReadVariableOp'gat_conv_191/transpose_1/ReadVariableOp2?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp2?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:R N
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
g
H__inference_dropout_128_layer_call_and_return_conditional_losses_2758005

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
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
 *???2
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
??
?
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_2759100

inputs
inputs_1	
inputs_2
inputs_3	
gat_conv_190_2759032
gat_conv_190_2759034
gat_conv_190_2759036
gat_conv_190_2759038
gat_conv_191_2759042
gat_conv_191_2759044
gat_conv_191_2759046
gat_conv_191_2759048
identity??$gat_conv_190/StatefulPartitionedCall?$gat_conv_191/StatefulPartitionedCall?Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
dropout_128/PartitionedCallPartitionedCallinputs*
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
H__inference_dropout_128_layer_call_and_return_conditional_losses_27580102
dropout_128/PartitionedCall?
$gat_conv_190/StatefulPartitionedCallStatefulPartitionedCall$dropout_128/PartitionedCall:output:0inputs_1inputs_2inputs_3gat_conv_190_2759032gat_conv_190_2759034gat_conv_190_2759036gat_conv_190_2759038*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_27582192&
$gat_conv_190/StatefulPartitionedCall?
dropout_129/PartitionedCallPartitionedCall-gat_conv_190/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_129_layer_call_and_return_conditional_losses_27584682
dropout_129/PartitionedCall?
$gat_conv_191/StatefulPartitionedCallStatefulPartitionedCall$dropout_129/PartitionedCall:output:0inputs_1inputs_2inputs_3gat_conv_191_2759042gat_conv_191_2759044gat_conv_191_2759046gat_conv_191_2759048*
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
GPU 2J 8? *R
fMRK
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_27586702&
$gat_conv_191/StatefulPartitionedCall?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpReadVariableOpgat_conv_190_2759032*#
_output_shapes
:?*
dtype02G
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_190/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:?28
6gcn_improved_78/gat_conv_190/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_190/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_190/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_190/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOpgat_conv_190_2759034*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOpgat_conv_190_2759036*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpReadVariableOpgat_conv_190_2759038*
_output_shapes
:@*
dtype02E
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_190/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@26
4gcn_improved_78/gat_conv_190/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_190/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_190/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_190/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_190/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_190/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_190/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_190/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/mul?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpReadVariableOpgat_conv_191_2759042*"
_output_shapes
:@*
dtype02G
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_191/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@28
6gcn_improved_78/gat_conv_191/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_191/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_191/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_191/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOpgat_conv_191_2759044*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOpgat_conv_191_2759046*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpReadVariableOpgat_conv_191_2759048*
_output_shapes
:*
dtype02E
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_191/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:26
4gcn_improved_78/gat_conv_191/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_191/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_191/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_191/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_191/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_191/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_191/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_191/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/mul?
IdentityIdentity-gat_conv_191/StatefulPartitionedCall:output:0%^gat_conv_190/StatefulPartitionedCall%^gat_conv_191/StatefulPartitionedCallQ^gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpQ^gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*o
_input_shapes^
\:??????????:?????????:?????????:::::::::2L
$gat_conv_190/StatefulPartitionedCall$gat_conv_190/StatefulPartitionedCall2L
$gat_conv_191/StatefulPartitionedCall$gat_conv_191/StatefulPartitionedCall2?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp2?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:P L
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
?
?
__inference_loss_fn_7_2761043P
Lgcn_improved_78_gat_conv_191_bias_regularizer_square_readvariableop_resource
identity??Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpReadVariableOpLgcn_improved_78_gat_conv_191_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02E
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_191/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:26
4gcn_improved_78/gat_conv_191/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_191/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_191/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_191/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_191/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_191/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_191/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_191/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/mul?
IdentityIdentity5gcn_improved_78/gat_conv_191/bias/Regularizer/mul:z:0D^gcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp
??
?
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_2760469
inputs_0

inputs	
inputs_1
inputs_2	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource!
add_2_readvariableop_resource
identity??Reshape/ReadVariableOp?add_2/ReadVariableOp?Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?transpose/ReadVariableOp?transpose_1/ReadVariableOp?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*#
_output_shapes
:?*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes
:	?@2	
Reshape?
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose?
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1V
ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2?
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim?
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1?
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiples?
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/Tile?
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stack?
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1?
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2?
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_slice?
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stack?
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1?
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2?
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mul?
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stack?
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1?
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2?
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis?
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concat?
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
Repeat/Reshape_1^
boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape?
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stack?
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1?
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2?
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_slice?
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indices?
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodb
boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_1?
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stack?
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1?
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2?
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1b
boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_2?
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stack?
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1?
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2?
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2?
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axis?
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat?
boolean_mask/ReshapeReshapeinputsboolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2
boolean_mask/Reshape?
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
boolean_mask/Reshape_1/shape?
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2
boolean_mask/Where?
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axis?
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
	ones_like?
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shape?
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6h
MatMulMatMulinputs_0Reshape:output:0*
T0*'
_output_shapes
:?????????@2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:?????????2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:?????????2
	LeakyRelu?
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:?????????2
Exp?
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:?????????2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2	
truedivo
dropout/IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:?????????2
dropout/Identity
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicedropout/Identity:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
mul_2?
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2
UnsortedSegmentSum_1_
Shape_1ShapeUnsortedSegmentSum_1:output:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack?
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2?
strided_slice_8StridedSliceShape_1:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
strided_slice_8p
concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:@2
concat_1/values_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2strided_slice_8:output:0concat_1/values_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1?
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0concat_1:output:0*
T0*'
_output_shapes
:?????????@2
	Reshape_2?
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02
add_2/ReadVariableOp{
add_2AddV2Reshape_2:output:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
add_2N
EluElu	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Elu?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpReadVariableOpreshape_readvariableop_resource*#
_output_shapes
:?*
dtype02G
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_190/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:?28
6gcn_improved_78/gat_conv_190/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_190/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_190/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_190/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_190/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@26
4gcn_improved_78/gat_conv_190/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_190/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_190/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_190/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_190/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_190/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_190/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_190/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/mul?
IdentityIdentityElu:activations:0^Reshape/ReadVariableOp^add_2/ReadVariableOpQ^gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::20
Reshape/ReadVariableOpReshape/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:R N
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
%__inference_signature_wrapper_2759225

args_0
args_0_1	
args_0_2
args_0_3	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0args_0_1args_0_2args_0_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_27579862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*o
_input_shapes^
\:??????????:?????????:?????????:::::::::22
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
g
H__inference_dropout_128_layer_call_and_return_conditional_losses_2760045

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
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
 *???2
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
?	
?
.__inference_gat_conv_191_layer_call_fn_2760939
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
GPU 2J 8? *R
fMRK
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_27588522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????@:?????????:?????????:::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????@
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
.__inference_gat_conv_190_layer_call_fn_2760501
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
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_27584082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

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
??
?
#__inference__traced_restore_2761277
file_prefix8
4assignvariableop_gcn_improved_78_gat_conv_190_kernelD
@assignvariableop_1_gcn_improved_78_gat_conv_190_attn_kernel_selfE
Aassignvariableop_2_gcn_improved_78_gat_conv_190_attn_kernel_neigh8
4assignvariableop_3_gcn_improved_78_gat_conv_190_bias:
6assignvariableop_4_gcn_improved_78_gat_conv_191_kernelD
@assignvariableop_5_gcn_improved_78_gat_conv_191_attn_kernel_selfE
Aassignvariableop_6_gcn_improved_78_gat_conv_191_attn_kernel_neigh8
4assignvariableop_7_gcn_improved_78_gat_conv_191_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1B
>assignvariableop_17_adam_gcn_improved_78_gat_conv_190_kernel_mL
Hassignvariableop_18_adam_gcn_improved_78_gat_conv_190_attn_kernel_self_mM
Iassignvariableop_19_adam_gcn_improved_78_gat_conv_190_attn_kernel_neigh_m@
<assignvariableop_20_adam_gcn_improved_78_gat_conv_190_bias_mB
>assignvariableop_21_adam_gcn_improved_78_gat_conv_191_kernel_mL
Hassignvariableop_22_adam_gcn_improved_78_gat_conv_191_attn_kernel_self_mM
Iassignvariableop_23_adam_gcn_improved_78_gat_conv_191_attn_kernel_neigh_m@
<assignvariableop_24_adam_gcn_improved_78_gat_conv_191_bias_mB
>assignvariableop_25_adam_gcn_improved_78_gat_conv_190_kernel_vL
Hassignvariableop_26_adam_gcn_improved_78_gat_conv_190_attn_kernel_self_vM
Iassignvariableop_27_adam_gcn_improved_78_gat_conv_190_attn_kernel_neigh_v@
<assignvariableop_28_adam_gcn_improved_78_gat_conv_190_bias_vB
>assignvariableop_29_adam_gcn_improved_78_gat_conv_191_kernel_vL
Hassignvariableop_30_adam_gcn_improved_78_gat_conv_191_attn_kernel_self_vM
Iassignvariableop_31_adam_gcn_improved_78_gat_conv_191_attn_kernel_neigh_v@
<assignvariableop_32_adam_gcn_improved_78_gat_conv_191_bias_v
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B&gat0/kernel/.ATTRIBUTES/VARIABLE_VALUEB0gat0/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUEB1gat0/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUEB$gat0/bias/.ATTRIBUTES/VARIABLE_VALUEB0classification/kernel/.ATTRIBUTES/VARIABLE_VALUEB:classification/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUEB;classification/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUEB.classification/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBgat0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLgat0/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMgat0/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB@gat0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLclassification/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVclassification/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWclassification/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJclassification/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBgat0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLgat0/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMgat0/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB@gat0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLclassification/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVclassification/attn_kernel_self/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWclassification/attn_kernel_neigh/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJclassification/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp4assignvariableop_gcn_improved_78_gat_conv_190_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp@assignvariableop_1_gcn_improved_78_gat_conv_190_attn_kernel_selfIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpAassignvariableop_2_gcn_improved_78_gat_conv_190_attn_kernel_neighIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp4assignvariableop_3_gcn_improved_78_gat_conv_190_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_gcn_improved_78_gat_conv_191_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp@assignvariableop_5_gcn_improved_78_gat_conv_191_attn_kernel_selfIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpAassignvariableop_6_gcn_improved_78_gat_conv_191_attn_kernel_neighIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp4assignvariableop_7_gcn_improved_78_gat_conv_191_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp>assignvariableop_17_adam_gcn_improved_78_gat_conv_190_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpHassignvariableop_18_adam_gcn_improved_78_gat_conv_190_attn_kernel_self_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpIassignvariableop_19_adam_gcn_improved_78_gat_conv_190_attn_kernel_neigh_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp<assignvariableop_20_adam_gcn_improved_78_gat_conv_190_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp>assignvariableop_21_adam_gcn_improved_78_gat_conv_191_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpHassignvariableop_22_adam_gcn_improved_78_gat_conv_191_attn_kernel_self_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpIassignvariableop_23_adam_gcn_improved_78_gat_conv_191_attn_kernel_neigh_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp<assignvariableop_24_adam_gcn_improved_78_gat_conv_191_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_gcn_improved_78_gat_conv_190_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpHassignvariableop_26_adam_gcn_improved_78_gat_conv_190_attn_kernel_self_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpIassignvariableop_27_adam_gcn_improved_78_gat_conv_190_attn_kernel_neigh_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp<assignvariableop_28_adam_gcn_improved_78_gat_conv_190_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_gcn_improved_78_gat_conv_191_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpHassignvariableop_30_adam_gcn_improved_78_gat_conv_191_attn_kernel_self_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpIassignvariableop_31_adam_gcn_improved_78_gat_conv_191_attn_kernel_neigh_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp<assignvariableop_32_adam_gcn_improved_78_gat_conv_191_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33?
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
??
?
"__inference__wrapped_model_2757986

args_0
args_0_1	
args_0_2
args_0_3	@
<gcn_improved_78_gat_conv_190_reshape_readvariableop_resourceB
>gcn_improved_78_gat_conv_190_transpose_readvariableop_resourceD
@gcn_improved_78_gat_conv_190_transpose_1_readvariableop_resource>
:gcn_improved_78_gat_conv_190_add_2_readvariableop_resource@
<gcn_improved_78_gat_conv_191_reshape_readvariableop_resourceB
>gcn_improved_78_gat_conv_191_transpose_readvariableop_resourceD
@gcn_improved_78_gat_conv_191_transpose_1_readvariableop_resource>
:gcn_improved_78_gat_conv_191_add_2_readvariableop_resource
identity??3gcn_improved_78/gat_conv_190/Reshape/ReadVariableOp?1gcn_improved_78/gat_conv_190/add_2/ReadVariableOp?5gcn_improved_78/gat_conv_190/transpose/ReadVariableOp?7gcn_improved_78/gat_conv_190/transpose_1/ReadVariableOp?3gcn_improved_78/gat_conv_191/Reshape/ReadVariableOp?1gcn_improved_78/gat_conv_191/add_2/ReadVariableOp?5gcn_improved_78/gat_conv_191/transpose/ReadVariableOp?7gcn_improved_78/gat_conv_191/transpose_1/ReadVariableOp?
$gcn_improved_78/dropout_128/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2&
$gcn_improved_78/dropout_128/Identity?
3gcn_improved_78/gat_conv_190/Reshape/ReadVariableOpReadVariableOp<gcn_improved_78_gat_conv_190_reshape_readvariableop_resource*#
_output_shapes
:?*
dtype025
3gcn_improved_78/gat_conv_190/Reshape/ReadVariableOp?
*gcn_improved_78/gat_conv_190/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2,
*gcn_improved_78/gat_conv_190/Reshape/shape?
$gcn_improved_78/gat_conv_190/ReshapeReshape;gcn_improved_78/gat_conv_190/Reshape/ReadVariableOp:value:03gcn_improved_78/gat_conv_190/Reshape/shape:output:0*
T0*
_output_shapes
:	?@2&
$gcn_improved_78/gat_conv_190/Reshape?
5gcn_improved_78/gat_conv_190/transpose/ReadVariableOpReadVariableOp>gcn_improved_78_gat_conv_190_transpose_readvariableop_resource*"
_output_shapes
:*
dtype027
5gcn_improved_78/gat_conv_190/transpose/ReadVariableOp?
+gcn_improved_78/gat_conv_190/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+gcn_improved_78/gat_conv_190/transpose/perm?
&gcn_improved_78/gat_conv_190/transpose	Transpose=gcn_improved_78/gat_conv_190/transpose/ReadVariableOp:value:04gcn_improved_78/gat_conv_190/transpose/perm:output:0*
T0*"
_output_shapes
:2(
&gcn_improved_78/gat_conv_190/transpose?
7gcn_improved_78/gat_conv_190/transpose_1/ReadVariableOpReadVariableOp@gcn_improved_78_gat_conv_190_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype029
7gcn_improved_78/gat_conv_190/transpose_1/ReadVariableOp?
-gcn_improved_78/gat_conv_190/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2/
-gcn_improved_78/gat_conv_190/transpose_1/perm?
(gcn_improved_78/gat_conv_190/transpose_1	Transpose?gcn_improved_78/gat_conv_190/transpose_1/ReadVariableOp:value:06gcn_improved_78/gat_conv_190/transpose_1/perm:output:0*
T0*"
_output_shapes
:2*
(gcn_improved_78/gat_conv_190/transpose_1?
"gcn_improved_78/gat_conv_190/ShapeShape-gcn_improved_78/dropout_128/Identity:output:0*
T0*
_output_shapes
:*
out_type0	2$
"gcn_improved_78/gat_conv_190/Shape?
0gcn_improved_78/gat_conv_190/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????22
0gcn_improved_78/gat_conv_190/strided_slice/stack?
2gcn_improved_78/gat_conv_190/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????24
2gcn_improved_78/gat_conv_190/strided_slice/stack_1?
2gcn_improved_78/gat_conv_190/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2gcn_improved_78/gat_conv_190/strided_slice/stack_2?
*gcn_improved_78/gat_conv_190/strided_sliceStridedSlice+gcn_improved_78/gat_conv_190/Shape:output:09gcn_improved_78/gat_conv_190/strided_slice/stack:output:0;gcn_improved_78/gat_conv_190/strided_slice/stack_1:output:0;gcn_improved_78/gat_conv_190/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2,
*gcn_improved_78/gat_conv_190/strided_slice?
2gcn_improved_78/gat_conv_190/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_190/strided_slice_1/stack?
4gcn_improved_78/gat_conv_190/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_190/strided_slice_1/stack_1?
4gcn_improved_78/gat_conv_190/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_190/strided_slice_1/stack_2?
,gcn_improved_78/gat_conv_190/strided_slice_1StridedSliceargs_0_1;gcn_improved_78/gat_conv_190/strided_slice_1/stack:output:0=gcn_improved_78/gat_conv_190/strided_slice_1/stack_1:output:0=gcn_improved_78/gat_conv_190/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_190/strided_slice_1?
2gcn_improved_78/gat_conv_190/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       24
2gcn_improved_78/gat_conv_190/strided_slice_2/stack?
4gcn_improved_78/gat_conv_190/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_190/strided_slice_2/stack_1?
4gcn_improved_78/gat_conv_190/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_190/strided_slice_2/stack_2?
,gcn_improved_78/gat_conv_190/strided_slice_2StridedSliceargs_0_1;gcn_improved_78/gat_conv_190/strided_slice_2/stack:output:0=gcn_improved_78/gat_conv_190/strided_slice_2/stack_1:output:0=gcn_improved_78/gat_conv_190/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_190/strided_slice_2?
%gcn_improved_78/gat_conv_190/NotEqualNotEqual5gcn_improved_78/gat_conv_190/strided_slice_1:output:05gcn_improved_78/gat_conv_190/strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2'
%gcn_improved_78/gat_conv_190/NotEqual?
(gcn_improved_78/gat_conv_190/EnsureShapeEnsureShape)gcn_improved_78/gat_conv_190/NotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2*
(gcn_improved_78/gat_conv_190/EnsureShape?
(gcn_improved_78/gat_conv_190/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2*
(gcn_improved_78/gat_conv_190/range/start?
(gcn_improved_78/gat_conv_190/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2*
(gcn_improved_78/gat_conv_190/range/delta?
"gcn_improved_78/gat_conv_190/rangeRange1gcn_improved_78/gat_conv_190/range/start:output:03gcn_improved_78/gat_conv_190/strided_slice:output:01gcn_improved_78/gat_conv_190/range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_190/range?
2gcn_improved_78/gat_conv_190/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_190/strided_slice_3/stack?
4gcn_improved_78/gat_conv_190/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4gcn_improved_78/gat_conv_190/strided_slice_3/stack_1?
4gcn_improved_78/gat_conv_190/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_190/strided_slice_3/stack_2?
,gcn_improved_78/gat_conv_190/strided_slice_3StridedSlice+gcn_improved_78/gat_conv_190/range:output:0;gcn_improved_78/gat_conv_190/strided_slice_3/stack:output:0=gcn_improved_78/gat_conv_190/strided_slice_3/stack_1:output:0=gcn_improved_78/gat_conv_190/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2.
,gcn_improved_78/gat_conv_190/strided_slice_3?
+gcn_improved_78/gat_conv_190/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2-
+gcn_improved_78/gat_conv_190/Repeat/repeats?
(gcn_improved_78/gat_conv_190/Repeat/CastCast4gcn_improved_78/gat_conv_190/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(gcn_improved_78/gat_conv_190/Repeat/Cast?
)gcn_improved_78/gat_conv_190/Repeat/ShapeShape5gcn_improved_78/gat_conv_190/strided_slice_3:output:0*
T0	*
_output_shapes
:2+
)gcn_improved_78/gat_conv_190/Repeat/Shape?
1gcn_improved_78/gat_conv_190/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 23
1gcn_improved_78/gat_conv_190/Repeat/Reshape/shape?
3gcn_improved_78/gat_conv_190/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 25
3gcn_improved_78/gat_conv_190/Repeat/Reshape/shape_1?
+gcn_improved_78/gat_conv_190/Repeat/ReshapeReshape,gcn_improved_78/gat_conv_190/Repeat/Cast:y:0<gcn_improved_78/gat_conv_190/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2-
+gcn_improved_78/gat_conv_190/Repeat/Reshape?
2gcn_improved_78/gat_conv_190/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :24
2gcn_improved_78/gat_conv_190/Repeat/ExpandDims/dim?
.gcn_improved_78/gat_conv_190/Repeat/ExpandDims
ExpandDims5gcn_improved_78/gat_conv_190/strided_slice_3:output:0;gcn_improved_78/gat_conv_190/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????20
.gcn_improved_78/gat_conv_190/Repeat/ExpandDims?
4gcn_improved_78/gat_conv_190/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :26
4gcn_improved_78/gat_conv_190/Repeat/Tile/multiples/0?
4gcn_improved_78/gat_conv_190/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :26
4gcn_improved_78/gat_conv_190/Repeat/Tile/multiples/1?
2gcn_improved_78/gat_conv_190/Repeat/Tile/multiplesPack=gcn_improved_78/gat_conv_190/Repeat/Tile/multiples/0:output:0=gcn_improved_78/gat_conv_190/Repeat/Tile/multiples/1:output:04gcn_improved_78/gat_conv_190/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:24
2gcn_improved_78/gat_conv_190/Repeat/Tile/multiples?
(gcn_improved_78/gat_conv_190/Repeat/TileTile7gcn_improved_78/gat_conv_190/Repeat/ExpandDims:output:0;gcn_improved_78/gat_conv_190/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2*
(gcn_improved_78/gat_conv_190/Repeat/Tile?
7gcn_improved_78/gat_conv_190/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7gcn_improved_78/gat_conv_190/Repeat/strided_slice/stack?
9gcn_improved_78/gat_conv_190/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9gcn_improved_78/gat_conv_190/Repeat/strided_slice/stack_1?
9gcn_improved_78/gat_conv_190/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9gcn_improved_78/gat_conv_190/Repeat/strided_slice/stack_2?
1gcn_improved_78/gat_conv_190/Repeat/strided_sliceStridedSlice2gcn_improved_78/gat_conv_190/Repeat/Shape:output:0@gcn_improved_78/gat_conv_190/Repeat/strided_slice/stack:output:0Bgcn_improved_78/gat_conv_190/Repeat/strided_slice/stack_1:output:0Bgcn_improved_78/gat_conv_190/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask23
1gcn_improved_78/gat_conv_190/Repeat/strided_slice?
9gcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9gcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stack?
;gcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;gcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stack_1?
;gcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;gcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stack_2?
3gcn_improved_78/gat_conv_190/Repeat/strided_slice_1StridedSlice2gcn_improved_78/gat_conv_190/Repeat/Shape:output:0Bgcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stack:output:0Dgcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stack_1:output:0Dgcn_improved_78/gat_conv_190/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3gcn_improved_78/gat_conv_190/Repeat/strided_slice_1?
'gcn_improved_78/gat_conv_190/Repeat/mulMul4gcn_improved_78/gat_conv_190/Repeat/Reshape:output:0<gcn_improved_78/gat_conv_190/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2)
'gcn_improved_78/gat_conv_190/Repeat/mul?
9gcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9gcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stack?
;gcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;gcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stack_1?
;gcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;gcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stack_2?
3gcn_improved_78/gat_conv_190/Repeat/strided_slice_2StridedSlice2gcn_improved_78/gat_conv_190/Repeat/Shape:output:0Bgcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stack:output:0Dgcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stack_1:output:0Dgcn_improved_78/gat_conv_190/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask25
3gcn_improved_78/gat_conv_190/Repeat/strided_slice_2?
3gcn_improved_78/gat_conv_190/Repeat/concat/values_1Pack+gcn_improved_78/gat_conv_190/Repeat/mul:z:0*
N*
T0*
_output_shapes
:25
3gcn_improved_78/gat_conv_190/Repeat/concat/values_1?
/gcn_improved_78/gat_conv_190/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/gcn_improved_78/gat_conv_190/Repeat/concat/axis?
*gcn_improved_78/gat_conv_190/Repeat/concatConcatV2:gcn_improved_78/gat_conv_190/Repeat/strided_slice:output:0<gcn_improved_78/gat_conv_190/Repeat/concat/values_1:output:0<gcn_improved_78/gat_conv_190/Repeat/strided_slice_2:output:08gcn_improved_78/gat_conv_190/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*gcn_improved_78/gat_conv_190/Repeat/concat?
-gcn_improved_78/gat_conv_190/Repeat/Reshape_1Reshape1gcn_improved_78/gat_conv_190/Repeat/Tile:output:03gcn_improved_78/gat_conv_190/Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2/
-gcn_improved_78/gat_conv_190/Repeat/Reshape_1?
/gcn_improved_78/gat_conv_190/boolean_mask/ShapeShapeargs_0_1*
T0	*
_output_shapes
:21
/gcn_improved_78/gat_conv_190/boolean_mask/Shape?
=gcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=gcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stack?
?gcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?gcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stack_1?
?gcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?gcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stack_2?
7gcn_improved_78/gat_conv_190/boolean_mask/strided_sliceStridedSlice8gcn_improved_78/gat_conv_190/boolean_mask/Shape:output:0Fgcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stack:output:0Hgcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stack_1:output:0Hgcn_improved_78/gat_conv_190/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:29
7gcn_improved_78/gat_conv_190/boolean_mask/strided_slice?
@gcn_improved_78/gat_conv_190/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2B
@gcn_improved_78/gat_conv_190/boolean_mask/Prod/reduction_indices?
.gcn_improved_78/gat_conv_190/boolean_mask/ProdProd@gcn_improved_78/gat_conv_190/boolean_mask/strided_slice:output:0Igcn_improved_78/gat_conv_190/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 20
.gcn_improved_78/gat_conv_190/boolean_mask/Prod?
1gcn_improved_78/gat_conv_190/boolean_mask/Shape_1Shapeargs_0_1*
T0	*
_output_shapes
:23
1gcn_improved_78/gat_conv_190/boolean_mask/Shape_1?
?gcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?gcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stack?
Agcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2C
Agcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stack_1?
Agcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Agcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stack_2?
9gcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1StridedSlice:gcn_improved_78/gat_conv_190/boolean_mask/Shape_1:output:0Hgcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stack:output:0Jgcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stack_1:output:0Jgcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2;
9gcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1?
1gcn_improved_78/gat_conv_190/boolean_mask/Shape_2Shapeargs_0_1*
T0	*
_output_shapes
:23
1gcn_improved_78/gat_conv_190/boolean_mask/Shape_2?
?gcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?gcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stack?
Agcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2C
Agcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stack_1?
Agcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Agcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stack_2?
9gcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2StridedSlice:gcn_improved_78/gat_conv_190/boolean_mask/Shape_2:output:0Hgcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stack:output:0Jgcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stack_1:output:0Jgcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2;
9gcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2?
9gcn_improved_78/gat_conv_190/boolean_mask/concat/values_1Pack7gcn_improved_78/gat_conv_190/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2;
9gcn_improved_78/gat_conv_190/boolean_mask/concat/values_1?
5gcn_improved_78/gat_conv_190/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5gcn_improved_78/gat_conv_190/boolean_mask/concat/axis?
0gcn_improved_78/gat_conv_190/boolean_mask/concatConcatV2Bgcn_improved_78/gat_conv_190/boolean_mask/strided_slice_1:output:0Bgcn_improved_78/gat_conv_190/boolean_mask/concat/values_1:output:0Bgcn_improved_78/gat_conv_190/boolean_mask/strided_slice_2:output:0>gcn_improved_78/gat_conv_190/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0gcn_improved_78/gat_conv_190/boolean_mask/concat?
1gcn_improved_78/gat_conv_190/boolean_mask/ReshapeReshapeargs_0_19gcn_improved_78/gat_conv_190/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????23
1gcn_improved_78/gat_conv_190/boolean_mask/Reshape?
9gcn_improved_78/gat_conv_190/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2;
9gcn_improved_78/gat_conv_190/boolean_mask/Reshape_1/shape?
3gcn_improved_78/gat_conv_190/boolean_mask/Reshape_1Reshape1gcn_improved_78/gat_conv_190/EnsureShape:output:0Bgcn_improved_78/gat_conv_190/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????25
3gcn_improved_78/gat_conv_190/boolean_mask/Reshape_1?
/gcn_improved_78/gat_conv_190/boolean_mask/WhereWhere<gcn_improved_78/gat_conv_190/boolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????21
/gcn_improved_78/gat_conv_190/boolean_mask/Where?
1gcn_improved_78/gat_conv_190/boolean_mask/SqueezeSqueeze7gcn_improved_78/gat_conv_190/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
23
1gcn_improved_78/gat_conv_190/boolean_mask/Squeeze?
7gcn_improved_78/gat_conv_190/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7gcn_improved_78/gat_conv_190/boolean_mask/GatherV2/axis?
2gcn_improved_78/gat_conv_190/boolean_mask/GatherV2GatherV2:gcn_improved_78/gat_conv_190/boolean_mask/Reshape:output:0:gcn_improved_78/gat_conv_190/boolean_mask/Squeeze:output:0@gcn_improved_78/gat_conv_190/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????24
2gcn_improved_78/gat_conv_190/boolean_mask/GatherV2?
(gcn_improved_78/gat_conv_190/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(gcn_improved_78/gat_conv_190/concat/axis?
#gcn_improved_78/gat_conv_190/concatConcatV2;gcn_improved_78/gat_conv_190/boolean_mask/GatherV2:output:06gcn_improved_78/gat_conv_190/Repeat/Reshape_1:output:01gcn_improved_78/gat_conv_190/concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2%
#gcn_improved_78/gat_conv_190/concat?
2gcn_improved_78/gat_conv_190/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_190/strided_slice_4/stack?
4gcn_improved_78/gat_conv_190/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_190/strided_slice_4/stack_1?
4gcn_improved_78/gat_conv_190/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_190/strided_slice_4/stack_2?
,gcn_improved_78/gat_conv_190/strided_slice_4StridedSlice,gcn_improved_78/gat_conv_190/concat:output:0;gcn_improved_78/gat_conv_190/strided_slice_4/stack:output:0=gcn_improved_78/gat_conv_190/strided_slice_4/stack_1:output:0=gcn_improved_78/gat_conv_190/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_190/strided_slice_4?
,gcn_improved_78/gat_conv_190/ones_like/ShapeShape5gcn_improved_78/gat_conv_190/strided_slice_4:output:0*
T0	*
_output_shapes
:2.
,gcn_improved_78/gat_conv_190/ones_like/Shape?
,gcn_improved_78/gat_conv_190/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2.
,gcn_improved_78/gat_conv_190/ones_like/Const?
&gcn_improved_78/gat_conv_190/ones_likeFill5gcn_improved_78/gat_conv_190/ones_like/Shape:output:05gcn_improved_78/gat_conv_190/ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2(
&gcn_improved_78/gat_conv_190/ones_like?
6gcn_improved_78/gat_conv_190/SparseReorder/input_shapePack3gcn_improved_78/gat_conv_190/strided_slice:output:03gcn_improved_78/gat_conv_190/strided_slice:output:0*
N*
T0	*
_output_shapes
:28
6gcn_improved_78/gat_conv_190/SparseReorder/input_shape?
*gcn_improved_78/gat_conv_190/SparseReorderSparseReorder,gcn_improved_78/gat_conv_190/concat:output:0/gcn_improved_78/gat_conv_190/ones_like:output:0?gcn_improved_78/gat_conv_190/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2,
*gcn_improved_78/gat_conv_190/SparseReorder?
2gcn_improved_78/gat_conv_190/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       24
2gcn_improved_78/gat_conv_190/strided_slice_5/stack?
4gcn_improved_78/gat_conv_190/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_190/strided_slice_5/stack_1?
4gcn_improved_78/gat_conv_190/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_190/strided_slice_5/stack_2?
,gcn_improved_78/gat_conv_190/strided_slice_5StridedSlice;gcn_improved_78/gat_conv_190/SparseReorder:output_indices:0;gcn_improved_78/gat_conv_190/strided_slice_5/stack:output:0=gcn_improved_78/gat_conv_190/strided_slice_5/stack_1:output:0=gcn_improved_78/gat_conv_190/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_190/strided_slice_5?
2gcn_improved_78/gat_conv_190/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_190/strided_slice_6/stack?
4gcn_improved_78/gat_conv_190/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_190/strided_slice_6/stack_1?
4gcn_improved_78/gat_conv_190/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_190/strided_slice_6/stack_2?
,gcn_improved_78/gat_conv_190/strided_slice_6StridedSlice;gcn_improved_78/gat_conv_190/SparseReorder:output_indices:0;gcn_improved_78/gat_conv_190/strided_slice_6/stack:output:0=gcn_improved_78/gat_conv_190/strided_slice_6/stack_1:output:0=gcn_improved_78/gat_conv_190/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_190/strided_slice_6?
#gcn_improved_78/gat_conv_190/MatMulMatMul-gcn_improved_78/dropout_128/Identity:output:0-gcn_improved_78/gat_conv_190/Reshape:output:0*
T0*'
_output_shapes
:?????????@2%
#gcn_improved_78/gat_conv_190/MatMul?
,gcn_improved_78/gat_conv_190/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2.
,gcn_improved_78/gat_conv_190/Reshape_1/shape?
&gcn_improved_78/gat_conv_190/Reshape_1Reshape-gcn_improved_78/gat_conv_190/MatMul:product:05gcn_improved_78/gat_conv_190/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2(
&gcn_improved_78/gat_conv_190/Reshape_1?
 gcn_improved_78/gat_conv_190/mulMul/gcn_improved_78/gat_conv_190/Reshape_1:output:0*gcn_improved_78/gat_conv_190/transpose:y:0*
T0*+
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_190/mul?
2gcn_improved_78/gat_conv_190/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2gcn_improved_78/gat_conv_190/Sum/reduction_indices?
 gcn_improved_78/gat_conv_190/SumSum$gcn_improved_78/gat_conv_190/mul:z:0;gcn_improved_78/gat_conv_190/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_190/Sum?
*gcn_improved_78/gat_conv_190/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*gcn_improved_78/gat_conv_190/GatherV2/axis?
%gcn_improved_78/gat_conv_190/GatherV2GatherV2)gcn_improved_78/gat_conv_190/Sum:output:05gcn_improved_78/gat_conv_190/strided_slice_5:output:03gcn_improved_78/gat_conv_190/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2'
%gcn_improved_78/gat_conv_190/GatherV2?
"gcn_improved_78/gat_conv_190/mul_1Mul/gcn_improved_78/gat_conv_190/Reshape_1:output:0,gcn_improved_78/gat_conv_190/transpose_1:y:0*
T0*+
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_190/mul_1?
4gcn_improved_78/gat_conv_190/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4gcn_improved_78/gat_conv_190/Sum_1/reduction_indices?
"gcn_improved_78/gat_conv_190/Sum_1Sum&gcn_improved_78/gat_conv_190/mul_1:z:0=gcn_improved_78/gat_conv_190/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_190/Sum_1?
,gcn_improved_78/gat_conv_190/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,gcn_improved_78/gat_conv_190/GatherV2_1/axis?
'gcn_improved_78/gat_conv_190/GatherV2_1GatherV2+gcn_improved_78/gat_conv_190/Sum_1:output:05gcn_improved_78/gat_conv_190/strided_slice_6:output:05gcn_improved_78/gat_conv_190/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2)
'gcn_improved_78/gat_conv_190/GatherV2_1?
 gcn_improved_78/gat_conv_190/addAddV2.gcn_improved_78/gat_conv_190/GatherV2:output:00gcn_improved_78/gat_conv_190/GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_190/add?
&gcn_improved_78/gat_conv_190/LeakyRelu	LeakyRelu$gcn_improved_78/gat_conv_190/add:z:0*'
_output_shapes
:?????????2(
&gcn_improved_78/gat_conv_190/LeakyRelu?
/gcn_improved_78/gat_conv_190/UnsortedSegmentMaxUnsortedSegmentMax4gcn_improved_78/gat_conv_190/LeakyRelu:activations:05gcn_improved_78/gat_conv_190/strided_slice_5:output:03gcn_improved_78/gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????21
/gcn_improved_78/gat_conv_190/UnsortedSegmentMax?
,gcn_improved_78/gat_conv_190/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,gcn_improved_78/gat_conv_190/GatherV2_2/axis?
'gcn_improved_78/gat_conv_190/GatherV2_2GatherV28gcn_improved_78/gat_conv_190/UnsortedSegmentMax:output:05gcn_improved_78/gat_conv_190/strided_slice_5:output:05gcn_improved_78/gat_conv_190/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2)
'gcn_improved_78/gat_conv_190/GatherV2_2?
 gcn_improved_78/gat_conv_190/subSub4gcn_improved_78/gat_conv_190/LeakyRelu:activations:00gcn_improved_78/gat_conv_190/GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_190/sub?
 gcn_improved_78/gat_conv_190/ExpExp$gcn_improved_78/gat_conv_190/sub:z:0*
T0*'
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_190/Exp?
/gcn_improved_78/gat_conv_190/UnsortedSegmentSumUnsortedSegmentSum$gcn_improved_78/gat_conv_190/Exp:y:05gcn_improved_78/gat_conv_190/strided_slice_5:output:03gcn_improved_78/gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????21
/gcn_improved_78/gat_conv_190/UnsortedSegmentSum?
$gcn_improved_78/gat_conv_190/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02&
$gcn_improved_78/gat_conv_190/add_1/y?
"gcn_improved_78/gat_conv_190/add_1AddV28gcn_improved_78/gat_conv_190/UnsortedSegmentSum:output:0-gcn_improved_78/gat_conv_190/add_1/y:output:0*
T0*'
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_190/add_1?
,gcn_improved_78/gat_conv_190/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,gcn_improved_78/gat_conv_190/GatherV2_3/axis?
'gcn_improved_78/gat_conv_190/GatherV2_3GatherV2&gcn_improved_78/gat_conv_190/add_1:z:05gcn_improved_78/gat_conv_190/strided_slice_5:output:05gcn_improved_78/gat_conv_190/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2)
'gcn_improved_78/gat_conv_190/GatherV2_3?
$gcn_improved_78/gat_conv_190/truedivRealDiv$gcn_improved_78/gat_conv_190/Exp:y:00gcn_improved_78/gat_conv_190/GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2&
$gcn_improved_78/gat_conv_190/truediv?
-gcn_improved_78/gat_conv_190/dropout/IdentityIdentity(gcn_improved_78/gat_conv_190/truediv:z:0*
T0*'
_output_shapes
:?????????2/
-gcn_improved_78/gat_conv_190/dropout/Identity?
2gcn_improved_78/gat_conv_190/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_190/strided_slice_7/stack?
4gcn_improved_78/gat_conv_190/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4gcn_improved_78/gat_conv_190/strided_slice_7/stack_1?
4gcn_improved_78/gat_conv_190/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_190/strided_slice_7/stack_2?
,gcn_improved_78/gat_conv_190/strided_slice_7StridedSlice6gcn_improved_78/gat_conv_190/dropout/Identity:output:0;gcn_improved_78/gat_conv_190/strided_slice_7/stack:output:0=gcn_improved_78/gat_conv_190/strided_slice_7/stack_1:output:0=gcn_improved_78/gat_conv_190/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2.
,gcn_improved_78/gat_conv_190/strided_slice_7?
,gcn_improved_78/gat_conv_190/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,gcn_improved_78/gat_conv_190/GatherV2_4/axis?
'gcn_improved_78/gat_conv_190/GatherV2_4GatherV2/gcn_improved_78/gat_conv_190/Reshape_1:output:05gcn_improved_78/gat_conv_190/strided_slice_6:output:05gcn_improved_78/gat_conv_190/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2)
'gcn_improved_78/gat_conv_190/GatherV2_4?
"gcn_improved_78/gat_conv_190/mul_2Mul5gcn_improved_78/gat_conv_190/strided_slice_7:output:00gcn_improved_78/gat_conv_190/GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_190/mul_2?
1gcn_improved_78/gat_conv_190/UnsortedSegmentSum_1UnsortedSegmentSum&gcn_improved_78/gat_conv_190/mul_2:z:05gcn_improved_78/gat_conv_190/strided_slice_5:output:03gcn_improved_78/gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????23
1gcn_improved_78/gat_conv_190/UnsortedSegmentSum_1?
$gcn_improved_78/gat_conv_190/Shape_1Shape:gcn_improved_78/gat_conv_190/UnsortedSegmentSum_1:output:0*
T0*
_output_shapes
:2&
$gcn_improved_78/gat_conv_190/Shape_1?
2gcn_improved_78/gat_conv_190/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2gcn_improved_78/gat_conv_190/strided_slice_8/stack?
4gcn_improved_78/gat_conv_190/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????26
4gcn_improved_78/gat_conv_190/strided_slice_8/stack_1?
4gcn_improved_78/gat_conv_190/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4gcn_improved_78/gat_conv_190/strided_slice_8/stack_2?
,gcn_improved_78/gat_conv_190/strided_slice_8StridedSlice-gcn_improved_78/gat_conv_190/Shape_1:output:0;gcn_improved_78/gat_conv_190/strided_slice_8/stack:output:0=gcn_improved_78/gat_conv_190/strided_slice_8/stack_1:output:0=gcn_improved_78/gat_conv_190/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2.
,gcn_improved_78/gat_conv_190/strided_slice_8?
.gcn_improved_78/gat_conv_190/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:@20
.gcn_improved_78/gat_conv_190/concat_1/values_1?
*gcn_improved_78/gat_conv_190/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*gcn_improved_78/gat_conv_190/concat_1/axis?
%gcn_improved_78/gat_conv_190/concat_1ConcatV25gcn_improved_78/gat_conv_190/strided_slice_8:output:07gcn_improved_78/gat_conv_190/concat_1/values_1:output:03gcn_improved_78/gat_conv_190/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%gcn_improved_78/gat_conv_190/concat_1?
&gcn_improved_78/gat_conv_190/Reshape_2Reshape:gcn_improved_78/gat_conv_190/UnsortedSegmentSum_1:output:0.gcn_improved_78/gat_conv_190/concat_1:output:0*
T0*'
_output_shapes
:?????????@2(
&gcn_improved_78/gat_conv_190/Reshape_2?
1gcn_improved_78/gat_conv_190/add_2/ReadVariableOpReadVariableOp:gcn_improved_78_gat_conv_190_add_2_readvariableop_resource*
_output_shapes
:@*
dtype023
1gcn_improved_78/gat_conv_190/add_2/ReadVariableOp?
"gcn_improved_78/gat_conv_190/add_2AddV2/gcn_improved_78/gat_conv_190/Reshape_2:output:09gcn_improved_78/gat_conv_190/add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2$
"gcn_improved_78/gat_conv_190/add_2?
 gcn_improved_78/gat_conv_190/EluElu&gcn_improved_78/gat_conv_190/add_2:z:0*
T0*'
_output_shapes
:?????????@2"
 gcn_improved_78/gat_conv_190/Elu?
$gcn_improved_78/dropout_129/IdentityIdentity.gcn_improved_78/gat_conv_190/Elu:activations:0*
T0*'
_output_shapes
:?????????@2&
$gcn_improved_78/dropout_129/Identity?
3gcn_improved_78/gat_conv_191/Reshape/ReadVariableOpReadVariableOp<gcn_improved_78_gat_conv_191_reshape_readvariableop_resource*"
_output_shapes
:@*
dtype025
3gcn_improved_78/gat_conv_191/Reshape/ReadVariableOp?
*gcn_improved_78/gat_conv_191/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2,
*gcn_improved_78/gat_conv_191/Reshape/shape?
$gcn_improved_78/gat_conv_191/ReshapeReshape;gcn_improved_78/gat_conv_191/Reshape/ReadVariableOp:value:03gcn_improved_78/gat_conv_191/Reshape/shape:output:0*
T0*
_output_shapes

:@2&
$gcn_improved_78/gat_conv_191/Reshape?
5gcn_improved_78/gat_conv_191/transpose/ReadVariableOpReadVariableOp>gcn_improved_78_gat_conv_191_transpose_readvariableop_resource*"
_output_shapes
:*
dtype027
5gcn_improved_78/gat_conv_191/transpose/ReadVariableOp?
+gcn_improved_78/gat_conv_191/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+gcn_improved_78/gat_conv_191/transpose/perm?
&gcn_improved_78/gat_conv_191/transpose	Transpose=gcn_improved_78/gat_conv_191/transpose/ReadVariableOp:value:04gcn_improved_78/gat_conv_191/transpose/perm:output:0*
T0*"
_output_shapes
:2(
&gcn_improved_78/gat_conv_191/transpose?
7gcn_improved_78/gat_conv_191/transpose_1/ReadVariableOpReadVariableOp@gcn_improved_78_gat_conv_191_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype029
7gcn_improved_78/gat_conv_191/transpose_1/ReadVariableOp?
-gcn_improved_78/gat_conv_191/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2/
-gcn_improved_78/gat_conv_191/transpose_1/perm?
(gcn_improved_78/gat_conv_191/transpose_1	Transpose?gcn_improved_78/gat_conv_191/transpose_1/ReadVariableOp:value:06gcn_improved_78/gat_conv_191/transpose_1/perm:output:0*
T0*"
_output_shapes
:2*
(gcn_improved_78/gat_conv_191/transpose_1?
"gcn_improved_78/gat_conv_191/ShapeShape-gcn_improved_78/dropout_129/Identity:output:0*
T0*
_output_shapes
:*
out_type0	2$
"gcn_improved_78/gat_conv_191/Shape?
0gcn_improved_78/gat_conv_191/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????22
0gcn_improved_78/gat_conv_191/strided_slice/stack?
2gcn_improved_78/gat_conv_191/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????24
2gcn_improved_78/gat_conv_191/strided_slice/stack_1?
2gcn_improved_78/gat_conv_191/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2gcn_improved_78/gat_conv_191/strided_slice/stack_2?
*gcn_improved_78/gat_conv_191/strided_sliceStridedSlice+gcn_improved_78/gat_conv_191/Shape:output:09gcn_improved_78/gat_conv_191/strided_slice/stack:output:0;gcn_improved_78/gat_conv_191/strided_slice/stack_1:output:0;gcn_improved_78/gat_conv_191/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2,
*gcn_improved_78/gat_conv_191/strided_slice?
2gcn_improved_78/gat_conv_191/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_191/strided_slice_1/stack?
4gcn_improved_78/gat_conv_191/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_191/strided_slice_1/stack_1?
4gcn_improved_78/gat_conv_191/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_191/strided_slice_1/stack_2?
,gcn_improved_78/gat_conv_191/strided_slice_1StridedSliceargs_0_1;gcn_improved_78/gat_conv_191/strided_slice_1/stack:output:0=gcn_improved_78/gat_conv_191/strided_slice_1/stack_1:output:0=gcn_improved_78/gat_conv_191/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_191/strided_slice_1?
2gcn_improved_78/gat_conv_191/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       24
2gcn_improved_78/gat_conv_191/strided_slice_2/stack?
4gcn_improved_78/gat_conv_191/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_191/strided_slice_2/stack_1?
4gcn_improved_78/gat_conv_191/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_191/strided_slice_2/stack_2?
,gcn_improved_78/gat_conv_191/strided_slice_2StridedSliceargs_0_1;gcn_improved_78/gat_conv_191/strided_slice_2/stack:output:0=gcn_improved_78/gat_conv_191/strided_slice_2/stack_1:output:0=gcn_improved_78/gat_conv_191/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_191/strided_slice_2?
%gcn_improved_78/gat_conv_191/NotEqualNotEqual5gcn_improved_78/gat_conv_191/strided_slice_1:output:05gcn_improved_78/gat_conv_191/strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2'
%gcn_improved_78/gat_conv_191/NotEqual?
(gcn_improved_78/gat_conv_191/EnsureShapeEnsureShape)gcn_improved_78/gat_conv_191/NotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2*
(gcn_improved_78/gat_conv_191/EnsureShape?
(gcn_improved_78/gat_conv_191/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2*
(gcn_improved_78/gat_conv_191/range/start?
(gcn_improved_78/gat_conv_191/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2*
(gcn_improved_78/gat_conv_191/range/delta?
"gcn_improved_78/gat_conv_191/rangeRange1gcn_improved_78/gat_conv_191/range/start:output:03gcn_improved_78/gat_conv_191/strided_slice:output:01gcn_improved_78/gat_conv_191/range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_191/range?
2gcn_improved_78/gat_conv_191/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_191/strided_slice_3/stack?
4gcn_improved_78/gat_conv_191/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4gcn_improved_78/gat_conv_191/strided_slice_3/stack_1?
4gcn_improved_78/gat_conv_191/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_191/strided_slice_3/stack_2?
,gcn_improved_78/gat_conv_191/strided_slice_3StridedSlice+gcn_improved_78/gat_conv_191/range:output:0;gcn_improved_78/gat_conv_191/strided_slice_3/stack:output:0=gcn_improved_78/gat_conv_191/strided_slice_3/stack_1:output:0=gcn_improved_78/gat_conv_191/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2.
,gcn_improved_78/gat_conv_191/strided_slice_3?
+gcn_improved_78/gat_conv_191/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2-
+gcn_improved_78/gat_conv_191/Repeat/repeats?
(gcn_improved_78/gat_conv_191/Repeat/CastCast4gcn_improved_78/gat_conv_191/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(gcn_improved_78/gat_conv_191/Repeat/Cast?
)gcn_improved_78/gat_conv_191/Repeat/ShapeShape5gcn_improved_78/gat_conv_191/strided_slice_3:output:0*
T0	*
_output_shapes
:2+
)gcn_improved_78/gat_conv_191/Repeat/Shape?
1gcn_improved_78/gat_conv_191/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 23
1gcn_improved_78/gat_conv_191/Repeat/Reshape/shape?
3gcn_improved_78/gat_conv_191/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 25
3gcn_improved_78/gat_conv_191/Repeat/Reshape/shape_1?
+gcn_improved_78/gat_conv_191/Repeat/ReshapeReshape,gcn_improved_78/gat_conv_191/Repeat/Cast:y:0<gcn_improved_78/gat_conv_191/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2-
+gcn_improved_78/gat_conv_191/Repeat/Reshape?
2gcn_improved_78/gat_conv_191/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :24
2gcn_improved_78/gat_conv_191/Repeat/ExpandDims/dim?
.gcn_improved_78/gat_conv_191/Repeat/ExpandDims
ExpandDims5gcn_improved_78/gat_conv_191/strided_slice_3:output:0;gcn_improved_78/gat_conv_191/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????20
.gcn_improved_78/gat_conv_191/Repeat/ExpandDims?
4gcn_improved_78/gat_conv_191/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :26
4gcn_improved_78/gat_conv_191/Repeat/Tile/multiples/0?
4gcn_improved_78/gat_conv_191/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :26
4gcn_improved_78/gat_conv_191/Repeat/Tile/multiples/1?
2gcn_improved_78/gat_conv_191/Repeat/Tile/multiplesPack=gcn_improved_78/gat_conv_191/Repeat/Tile/multiples/0:output:0=gcn_improved_78/gat_conv_191/Repeat/Tile/multiples/1:output:04gcn_improved_78/gat_conv_191/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:24
2gcn_improved_78/gat_conv_191/Repeat/Tile/multiples?
(gcn_improved_78/gat_conv_191/Repeat/TileTile7gcn_improved_78/gat_conv_191/Repeat/ExpandDims:output:0;gcn_improved_78/gat_conv_191/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2*
(gcn_improved_78/gat_conv_191/Repeat/Tile?
7gcn_improved_78/gat_conv_191/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7gcn_improved_78/gat_conv_191/Repeat/strided_slice/stack?
9gcn_improved_78/gat_conv_191/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9gcn_improved_78/gat_conv_191/Repeat/strided_slice/stack_1?
9gcn_improved_78/gat_conv_191/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9gcn_improved_78/gat_conv_191/Repeat/strided_slice/stack_2?
1gcn_improved_78/gat_conv_191/Repeat/strided_sliceStridedSlice2gcn_improved_78/gat_conv_191/Repeat/Shape:output:0@gcn_improved_78/gat_conv_191/Repeat/strided_slice/stack:output:0Bgcn_improved_78/gat_conv_191/Repeat/strided_slice/stack_1:output:0Bgcn_improved_78/gat_conv_191/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask23
1gcn_improved_78/gat_conv_191/Repeat/strided_slice?
9gcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9gcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stack?
;gcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;gcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stack_1?
;gcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;gcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stack_2?
3gcn_improved_78/gat_conv_191/Repeat/strided_slice_1StridedSlice2gcn_improved_78/gat_conv_191/Repeat/Shape:output:0Bgcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stack:output:0Dgcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stack_1:output:0Dgcn_improved_78/gat_conv_191/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3gcn_improved_78/gat_conv_191/Repeat/strided_slice_1?
'gcn_improved_78/gat_conv_191/Repeat/mulMul4gcn_improved_78/gat_conv_191/Repeat/Reshape:output:0<gcn_improved_78/gat_conv_191/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2)
'gcn_improved_78/gat_conv_191/Repeat/mul?
9gcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9gcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stack?
;gcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;gcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stack_1?
;gcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;gcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stack_2?
3gcn_improved_78/gat_conv_191/Repeat/strided_slice_2StridedSlice2gcn_improved_78/gat_conv_191/Repeat/Shape:output:0Bgcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stack:output:0Dgcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stack_1:output:0Dgcn_improved_78/gat_conv_191/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask25
3gcn_improved_78/gat_conv_191/Repeat/strided_slice_2?
3gcn_improved_78/gat_conv_191/Repeat/concat/values_1Pack+gcn_improved_78/gat_conv_191/Repeat/mul:z:0*
N*
T0*
_output_shapes
:25
3gcn_improved_78/gat_conv_191/Repeat/concat/values_1?
/gcn_improved_78/gat_conv_191/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/gcn_improved_78/gat_conv_191/Repeat/concat/axis?
*gcn_improved_78/gat_conv_191/Repeat/concatConcatV2:gcn_improved_78/gat_conv_191/Repeat/strided_slice:output:0<gcn_improved_78/gat_conv_191/Repeat/concat/values_1:output:0<gcn_improved_78/gat_conv_191/Repeat/strided_slice_2:output:08gcn_improved_78/gat_conv_191/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*gcn_improved_78/gat_conv_191/Repeat/concat?
-gcn_improved_78/gat_conv_191/Repeat/Reshape_1Reshape1gcn_improved_78/gat_conv_191/Repeat/Tile:output:03gcn_improved_78/gat_conv_191/Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2/
-gcn_improved_78/gat_conv_191/Repeat/Reshape_1?
/gcn_improved_78/gat_conv_191/boolean_mask/ShapeShapeargs_0_1*
T0	*
_output_shapes
:21
/gcn_improved_78/gat_conv_191/boolean_mask/Shape?
=gcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=gcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stack?
?gcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?gcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stack_1?
?gcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?gcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stack_2?
7gcn_improved_78/gat_conv_191/boolean_mask/strided_sliceStridedSlice8gcn_improved_78/gat_conv_191/boolean_mask/Shape:output:0Fgcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stack:output:0Hgcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stack_1:output:0Hgcn_improved_78/gat_conv_191/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:29
7gcn_improved_78/gat_conv_191/boolean_mask/strided_slice?
@gcn_improved_78/gat_conv_191/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2B
@gcn_improved_78/gat_conv_191/boolean_mask/Prod/reduction_indices?
.gcn_improved_78/gat_conv_191/boolean_mask/ProdProd@gcn_improved_78/gat_conv_191/boolean_mask/strided_slice:output:0Igcn_improved_78/gat_conv_191/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 20
.gcn_improved_78/gat_conv_191/boolean_mask/Prod?
1gcn_improved_78/gat_conv_191/boolean_mask/Shape_1Shapeargs_0_1*
T0	*
_output_shapes
:23
1gcn_improved_78/gat_conv_191/boolean_mask/Shape_1?
?gcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?gcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stack?
Agcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2C
Agcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stack_1?
Agcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Agcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stack_2?
9gcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1StridedSlice:gcn_improved_78/gat_conv_191/boolean_mask/Shape_1:output:0Hgcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stack:output:0Jgcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stack_1:output:0Jgcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2;
9gcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1?
1gcn_improved_78/gat_conv_191/boolean_mask/Shape_2Shapeargs_0_1*
T0	*
_output_shapes
:23
1gcn_improved_78/gat_conv_191/boolean_mask/Shape_2?
?gcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?gcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stack?
Agcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2C
Agcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stack_1?
Agcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Agcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stack_2?
9gcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2StridedSlice:gcn_improved_78/gat_conv_191/boolean_mask/Shape_2:output:0Hgcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stack:output:0Jgcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stack_1:output:0Jgcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2;
9gcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2?
9gcn_improved_78/gat_conv_191/boolean_mask/concat/values_1Pack7gcn_improved_78/gat_conv_191/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2;
9gcn_improved_78/gat_conv_191/boolean_mask/concat/values_1?
5gcn_improved_78/gat_conv_191/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5gcn_improved_78/gat_conv_191/boolean_mask/concat/axis?
0gcn_improved_78/gat_conv_191/boolean_mask/concatConcatV2Bgcn_improved_78/gat_conv_191/boolean_mask/strided_slice_1:output:0Bgcn_improved_78/gat_conv_191/boolean_mask/concat/values_1:output:0Bgcn_improved_78/gat_conv_191/boolean_mask/strided_slice_2:output:0>gcn_improved_78/gat_conv_191/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0gcn_improved_78/gat_conv_191/boolean_mask/concat?
1gcn_improved_78/gat_conv_191/boolean_mask/ReshapeReshapeargs_0_19gcn_improved_78/gat_conv_191/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????23
1gcn_improved_78/gat_conv_191/boolean_mask/Reshape?
9gcn_improved_78/gat_conv_191/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2;
9gcn_improved_78/gat_conv_191/boolean_mask/Reshape_1/shape?
3gcn_improved_78/gat_conv_191/boolean_mask/Reshape_1Reshape1gcn_improved_78/gat_conv_191/EnsureShape:output:0Bgcn_improved_78/gat_conv_191/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????25
3gcn_improved_78/gat_conv_191/boolean_mask/Reshape_1?
/gcn_improved_78/gat_conv_191/boolean_mask/WhereWhere<gcn_improved_78/gat_conv_191/boolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????21
/gcn_improved_78/gat_conv_191/boolean_mask/Where?
1gcn_improved_78/gat_conv_191/boolean_mask/SqueezeSqueeze7gcn_improved_78/gat_conv_191/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
23
1gcn_improved_78/gat_conv_191/boolean_mask/Squeeze?
7gcn_improved_78/gat_conv_191/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7gcn_improved_78/gat_conv_191/boolean_mask/GatherV2/axis?
2gcn_improved_78/gat_conv_191/boolean_mask/GatherV2GatherV2:gcn_improved_78/gat_conv_191/boolean_mask/Reshape:output:0:gcn_improved_78/gat_conv_191/boolean_mask/Squeeze:output:0@gcn_improved_78/gat_conv_191/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????24
2gcn_improved_78/gat_conv_191/boolean_mask/GatherV2?
(gcn_improved_78/gat_conv_191/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(gcn_improved_78/gat_conv_191/concat/axis?
#gcn_improved_78/gat_conv_191/concatConcatV2;gcn_improved_78/gat_conv_191/boolean_mask/GatherV2:output:06gcn_improved_78/gat_conv_191/Repeat/Reshape_1:output:01gcn_improved_78/gat_conv_191/concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2%
#gcn_improved_78/gat_conv_191/concat?
2gcn_improved_78/gat_conv_191/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_191/strided_slice_4/stack?
4gcn_improved_78/gat_conv_191/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_191/strided_slice_4/stack_1?
4gcn_improved_78/gat_conv_191/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_191/strided_slice_4/stack_2?
,gcn_improved_78/gat_conv_191/strided_slice_4StridedSlice,gcn_improved_78/gat_conv_191/concat:output:0;gcn_improved_78/gat_conv_191/strided_slice_4/stack:output:0=gcn_improved_78/gat_conv_191/strided_slice_4/stack_1:output:0=gcn_improved_78/gat_conv_191/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_191/strided_slice_4?
,gcn_improved_78/gat_conv_191/ones_like/ShapeShape5gcn_improved_78/gat_conv_191/strided_slice_4:output:0*
T0	*
_output_shapes
:2.
,gcn_improved_78/gat_conv_191/ones_like/Shape?
,gcn_improved_78/gat_conv_191/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2.
,gcn_improved_78/gat_conv_191/ones_like/Const?
&gcn_improved_78/gat_conv_191/ones_likeFill5gcn_improved_78/gat_conv_191/ones_like/Shape:output:05gcn_improved_78/gat_conv_191/ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2(
&gcn_improved_78/gat_conv_191/ones_like?
6gcn_improved_78/gat_conv_191/SparseReorder/input_shapePack3gcn_improved_78/gat_conv_191/strided_slice:output:03gcn_improved_78/gat_conv_191/strided_slice:output:0*
N*
T0	*
_output_shapes
:28
6gcn_improved_78/gat_conv_191/SparseReorder/input_shape?
*gcn_improved_78/gat_conv_191/SparseReorderSparseReorder,gcn_improved_78/gat_conv_191/concat:output:0/gcn_improved_78/gat_conv_191/ones_like:output:0?gcn_improved_78/gat_conv_191/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2,
*gcn_improved_78/gat_conv_191/SparseReorder?
2gcn_improved_78/gat_conv_191/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       24
2gcn_improved_78/gat_conv_191/strided_slice_5/stack?
4gcn_improved_78/gat_conv_191/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_191/strided_slice_5/stack_1?
4gcn_improved_78/gat_conv_191/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_191/strided_slice_5/stack_2?
,gcn_improved_78/gat_conv_191/strided_slice_5StridedSlice;gcn_improved_78/gat_conv_191/SparseReorder:output_indices:0;gcn_improved_78/gat_conv_191/strided_slice_5/stack:output:0=gcn_improved_78/gat_conv_191/strided_slice_5/stack_1:output:0=gcn_improved_78/gat_conv_191/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_191/strided_slice_5?
2gcn_improved_78/gat_conv_191/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_191/strided_slice_6/stack?
4gcn_improved_78/gat_conv_191/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4gcn_improved_78/gat_conv_191/strided_slice_6/stack_1?
4gcn_improved_78/gat_conv_191/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_191/strided_slice_6/stack_2?
,gcn_improved_78/gat_conv_191/strided_slice_6StridedSlice;gcn_improved_78/gat_conv_191/SparseReorder:output_indices:0;gcn_improved_78/gat_conv_191/strided_slice_6/stack:output:0=gcn_improved_78/gat_conv_191/strided_slice_6/stack_1:output:0=gcn_improved_78/gat_conv_191/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,gcn_improved_78/gat_conv_191/strided_slice_6?
#gcn_improved_78/gat_conv_191/MatMulMatMul-gcn_improved_78/dropout_129/Identity:output:0-gcn_improved_78/gat_conv_191/Reshape:output:0*
T0*'
_output_shapes
:?????????2%
#gcn_improved_78/gat_conv_191/MatMul?
,gcn_improved_78/gat_conv_191/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2.
,gcn_improved_78/gat_conv_191/Reshape_1/shape?
&gcn_improved_78/gat_conv_191/Reshape_1Reshape-gcn_improved_78/gat_conv_191/MatMul:product:05gcn_improved_78/gat_conv_191/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2(
&gcn_improved_78/gat_conv_191/Reshape_1?
 gcn_improved_78/gat_conv_191/mulMul/gcn_improved_78/gat_conv_191/Reshape_1:output:0*gcn_improved_78/gat_conv_191/transpose:y:0*
T0*+
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_191/mul?
2gcn_improved_78/gat_conv_191/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2gcn_improved_78/gat_conv_191/Sum/reduction_indices?
 gcn_improved_78/gat_conv_191/SumSum$gcn_improved_78/gat_conv_191/mul:z:0;gcn_improved_78/gat_conv_191/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_191/Sum?
*gcn_improved_78/gat_conv_191/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*gcn_improved_78/gat_conv_191/GatherV2/axis?
%gcn_improved_78/gat_conv_191/GatherV2GatherV2)gcn_improved_78/gat_conv_191/Sum:output:05gcn_improved_78/gat_conv_191/strided_slice_5:output:03gcn_improved_78/gat_conv_191/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2'
%gcn_improved_78/gat_conv_191/GatherV2?
"gcn_improved_78/gat_conv_191/mul_1Mul/gcn_improved_78/gat_conv_191/Reshape_1:output:0,gcn_improved_78/gat_conv_191/transpose_1:y:0*
T0*+
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_191/mul_1?
4gcn_improved_78/gat_conv_191/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4gcn_improved_78/gat_conv_191/Sum_1/reduction_indices?
"gcn_improved_78/gat_conv_191/Sum_1Sum&gcn_improved_78/gat_conv_191/mul_1:z:0=gcn_improved_78/gat_conv_191/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_191/Sum_1?
,gcn_improved_78/gat_conv_191/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,gcn_improved_78/gat_conv_191/GatherV2_1/axis?
'gcn_improved_78/gat_conv_191/GatherV2_1GatherV2+gcn_improved_78/gat_conv_191/Sum_1:output:05gcn_improved_78/gat_conv_191/strided_slice_6:output:05gcn_improved_78/gat_conv_191/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2)
'gcn_improved_78/gat_conv_191/GatherV2_1?
 gcn_improved_78/gat_conv_191/addAddV2.gcn_improved_78/gat_conv_191/GatherV2:output:00gcn_improved_78/gat_conv_191/GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_191/add?
&gcn_improved_78/gat_conv_191/LeakyRelu	LeakyRelu$gcn_improved_78/gat_conv_191/add:z:0*'
_output_shapes
:?????????2(
&gcn_improved_78/gat_conv_191/LeakyRelu?
/gcn_improved_78/gat_conv_191/UnsortedSegmentMaxUnsortedSegmentMax4gcn_improved_78/gat_conv_191/LeakyRelu:activations:05gcn_improved_78/gat_conv_191/strided_slice_5:output:03gcn_improved_78/gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????21
/gcn_improved_78/gat_conv_191/UnsortedSegmentMax?
,gcn_improved_78/gat_conv_191/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,gcn_improved_78/gat_conv_191/GatherV2_2/axis?
'gcn_improved_78/gat_conv_191/GatherV2_2GatherV28gcn_improved_78/gat_conv_191/UnsortedSegmentMax:output:05gcn_improved_78/gat_conv_191/strided_slice_5:output:05gcn_improved_78/gat_conv_191/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2)
'gcn_improved_78/gat_conv_191/GatherV2_2?
 gcn_improved_78/gat_conv_191/subSub4gcn_improved_78/gat_conv_191/LeakyRelu:activations:00gcn_improved_78/gat_conv_191/GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_191/sub?
 gcn_improved_78/gat_conv_191/ExpExp$gcn_improved_78/gat_conv_191/sub:z:0*
T0*'
_output_shapes
:?????????2"
 gcn_improved_78/gat_conv_191/Exp?
/gcn_improved_78/gat_conv_191/UnsortedSegmentSumUnsortedSegmentSum$gcn_improved_78/gat_conv_191/Exp:y:05gcn_improved_78/gat_conv_191/strided_slice_5:output:03gcn_improved_78/gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????21
/gcn_improved_78/gat_conv_191/UnsortedSegmentSum?
$gcn_improved_78/gat_conv_191/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02&
$gcn_improved_78/gat_conv_191/add_1/y?
"gcn_improved_78/gat_conv_191/add_1AddV28gcn_improved_78/gat_conv_191/UnsortedSegmentSum:output:0-gcn_improved_78/gat_conv_191/add_1/y:output:0*
T0*'
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_191/add_1?
,gcn_improved_78/gat_conv_191/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,gcn_improved_78/gat_conv_191/GatherV2_3/axis?
'gcn_improved_78/gat_conv_191/GatherV2_3GatherV2&gcn_improved_78/gat_conv_191/add_1:z:05gcn_improved_78/gat_conv_191/strided_slice_5:output:05gcn_improved_78/gat_conv_191/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2)
'gcn_improved_78/gat_conv_191/GatherV2_3?
$gcn_improved_78/gat_conv_191/truedivRealDiv$gcn_improved_78/gat_conv_191/Exp:y:00gcn_improved_78/gat_conv_191/GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2&
$gcn_improved_78/gat_conv_191/truediv?
/gcn_improved_78/gat_conv_191/dropout_1/IdentityIdentity(gcn_improved_78/gat_conv_191/truediv:z:0*
T0*'
_output_shapes
:?????????21
/gcn_improved_78/gat_conv_191/dropout_1/Identity?
2gcn_improved_78/gat_conv_191/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2gcn_improved_78/gat_conv_191/strided_slice_7/stack?
4gcn_improved_78/gat_conv_191/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4gcn_improved_78/gat_conv_191/strided_slice_7/stack_1?
4gcn_improved_78/gat_conv_191/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4gcn_improved_78/gat_conv_191/strided_slice_7/stack_2?
,gcn_improved_78/gat_conv_191/strided_slice_7StridedSlice8gcn_improved_78/gat_conv_191/dropout_1/Identity:output:0;gcn_improved_78/gat_conv_191/strided_slice_7/stack:output:0=gcn_improved_78/gat_conv_191/strided_slice_7/stack_1:output:0=gcn_improved_78/gat_conv_191/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2.
,gcn_improved_78/gat_conv_191/strided_slice_7?
,gcn_improved_78/gat_conv_191/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,gcn_improved_78/gat_conv_191/GatherV2_4/axis?
'gcn_improved_78/gat_conv_191/GatherV2_4GatherV2/gcn_improved_78/gat_conv_191/Reshape_1:output:05gcn_improved_78/gat_conv_191/strided_slice_6:output:05gcn_improved_78/gat_conv_191/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2)
'gcn_improved_78/gat_conv_191/GatherV2_4?
"gcn_improved_78/gat_conv_191/mul_2Mul5gcn_improved_78/gat_conv_191/strided_slice_7:output:00gcn_improved_78/gat_conv_191/GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_191/mul_2?
1gcn_improved_78/gat_conv_191/UnsortedSegmentSum_1UnsortedSegmentSum&gcn_improved_78/gat_conv_191/mul_2:z:05gcn_improved_78/gat_conv_191/strided_slice_5:output:03gcn_improved_78/gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????23
1gcn_improved_78/gat_conv_191/UnsortedSegmentSum_1?
3gcn_improved_78/gat_conv_191/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????25
3gcn_improved_78/gat_conv_191/Mean/reduction_indices?
!gcn_improved_78/gat_conv_191/MeanMean:gcn_improved_78/gat_conv_191/UnsortedSegmentSum_1:output:0<gcn_improved_78/gat_conv_191/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2#
!gcn_improved_78/gat_conv_191/Mean?
1gcn_improved_78/gat_conv_191/add_2/ReadVariableOpReadVariableOp:gcn_improved_78_gat_conv_191_add_2_readvariableop_resource*
_output_shapes
:*
dtype023
1gcn_improved_78/gat_conv_191/add_2/ReadVariableOp?
"gcn_improved_78/gat_conv_191/add_2AddV2*gcn_improved_78/gat_conv_191/Mean:output:09gcn_improved_78/gat_conv_191/add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"gcn_improved_78/gat_conv_191/add_2?
$gcn_improved_78/gat_conv_191/SoftmaxSoftmax&gcn_improved_78/gat_conv_191/add_2:z:0*
T0*'
_output_shapes
:?????????2&
$gcn_improved_78/gat_conv_191/Softmax?
IdentityIdentity.gcn_improved_78/gat_conv_191/Softmax:softmax:04^gcn_improved_78/gat_conv_190/Reshape/ReadVariableOp2^gcn_improved_78/gat_conv_190/add_2/ReadVariableOp6^gcn_improved_78/gat_conv_190/transpose/ReadVariableOp8^gcn_improved_78/gat_conv_190/transpose_1/ReadVariableOp4^gcn_improved_78/gat_conv_191/Reshape/ReadVariableOp2^gcn_improved_78/gat_conv_191/add_2/ReadVariableOp6^gcn_improved_78/gat_conv_191/transpose/ReadVariableOp8^gcn_improved_78/gat_conv_191/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*o
_input_shapes^
\:??????????:?????????:?????????:::::::::2j
3gcn_improved_78/gat_conv_190/Reshape/ReadVariableOp3gcn_improved_78/gat_conv_190/Reshape/ReadVariableOp2f
1gcn_improved_78/gat_conv_190/add_2/ReadVariableOp1gcn_improved_78/gat_conv_190/add_2/ReadVariableOp2n
5gcn_improved_78/gat_conv_190/transpose/ReadVariableOp5gcn_improved_78/gat_conv_190/transpose/ReadVariableOp2r
7gcn_improved_78/gat_conv_190/transpose_1/ReadVariableOp7gcn_improved_78/gat_conv_190/transpose_1/ReadVariableOp2j
3gcn_improved_78/gat_conv_191/Reshape/ReadVariableOp3gcn_improved_78/gat_conv_191/Reshape/ReadVariableOp2f
1gcn_improved_78/gat_conv_191/add_2/ReadVariableOp1gcn_improved_78/gat_conv_191/add_2/ReadVariableOp2n
5gcn_improved_78/gat_conv_191/transpose/ReadVariableOp5gcn_improved_78/gat_conv_191/transpose/ReadVariableOp2r
7gcn_improved_78/gat_conv_191/transpose_1/ReadVariableOp7gcn_improved_78/gat_conv_191/transpose_1/ReadVariableOp:P L
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
??
?
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_2760741
inputs_0

inputs	
inputs_1
inputs_2	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource!
add_2_readvariableop_resource
identity??Reshape/ReadVariableOp?add_2/ReadVariableOp?Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?transpose/ReadVariableOp?transpose_1/ReadVariableOp?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:@*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:@2	
Reshape?
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose?
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1V
ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2?
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim?
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1?
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiples?
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/Tile?
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stack?
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1?
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2?
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_slice?
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stack?
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1?
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2?
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mul?
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stack?
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1?
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2?
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis?
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concat?
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
Repeat/Reshape_1^
boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape?
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stack?
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1?
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2?
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_slice?
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indices?
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodb
boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_1?
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stack?
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1?
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2?
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1b
boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_2?
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stack?
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1?
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2?
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2?
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axis?
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat?
boolean_mask/ReshapeReshapeinputsboolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2
boolean_mask/Reshape?
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
boolean_mask/Reshape_1/shape?
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2
boolean_mask/Where?
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axis?
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
	ones_like?
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shape?
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6h
MatMulMatMulinputs_0Reshape:output:0*
T0*'
_output_shapes
:?????????2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:?????????2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:?????????2
	LeakyRelu?
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:?????????2
Exp?
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:?????????2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2	
truedivw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const?
dropout_1/dropout/MulMultruediv:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mulm
dropout_1/dropout/ShapeShapetruediv:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mul_1
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicedropout_1/dropout/Mul_1:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
mul_2?
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2
UnsortedSegmentSum_1{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Mean/reduction_indices?
MeanMeanUnsortedSegmentSum_1:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Mean?
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02
add_2/ReadVariableOpv
add_2AddV2Mean:output:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
add_2Z
SoftmaxSoftmax	add_2:z:0*
T0*'
_output_shapes
:?????????2	
Softmax?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:@*
dtype02G
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_191/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@28
6gcn_improved_78/gat_conv_191/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_191/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_191/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_191/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02E
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_191/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:26
4gcn_improved_78/gat_conv_191/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_191/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_191/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_191/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_191/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_191/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_191/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_191/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/mul?
IdentityIdentitySoftmax:softmax:0^Reshape/ReadVariableOp^add_2/ReadVariableOpQ^gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????@:?????????:?????????:::::20
Reshape/ReadVariableOpReshape/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:Q M
'
_output_shapes
:?????????@
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
??
?
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_2760923
inputs_0

inputs	
inputs_1
inputs_2	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource!
add_2_readvariableop_resource
identity??Reshape/ReadVariableOp?add_2/ReadVariableOp?Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?transpose/ReadVariableOp?transpose_1/ReadVariableOp?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:@*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:@2	
Reshape?
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose?
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1V
ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2?
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim?
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1?
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiples?
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/Tile?
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stack?
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1?
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2?
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_slice?
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stack?
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1?
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2?
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mul?
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stack?
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1?
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2?
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis?
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concat?
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
Repeat/Reshape_1^
boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape?
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stack?
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1?
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2?
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_slice?
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indices?
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodb
boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_1?
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stack?
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1?
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2?
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1b
boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_2?
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stack?
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1?
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2?
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2?
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axis?
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat?
boolean_mask/ReshapeReshapeinputsboolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2
boolean_mask/Reshape?
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
boolean_mask/Reshape_1/shape?
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2
boolean_mask/Where?
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axis?
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
	ones_like?
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shape?
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6h
MatMulMatMulinputs_0Reshape:output:0*
T0*'
_output_shapes
:?????????2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:?????????2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:?????????2
	LeakyRelu?
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:?????????2
Exp?
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:?????????2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2	
truedivs
dropout_1/IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:?????????2
dropout_1/Identity
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicedropout_1/Identity:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
mul_2?
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2
UnsortedSegmentSum_1{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Mean/reduction_indices?
MeanMeanUnsortedSegmentSum_1:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Mean?
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02
add_2/ReadVariableOpv
add_2AddV2Mean:output:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
add_2Z
SoftmaxSoftmax	add_2:z:0*
T0*'
_output_shapes
:?????????2	
Softmax?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:@*
dtype02G
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_191/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@28
6gcn_improved_78/gat_conv_191/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_191/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_191/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_191/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02E
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_191/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:26
4gcn_improved_78/gat_conv_191/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_191/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_191/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_191/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_191/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_191/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_191/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_191/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/mul?
IdentityIdentitySoftmax:softmax:0^Reshape/ReadVariableOp^add_2/ReadVariableOpQ^gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????@:?????????:?????????:::::20
Reshape/ReadVariableOpReshape/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:Q M
'
_output_shapes
:?????????@
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
??
?
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_2759619
inputs_0

inputs	
inputs_1
inputs_2	0
,gat_conv_190_reshape_readvariableop_resource2
.gat_conv_190_transpose_readvariableop_resource4
0gat_conv_190_transpose_1_readvariableop_resource.
*gat_conv_190_add_2_readvariableop_resource0
,gat_conv_191_reshape_readvariableop_resource2
.gat_conv_191_transpose_readvariableop_resource4
0gat_conv_191_transpose_1_readvariableop_resource.
*gat_conv_191_add_2_readvariableop_resource
identity??#gat_conv_190/Reshape/ReadVariableOp?!gat_conv_190/add_2/ReadVariableOp?%gat_conv_190/transpose/ReadVariableOp?'gat_conv_190/transpose_1/ReadVariableOp?#gat_conv_191/Reshape/ReadVariableOp?!gat_conv_191/add_2/ReadVariableOp?%gat_conv_191/transpose/ReadVariableOp?'gat_conv_191/transpose_1/ReadVariableOp?Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp{
dropout_128/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_128/dropout/Const?
dropout_128/dropout/MulMulinputs_0"dropout_128/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_128/dropout/Muln
dropout_128/dropout/ShapeShapeinputs_0*
T0*
_output_shapes
:2
dropout_128/dropout/Shape?
0dropout_128/dropout/random_uniform/RandomUniformRandomUniform"dropout_128/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_128/dropout/random_uniform/RandomUniform?
"dropout_128/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2$
"dropout_128/dropout/GreaterEqual/y?
 dropout_128/dropout/GreaterEqualGreaterEqual9dropout_128/dropout/random_uniform/RandomUniform:output:0+dropout_128/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_128/dropout/GreaterEqual?
dropout_128/dropout/CastCast$dropout_128/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_128/dropout/Cast?
dropout_128/dropout/Mul_1Muldropout_128/dropout/Mul:z:0dropout_128/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_128/dropout/Mul_1?
#gat_conv_190/Reshape/ReadVariableOpReadVariableOp,gat_conv_190_reshape_readvariableop_resource*#
_output_shapes
:?*
dtype02%
#gat_conv_190/Reshape/ReadVariableOp?
gat_conv_190/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
gat_conv_190/Reshape/shape?
gat_conv_190/ReshapeReshape+gat_conv_190/Reshape/ReadVariableOp:value:0#gat_conv_190/Reshape/shape:output:0*
T0*
_output_shapes
:	?@2
gat_conv_190/Reshape?
%gat_conv_190/transpose/ReadVariableOpReadVariableOp.gat_conv_190_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02'
%gat_conv_190/transpose/ReadVariableOp?
gat_conv_190/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_190/transpose/perm?
gat_conv_190/transpose	Transpose-gat_conv_190/transpose/ReadVariableOp:value:0$gat_conv_190/transpose/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_190/transpose?
'gat_conv_190/transpose_1/ReadVariableOpReadVariableOp0gat_conv_190_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02)
'gat_conv_190/transpose_1/ReadVariableOp?
gat_conv_190/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_190/transpose_1/perm?
gat_conv_190/transpose_1	Transpose/gat_conv_190/transpose_1/ReadVariableOp:value:0&gat_conv_190/transpose_1/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_190/transpose_1?
gat_conv_190/ShapeShapedropout_128/dropout/Mul_1:z:0*
T0*
_output_shapes
:*
out_type0	2
gat_conv_190/Shape?
 gat_conv_190/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 gat_conv_190/strided_slice/stack?
"gat_conv_190/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"gat_conv_190/strided_slice/stack_1?
"gat_conv_190/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gat_conv_190/strided_slice/stack_2?
gat_conv_190/strided_sliceStridedSlicegat_conv_190/Shape:output:0)gat_conv_190/strided_slice/stack:output:0+gat_conv_190/strided_slice/stack_1:output:0+gat_conv_190/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
gat_conv_190/strided_slice?
"gat_conv_190/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_1/stack?
$gat_conv_190/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_1/stack_1?
$gat_conv_190/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_1/stack_2?
gat_conv_190/strided_slice_1StridedSliceinputs+gat_conv_190/strided_slice_1/stack:output:0-gat_conv_190/strided_slice_1/stack_1:output:0-gat_conv_190/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_1?
"gat_conv_190/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"gat_conv_190/strided_slice_2/stack?
$gat_conv_190/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_2/stack_1?
$gat_conv_190/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_2/stack_2?
gat_conv_190/strided_slice_2StridedSliceinputs+gat_conv_190/strided_slice_2/stack:output:0-gat_conv_190/strided_slice_2/stack_1:output:0-gat_conv_190/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_2?
gat_conv_190/NotEqualNotEqual%gat_conv_190/strided_slice_1:output:0%gat_conv_190/strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2
gat_conv_190/NotEqual?
gat_conv_190/EnsureShapeEnsureShapegat_conv_190/NotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
gat_conv_190/EnsureShapev
gat_conv_190/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
gat_conv_190/range/startv
gat_conv_190/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_190/range/delta?
gat_conv_190/rangeRange!gat_conv_190/range/start:output:0#gat_conv_190/strided_slice:output:0!gat_conv_190/range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
gat_conv_190/range?
"gat_conv_190/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_3/stack?
$gat_conv_190/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gat_conv_190/strided_slice_3/stack_1?
$gat_conv_190/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_3/stack_2?
gat_conv_190/strided_slice_3StridedSlicegat_conv_190/range:output:0+gat_conv_190/strided_slice_3/stack:output:0-gat_conv_190/strided_slice_3/stack_1:output:0-gat_conv_190/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
gat_conv_190/strided_slice_3|
gat_conv_190/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
gat_conv_190/Repeat/repeats?
gat_conv_190/Repeat/CastCast$gat_conv_190/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
gat_conv_190/Repeat/Cast?
gat_conv_190/Repeat/ShapeShape%gat_conv_190/strided_slice_3:output:0*
T0	*
_output_shapes
:2
gat_conv_190/Repeat/Shape?
!gat_conv_190/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2#
!gat_conv_190/Repeat/Reshape/shape?
#gat_conv_190/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2%
#gat_conv_190/Repeat/Reshape/shape_1?
gat_conv_190/Repeat/ReshapeReshapegat_conv_190/Repeat/Cast:y:0,gat_conv_190/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gat_conv_190/Repeat/Reshape?
"gat_conv_190/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"gat_conv_190/Repeat/ExpandDims/dim?
gat_conv_190/Repeat/ExpandDims
ExpandDims%gat_conv_190/strided_slice_3:output:0+gat_conv_190/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2 
gat_conv_190/Repeat/ExpandDims?
$gat_conv_190/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2&
$gat_conv_190/Repeat/Tile/multiples/0?
$gat_conv_190/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$gat_conv_190/Repeat/Tile/multiples/1?
"gat_conv_190/Repeat/Tile/multiplesPack-gat_conv_190/Repeat/Tile/multiples/0:output:0-gat_conv_190/Repeat/Tile/multiples/1:output:0$gat_conv_190/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2$
"gat_conv_190/Repeat/Tile/multiples?
gat_conv_190/Repeat/TileTile'gat_conv_190/Repeat/ExpandDims:output:0+gat_conv_190/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
gat_conv_190/Repeat/Tile?
'gat_conv_190/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'gat_conv_190/Repeat/strided_slice/stack?
)gat_conv_190/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_190/Repeat/strided_slice/stack_1?
)gat_conv_190/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_190/Repeat/strided_slice/stack_2?
!gat_conv_190/Repeat/strided_sliceStridedSlice"gat_conv_190/Repeat/Shape:output:00gat_conv_190/Repeat/strided_slice/stack:output:02gat_conv_190/Repeat/strided_slice/stack_1:output:02gat_conv_190/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2#
!gat_conv_190/Repeat/strided_slice?
)gat_conv_190/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_190/Repeat/strided_slice_1/stack?
+gat_conv_190/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_190/Repeat/strided_slice_1/stack_1?
+gat_conv_190/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_190/Repeat/strided_slice_1/stack_2?
#gat_conv_190/Repeat/strided_slice_1StridedSlice"gat_conv_190/Repeat/Shape:output:02gat_conv_190/Repeat/strided_slice_1/stack:output:04gat_conv_190/Repeat/strided_slice_1/stack_1:output:04gat_conv_190/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#gat_conv_190/Repeat/strided_slice_1?
gat_conv_190/Repeat/mulMul$gat_conv_190/Repeat/Reshape:output:0,gat_conv_190/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2
gat_conv_190/Repeat/mul?
)gat_conv_190/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_190/Repeat/strided_slice_2/stack?
+gat_conv_190/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+gat_conv_190/Repeat/strided_slice_2/stack_1?
+gat_conv_190/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_190/Repeat/strided_slice_2/stack_2?
#gat_conv_190/Repeat/strided_slice_2StridedSlice"gat_conv_190/Repeat/Shape:output:02gat_conv_190/Repeat/strided_slice_2/stack:output:04gat_conv_190/Repeat/strided_slice_2/stack_1:output:04gat_conv_190/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2%
#gat_conv_190/Repeat/strided_slice_2?
#gat_conv_190/Repeat/concat/values_1Packgat_conv_190/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2%
#gat_conv_190/Repeat/concat/values_1?
gat_conv_190/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
gat_conv_190/Repeat/concat/axis?
gat_conv_190/Repeat/concatConcatV2*gat_conv_190/Repeat/strided_slice:output:0,gat_conv_190/Repeat/concat/values_1:output:0,gat_conv_190/Repeat/strided_slice_2:output:0(gat_conv_190/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_190/Repeat/concat?
gat_conv_190/Repeat/Reshape_1Reshape!gat_conv_190/Repeat/Tile:output:0#gat_conv_190/Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
gat_conv_190/Repeat/Reshape_1x
gat_conv_190/boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2!
gat_conv_190/boolean_mask/Shape?
-gat_conv_190/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-gat_conv_190/boolean_mask/strided_slice/stack?
/gat_conv_190/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_190/boolean_mask/strided_slice/stack_1?
/gat_conv_190/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_190/boolean_mask/strided_slice/stack_2?
'gat_conv_190/boolean_mask/strided_sliceStridedSlice(gat_conv_190/boolean_mask/Shape:output:06gat_conv_190/boolean_mask/strided_slice/stack:output:08gat_conv_190/boolean_mask/strided_slice/stack_1:output:08gat_conv_190/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'gat_conv_190/boolean_mask/strided_slice?
0gat_conv_190/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_190/boolean_mask/Prod/reduction_indices?
gat_conv_190/boolean_mask/ProdProd0gat_conv_190/boolean_mask/strided_slice:output:09gat_conv_190/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2 
gat_conv_190/boolean_mask/Prod|
!gat_conv_190/boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2#
!gat_conv_190/boolean_mask/Shape_1?
/gat_conv_190/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/gat_conv_190/boolean_mask/strided_slice_1/stack?
1gat_conv_190/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1gat_conv_190/boolean_mask/strided_slice_1/stack_1?
1gat_conv_190/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1gat_conv_190/boolean_mask/strided_slice_1/stack_2?
)gat_conv_190/boolean_mask/strided_slice_1StridedSlice*gat_conv_190/boolean_mask/Shape_1:output:08gat_conv_190/boolean_mask/strided_slice_1/stack:output:0:gat_conv_190/boolean_mask/strided_slice_1/stack_1:output:0:gat_conv_190/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2+
)gat_conv_190/boolean_mask/strided_slice_1|
!gat_conv_190/boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2#
!gat_conv_190/boolean_mask/Shape_2?
/gat_conv_190/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_190/boolean_mask/strided_slice_2/stack?
1gat_conv_190/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1gat_conv_190/boolean_mask/strided_slice_2/stack_1?
1gat_conv_190/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1gat_conv_190/boolean_mask/strided_slice_2/stack_2?
)gat_conv_190/boolean_mask/strided_slice_2StridedSlice*gat_conv_190/boolean_mask/Shape_2:output:08gat_conv_190/boolean_mask/strided_slice_2/stack:output:0:gat_conv_190/boolean_mask/strided_slice_2/stack_1:output:0:gat_conv_190/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2+
)gat_conv_190/boolean_mask/strided_slice_2?
)gat_conv_190/boolean_mask/concat/values_1Pack'gat_conv_190/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2+
)gat_conv_190/boolean_mask/concat/values_1?
%gat_conv_190/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%gat_conv_190/boolean_mask/concat/axis?
 gat_conv_190/boolean_mask/concatConcatV22gat_conv_190/boolean_mask/strided_slice_1:output:02gat_conv_190/boolean_mask/concat/values_1:output:02gat_conv_190/boolean_mask/strided_slice_2:output:0.gat_conv_190/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 gat_conv_190/boolean_mask/concat?
!gat_conv_190/boolean_mask/ReshapeReshapeinputs)gat_conv_190/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2#
!gat_conv_190/boolean_mask/Reshape?
)gat_conv_190/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)gat_conv_190/boolean_mask/Reshape_1/shape?
#gat_conv_190/boolean_mask/Reshape_1Reshape!gat_conv_190/EnsureShape:output:02gat_conv_190/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2%
#gat_conv_190/boolean_mask/Reshape_1?
gat_conv_190/boolean_mask/WhereWhere,gat_conv_190/boolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2!
gat_conv_190/boolean_mask/Where?
!gat_conv_190/boolean_mask/SqueezeSqueeze'gat_conv_190/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2#
!gat_conv_190/boolean_mask/Squeeze?
'gat_conv_190/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'gat_conv_190/boolean_mask/GatherV2/axis?
"gat_conv_190/boolean_mask/GatherV2GatherV2*gat_conv_190/boolean_mask/Reshape:output:0*gat_conv_190/boolean_mask/Squeeze:output:00gat_conv_190/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2$
"gat_conv_190/boolean_mask/GatherV2v
gat_conv_190/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/concat/axis?
gat_conv_190/concatConcatV2+gat_conv_190/boolean_mask/GatherV2:output:0&gat_conv_190/Repeat/Reshape_1:output:0!gat_conv_190/concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
gat_conv_190/concat?
"gat_conv_190/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_4/stack?
$gat_conv_190/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_4/stack_1?
$gat_conv_190/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_4/stack_2?
gat_conv_190/strided_slice_4StridedSlicegat_conv_190/concat:output:0+gat_conv_190/strided_slice_4/stack:output:0-gat_conv_190/strided_slice_4/stack_1:output:0-gat_conv_190/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_4?
gat_conv_190/ones_like/ShapeShape%gat_conv_190/strided_slice_4:output:0*
T0	*
_output_shapes
:2
gat_conv_190/ones_like/Shape~
gat_conv_190/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_190/ones_like/Const?
gat_conv_190/ones_likeFill%gat_conv_190/ones_like/Shape:output:0%gat_conv_190/ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
gat_conv_190/ones_like?
&gat_conv_190/SparseReorder/input_shapePack#gat_conv_190/strided_slice:output:0#gat_conv_190/strided_slice:output:0*
N*
T0	*
_output_shapes
:2(
&gat_conv_190/SparseReorder/input_shape?
gat_conv_190/SparseReorderSparseReordergat_conv_190/concat:output:0gat_conv_190/ones_like:output:0/gat_conv_190/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
gat_conv_190/SparseReorder?
"gat_conv_190/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"gat_conv_190/strided_slice_5/stack?
$gat_conv_190/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_5/stack_1?
$gat_conv_190/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_5/stack_2?
gat_conv_190/strided_slice_5StridedSlice+gat_conv_190/SparseReorder:output_indices:0+gat_conv_190/strided_slice_5/stack:output:0-gat_conv_190/strided_slice_5/stack_1:output:0-gat_conv_190/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_5?
"gat_conv_190/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_6/stack?
$gat_conv_190/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_190/strided_slice_6/stack_1?
$gat_conv_190/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_6/stack_2?
gat_conv_190/strided_slice_6StridedSlice+gat_conv_190/SparseReorder:output_indices:0+gat_conv_190/strided_slice_6/stack:output:0-gat_conv_190/strided_slice_6/stack_1:output:0-gat_conv_190/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_190/strided_slice_6?
gat_conv_190/MatMulMatMuldropout_128/dropout/Mul_1:z:0gat_conv_190/Reshape:output:0*
T0*'
_output_shapes
:?????????@2
gat_conv_190/MatMul?
gat_conv_190/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
gat_conv_190/Reshape_1/shape?
gat_conv_190/Reshape_1Reshapegat_conv_190/MatMul:product:0%gat_conv_190/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
gat_conv_190/Reshape_1?
gat_conv_190/mulMulgat_conv_190/Reshape_1:output:0gat_conv_190/transpose:y:0*
T0*+
_output_shapes
:?????????2
gat_conv_190/mul?
"gat_conv_190/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gat_conv_190/Sum/reduction_indices?
gat_conv_190/SumSumgat_conv_190/mul:z:0+gat_conv_190/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/Sumz
gat_conv_190/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2/axis?
gat_conv_190/GatherV2GatherV2gat_conv_190/Sum:output:0%gat_conv_190/strided_slice_5:output:0#gat_conv_190/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_190/GatherV2?
gat_conv_190/mul_1Mulgat_conv_190/Reshape_1:output:0gat_conv_190/transpose_1:y:0*
T0*+
_output_shapes
:?????????2
gat_conv_190/mul_1?
$gat_conv_190/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gat_conv_190/Sum_1/reduction_indices?
gat_conv_190/Sum_1Sumgat_conv_190/mul_1:z:0-gat_conv_190/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/Sum_1~
gat_conv_190/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2_1/axis?
gat_conv_190/GatherV2_1GatherV2gat_conv_190/Sum_1:output:0%gat_conv_190/strided_slice_6:output:0%gat_conv_190/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_190/GatherV2_1?
gat_conv_190/addAddV2gat_conv_190/GatherV2:output:0 gat_conv_190/GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/add|
gat_conv_190/LeakyRelu	LeakyRelugat_conv_190/add:z:0*'
_output_shapes
:?????????2
gat_conv_190/LeakyRelu?
gat_conv_190/UnsortedSegmentMaxUnsortedSegmentMax$gat_conv_190/LeakyRelu:activations:0%gat_conv_190/strided_slice_5:output:0#gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2!
gat_conv_190/UnsortedSegmentMax~
gat_conv_190/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2_2/axis?
gat_conv_190/GatherV2_2GatherV2(gat_conv_190/UnsortedSegmentMax:output:0%gat_conv_190/strided_slice_5:output:0%gat_conv_190/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_190/GatherV2_2?
gat_conv_190/subSub$gat_conv_190/LeakyRelu:activations:0 gat_conv_190/GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/subs
gat_conv_190/ExpExpgat_conv_190/sub:z:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/Exp?
gat_conv_190/UnsortedSegmentSumUnsortedSegmentSumgat_conv_190/Exp:y:0%gat_conv_190/strided_slice_5:output:0#gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2!
gat_conv_190/UnsortedSegmentSumq
gat_conv_190/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02
gat_conv_190/add_1/y?
gat_conv_190/add_1AddV2(gat_conv_190/UnsortedSegmentSum:output:0gat_conv_190/add_1/y:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/add_1~
gat_conv_190/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2_3/axis?
gat_conv_190/GatherV2_3GatherV2gat_conv_190/add_1:z:0%gat_conv_190/strided_slice_5:output:0%gat_conv_190/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_190/GatherV2_3?
gat_conv_190/truedivRealDivgat_conv_190/Exp:y:0 gat_conv_190/GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_190/truediv?
"gat_conv_190/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"gat_conv_190/dropout/dropout/Const?
 gat_conv_190/dropout/dropout/MulMulgat_conv_190/truediv:z:0+gat_conv_190/dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2"
 gat_conv_190/dropout/dropout/Mul?
"gat_conv_190/dropout/dropout/ShapeShapegat_conv_190/truediv:z:0*
T0*
_output_shapes
:2$
"gat_conv_190/dropout/dropout/Shape?
9gat_conv_190/dropout/dropout/random_uniform/RandomUniformRandomUniform+gat_conv_190/dropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02;
9gat_conv_190/dropout/dropout/random_uniform/RandomUniform?
+gat_conv_190/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2-
+gat_conv_190/dropout/dropout/GreaterEqual/y?
)gat_conv_190/dropout/dropout/GreaterEqualGreaterEqualBgat_conv_190/dropout/dropout/random_uniform/RandomUniform:output:04gat_conv_190/dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2+
)gat_conv_190/dropout/dropout/GreaterEqual?
!gat_conv_190/dropout/dropout/CastCast-gat_conv_190/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2#
!gat_conv_190/dropout/dropout/Cast?
"gat_conv_190/dropout/dropout/Mul_1Mul$gat_conv_190/dropout/dropout/Mul:z:0%gat_conv_190/dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2$
"gat_conv_190/dropout/dropout/Mul_1?
"gat_conv_190/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_190/strided_slice_7/stack?
$gat_conv_190/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gat_conv_190/strided_slice_7/stack_1?
$gat_conv_190/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_190/strided_slice_7/stack_2?
gat_conv_190/strided_slice_7StridedSlice&gat_conv_190/dropout/dropout/Mul_1:z:0+gat_conv_190/strided_slice_7/stack:output:0-gat_conv_190/strided_slice_7/stack_1:output:0-gat_conv_190/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
gat_conv_190/strided_slice_7~
gat_conv_190/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/GatherV2_4/axis?
gat_conv_190/GatherV2_4GatherV2gat_conv_190/Reshape_1:output:0%gat_conv_190/strided_slice_6:output:0%gat_conv_190/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2
gat_conv_190/GatherV2_4?
gat_conv_190/mul_2Mul%gat_conv_190/strided_slice_7:output:0 gat_conv_190/GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
gat_conv_190/mul_2?
!gat_conv_190/UnsortedSegmentSum_1UnsortedSegmentSumgat_conv_190/mul_2:z:0%gat_conv_190/strided_slice_5:output:0#gat_conv_190/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2#
!gat_conv_190/UnsortedSegmentSum_1?
gat_conv_190/Shape_1Shape*gat_conv_190/UnsortedSegmentSum_1:output:0*
T0*
_output_shapes
:2
gat_conv_190/Shape_1?
"gat_conv_190/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gat_conv_190/strided_slice_8/stack?
$gat_conv_190/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$gat_conv_190/strided_slice_8/stack_1?
$gat_conv_190/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gat_conv_190/strided_slice_8/stack_2?
gat_conv_190/strided_slice_8StridedSlicegat_conv_190/Shape_1:output:0+gat_conv_190/strided_slice_8/stack:output:0-gat_conv_190/strided_slice_8/stack_1:output:0-gat_conv_190/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
gat_conv_190/strided_slice_8?
gat_conv_190/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:@2 
gat_conv_190/concat_1/values_1z
gat_conv_190/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_190/concat_1/axis?
gat_conv_190/concat_1ConcatV2%gat_conv_190/strided_slice_8:output:0'gat_conv_190/concat_1/values_1:output:0#gat_conv_190/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_190/concat_1?
gat_conv_190/Reshape_2Reshape*gat_conv_190/UnsortedSegmentSum_1:output:0gat_conv_190/concat_1:output:0*
T0*'
_output_shapes
:?????????@2
gat_conv_190/Reshape_2?
!gat_conv_190/add_2/ReadVariableOpReadVariableOp*gat_conv_190_add_2_readvariableop_resource*
_output_shapes
:@*
dtype02#
!gat_conv_190/add_2/ReadVariableOp?
gat_conv_190/add_2AddV2gat_conv_190/Reshape_2:output:0)gat_conv_190/add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
gat_conv_190/add_2u
gat_conv_190/EluElugat_conv_190/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gat_conv_190/Elu{
dropout_129/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_129/dropout/Const?
dropout_129/dropout/MulMulgat_conv_190/Elu:activations:0"dropout_129/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_129/dropout/Mul?
dropout_129/dropout/ShapeShapegat_conv_190/Elu:activations:0*
T0*
_output_shapes
:2
dropout_129/dropout/Shape?
0dropout_129/dropout/random_uniform/RandomUniformRandomUniform"dropout_129/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype022
0dropout_129/dropout/random_uniform/RandomUniform?
"dropout_129/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2$
"dropout_129/dropout/GreaterEqual/y?
 dropout_129/dropout/GreaterEqualGreaterEqual9dropout_129/dropout/random_uniform/RandomUniform:output:0+dropout_129/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 dropout_129/dropout/GreaterEqual?
dropout_129/dropout/CastCast$dropout_129/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_129/dropout/Cast?
dropout_129/dropout/Mul_1Muldropout_129/dropout/Mul:z:0dropout_129/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_129/dropout/Mul_1?
#gat_conv_191/Reshape/ReadVariableOpReadVariableOp,gat_conv_191_reshape_readvariableop_resource*"
_output_shapes
:@*
dtype02%
#gat_conv_191/Reshape/ReadVariableOp?
gat_conv_191/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
gat_conv_191/Reshape/shape?
gat_conv_191/ReshapeReshape+gat_conv_191/Reshape/ReadVariableOp:value:0#gat_conv_191/Reshape/shape:output:0*
T0*
_output_shapes

:@2
gat_conv_191/Reshape?
%gat_conv_191/transpose/ReadVariableOpReadVariableOp.gat_conv_191_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02'
%gat_conv_191/transpose/ReadVariableOp?
gat_conv_191/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_191/transpose/perm?
gat_conv_191/transpose	Transpose-gat_conv_191/transpose/ReadVariableOp:value:0$gat_conv_191/transpose/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_191/transpose?
'gat_conv_191/transpose_1/ReadVariableOpReadVariableOp0gat_conv_191_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02)
'gat_conv_191/transpose_1/ReadVariableOp?
gat_conv_191/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_191/transpose_1/perm?
gat_conv_191/transpose_1	Transpose/gat_conv_191/transpose_1/ReadVariableOp:value:0&gat_conv_191/transpose_1/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_191/transpose_1?
gat_conv_191/ShapeShapedropout_129/dropout/Mul_1:z:0*
T0*
_output_shapes
:*
out_type0	2
gat_conv_191/Shape?
 gat_conv_191/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 gat_conv_191/strided_slice/stack?
"gat_conv_191/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"gat_conv_191/strided_slice/stack_1?
"gat_conv_191/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gat_conv_191/strided_slice/stack_2?
gat_conv_191/strided_sliceStridedSlicegat_conv_191/Shape:output:0)gat_conv_191/strided_slice/stack:output:0+gat_conv_191/strided_slice/stack_1:output:0+gat_conv_191/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
gat_conv_191/strided_slice?
"gat_conv_191/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_1/stack?
$gat_conv_191/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_1/stack_1?
$gat_conv_191/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_1/stack_2?
gat_conv_191/strided_slice_1StridedSliceinputs+gat_conv_191/strided_slice_1/stack:output:0-gat_conv_191/strided_slice_1/stack_1:output:0-gat_conv_191/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_1?
"gat_conv_191/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"gat_conv_191/strided_slice_2/stack?
$gat_conv_191/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_2/stack_1?
$gat_conv_191/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_2/stack_2?
gat_conv_191/strided_slice_2StridedSliceinputs+gat_conv_191/strided_slice_2/stack:output:0-gat_conv_191/strided_slice_2/stack_1:output:0-gat_conv_191/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_2?
gat_conv_191/NotEqualNotEqual%gat_conv_191/strided_slice_1:output:0%gat_conv_191/strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2
gat_conv_191/NotEqual?
gat_conv_191/EnsureShapeEnsureShapegat_conv_191/NotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
gat_conv_191/EnsureShapev
gat_conv_191/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
gat_conv_191/range/startv
gat_conv_191/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_191/range/delta?
gat_conv_191/rangeRange!gat_conv_191/range/start:output:0#gat_conv_191/strided_slice:output:0!gat_conv_191/range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
gat_conv_191/range?
"gat_conv_191/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_3/stack?
$gat_conv_191/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gat_conv_191/strided_slice_3/stack_1?
$gat_conv_191/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_3/stack_2?
gat_conv_191/strided_slice_3StridedSlicegat_conv_191/range:output:0+gat_conv_191/strided_slice_3/stack:output:0-gat_conv_191/strided_slice_3/stack_1:output:0-gat_conv_191/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
gat_conv_191/strided_slice_3|
gat_conv_191/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
gat_conv_191/Repeat/repeats?
gat_conv_191/Repeat/CastCast$gat_conv_191/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
gat_conv_191/Repeat/Cast?
gat_conv_191/Repeat/ShapeShape%gat_conv_191/strided_slice_3:output:0*
T0	*
_output_shapes
:2
gat_conv_191/Repeat/Shape?
!gat_conv_191/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2#
!gat_conv_191/Repeat/Reshape/shape?
#gat_conv_191/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2%
#gat_conv_191/Repeat/Reshape/shape_1?
gat_conv_191/Repeat/ReshapeReshapegat_conv_191/Repeat/Cast:y:0,gat_conv_191/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gat_conv_191/Repeat/Reshape?
"gat_conv_191/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"gat_conv_191/Repeat/ExpandDims/dim?
gat_conv_191/Repeat/ExpandDims
ExpandDims%gat_conv_191/strided_slice_3:output:0+gat_conv_191/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2 
gat_conv_191/Repeat/ExpandDims?
$gat_conv_191/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2&
$gat_conv_191/Repeat/Tile/multiples/0?
$gat_conv_191/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$gat_conv_191/Repeat/Tile/multiples/1?
"gat_conv_191/Repeat/Tile/multiplesPack-gat_conv_191/Repeat/Tile/multiples/0:output:0-gat_conv_191/Repeat/Tile/multiples/1:output:0$gat_conv_191/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2$
"gat_conv_191/Repeat/Tile/multiples?
gat_conv_191/Repeat/TileTile'gat_conv_191/Repeat/ExpandDims:output:0+gat_conv_191/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
gat_conv_191/Repeat/Tile?
'gat_conv_191/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'gat_conv_191/Repeat/strided_slice/stack?
)gat_conv_191/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_191/Repeat/strided_slice/stack_1?
)gat_conv_191/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_191/Repeat/strided_slice/stack_2?
!gat_conv_191/Repeat/strided_sliceStridedSlice"gat_conv_191/Repeat/Shape:output:00gat_conv_191/Repeat/strided_slice/stack:output:02gat_conv_191/Repeat/strided_slice/stack_1:output:02gat_conv_191/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2#
!gat_conv_191/Repeat/strided_slice?
)gat_conv_191/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_191/Repeat/strided_slice_1/stack?
+gat_conv_191/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_191/Repeat/strided_slice_1/stack_1?
+gat_conv_191/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_191/Repeat/strided_slice_1/stack_2?
#gat_conv_191/Repeat/strided_slice_1StridedSlice"gat_conv_191/Repeat/Shape:output:02gat_conv_191/Repeat/strided_slice_1/stack:output:04gat_conv_191/Repeat/strided_slice_1/stack_1:output:04gat_conv_191/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#gat_conv_191/Repeat/strided_slice_1?
gat_conv_191/Repeat/mulMul$gat_conv_191/Repeat/Reshape:output:0,gat_conv_191/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2
gat_conv_191/Repeat/mul?
)gat_conv_191/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)gat_conv_191/Repeat/strided_slice_2/stack?
+gat_conv_191/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+gat_conv_191/Repeat/strided_slice_2/stack_1?
+gat_conv_191/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gat_conv_191/Repeat/strided_slice_2/stack_2?
#gat_conv_191/Repeat/strided_slice_2StridedSlice"gat_conv_191/Repeat/Shape:output:02gat_conv_191/Repeat/strided_slice_2/stack:output:04gat_conv_191/Repeat/strided_slice_2/stack_1:output:04gat_conv_191/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2%
#gat_conv_191/Repeat/strided_slice_2?
#gat_conv_191/Repeat/concat/values_1Packgat_conv_191/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2%
#gat_conv_191/Repeat/concat/values_1?
gat_conv_191/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
gat_conv_191/Repeat/concat/axis?
gat_conv_191/Repeat/concatConcatV2*gat_conv_191/Repeat/strided_slice:output:0,gat_conv_191/Repeat/concat/values_1:output:0,gat_conv_191/Repeat/strided_slice_2:output:0(gat_conv_191/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_191/Repeat/concat?
gat_conv_191/Repeat/Reshape_1Reshape!gat_conv_191/Repeat/Tile:output:0#gat_conv_191/Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
gat_conv_191/Repeat/Reshape_1x
gat_conv_191/boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2!
gat_conv_191/boolean_mask/Shape?
-gat_conv_191/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-gat_conv_191/boolean_mask/strided_slice/stack?
/gat_conv_191/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_191/boolean_mask/strided_slice/stack_1?
/gat_conv_191/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_191/boolean_mask/strided_slice/stack_2?
'gat_conv_191/boolean_mask/strided_sliceStridedSlice(gat_conv_191/boolean_mask/Shape:output:06gat_conv_191/boolean_mask/strided_slice/stack:output:08gat_conv_191/boolean_mask/strided_slice/stack_1:output:08gat_conv_191/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'gat_conv_191/boolean_mask/strided_slice?
0gat_conv_191/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_191/boolean_mask/Prod/reduction_indices?
gat_conv_191/boolean_mask/ProdProd0gat_conv_191/boolean_mask/strided_slice:output:09gat_conv_191/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2 
gat_conv_191/boolean_mask/Prod|
!gat_conv_191/boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2#
!gat_conv_191/boolean_mask/Shape_1?
/gat_conv_191/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/gat_conv_191/boolean_mask/strided_slice_1/stack?
1gat_conv_191/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1gat_conv_191/boolean_mask/strided_slice_1/stack_1?
1gat_conv_191/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1gat_conv_191/boolean_mask/strided_slice_1/stack_2?
)gat_conv_191/boolean_mask/strided_slice_1StridedSlice*gat_conv_191/boolean_mask/Shape_1:output:08gat_conv_191/boolean_mask/strided_slice_1/stack:output:0:gat_conv_191/boolean_mask/strided_slice_1/stack_1:output:0:gat_conv_191/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2+
)gat_conv_191/boolean_mask/strided_slice_1|
!gat_conv_191/boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2#
!gat_conv_191/boolean_mask/Shape_2?
/gat_conv_191/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/gat_conv_191/boolean_mask/strided_slice_2/stack?
1gat_conv_191/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1gat_conv_191/boolean_mask/strided_slice_2/stack_1?
1gat_conv_191/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1gat_conv_191/boolean_mask/strided_slice_2/stack_2?
)gat_conv_191/boolean_mask/strided_slice_2StridedSlice*gat_conv_191/boolean_mask/Shape_2:output:08gat_conv_191/boolean_mask/strided_slice_2/stack:output:0:gat_conv_191/boolean_mask/strided_slice_2/stack_1:output:0:gat_conv_191/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2+
)gat_conv_191/boolean_mask/strided_slice_2?
)gat_conv_191/boolean_mask/concat/values_1Pack'gat_conv_191/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2+
)gat_conv_191/boolean_mask/concat/values_1?
%gat_conv_191/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%gat_conv_191/boolean_mask/concat/axis?
 gat_conv_191/boolean_mask/concatConcatV22gat_conv_191/boolean_mask/strided_slice_1:output:02gat_conv_191/boolean_mask/concat/values_1:output:02gat_conv_191/boolean_mask/strided_slice_2:output:0.gat_conv_191/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 gat_conv_191/boolean_mask/concat?
!gat_conv_191/boolean_mask/ReshapeReshapeinputs)gat_conv_191/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2#
!gat_conv_191/boolean_mask/Reshape?
)gat_conv_191/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)gat_conv_191/boolean_mask/Reshape_1/shape?
#gat_conv_191/boolean_mask/Reshape_1Reshape!gat_conv_191/EnsureShape:output:02gat_conv_191/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2%
#gat_conv_191/boolean_mask/Reshape_1?
gat_conv_191/boolean_mask/WhereWhere,gat_conv_191/boolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2!
gat_conv_191/boolean_mask/Where?
!gat_conv_191/boolean_mask/SqueezeSqueeze'gat_conv_191/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2#
!gat_conv_191/boolean_mask/Squeeze?
'gat_conv_191/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'gat_conv_191/boolean_mask/GatherV2/axis?
"gat_conv_191/boolean_mask/GatherV2GatherV2*gat_conv_191/boolean_mask/Reshape:output:0*gat_conv_191/boolean_mask/Squeeze:output:00gat_conv_191/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2$
"gat_conv_191/boolean_mask/GatherV2v
gat_conv_191/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/concat/axis?
gat_conv_191/concatConcatV2+gat_conv_191/boolean_mask/GatherV2:output:0&gat_conv_191/Repeat/Reshape_1:output:0!gat_conv_191/concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
gat_conv_191/concat?
"gat_conv_191/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_4/stack?
$gat_conv_191/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_4/stack_1?
$gat_conv_191/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_4/stack_2?
gat_conv_191/strided_slice_4StridedSlicegat_conv_191/concat:output:0+gat_conv_191/strided_slice_4/stack:output:0-gat_conv_191/strided_slice_4/stack_1:output:0-gat_conv_191/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_4?
gat_conv_191/ones_like/ShapeShape%gat_conv_191/strided_slice_4:output:0*
T0	*
_output_shapes
:2
gat_conv_191/ones_like/Shape~
gat_conv_191/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_191/ones_like/Const?
gat_conv_191/ones_likeFill%gat_conv_191/ones_like/Shape:output:0%gat_conv_191/ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
gat_conv_191/ones_like?
&gat_conv_191/SparseReorder/input_shapePack#gat_conv_191/strided_slice:output:0#gat_conv_191/strided_slice:output:0*
N*
T0	*
_output_shapes
:2(
&gat_conv_191/SparseReorder/input_shape?
gat_conv_191/SparseReorderSparseReordergat_conv_191/concat:output:0gat_conv_191/ones_like:output:0/gat_conv_191/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
gat_conv_191/SparseReorder?
"gat_conv_191/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"gat_conv_191/strided_slice_5/stack?
$gat_conv_191/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_5/stack_1?
$gat_conv_191/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_5/stack_2?
gat_conv_191/strided_slice_5StridedSlice+gat_conv_191/SparseReorder:output_indices:0+gat_conv_191/strided_slice_5/stack:output:0-gat_conv_191/strided_slice_5/stack_1:output:0-gat_conv_191/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_5?
"gat_conv_191/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_6/stack?
$gat_conv_191/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$gat_conv_191/strided_slice_6/stack_1?
$gat_conv_191/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_6/stack_2?
gat_conv_191/strided_slice_6StridedSlice+gat_conv_191/SparseReorder:output_indices:0+gat_conv_191/strided_slice_6/stack:output:0-gat_conv_191/strided_slice_6/stack_1:output:0-gat_conv_191/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_191/strided_slice_6?
gat_conv_191/MatMulMatMuldropout_129/dropout/Mul_1:z:0gat_conv_191/Reshape:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/MatMul?
gat_conv_191/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
gat_conv_191/Reshape_1/shape?
gat_conv_191/Reshape_1Reshapegat_conv_191/MatMul:product:0%gat_conv_191/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
gat_conv_191/Reshape_1?
gat_conv_191/mulMulgat_conv_191/Reshape_1:output:0gat_conv_191/transpose:y:0*
T0*+
_output_shapes
:?????????2
gat_conv_191/mul?
"gat_conv_191/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gat_conv_191/Sum/reduction_indices?
gat_conv_191/SumSumgat_conv_191/mul:z:0+gat_conv_191/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Sumz
gat_conv_191/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2/axis?
gat_conv_191/GatherV2GatherV2gat_conv_191/Sum:output:0%gat_conv_191/strided_slice_5:output:0#gat_conv_191/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_191/GatherV2?
gat_conv_191/mul_1Mulgat_conv_191/Reshape_1:output:0gat_conv_191/transpose_1:y:0*
T0*+
_output_shapes
:?????????2
gat_conv_191/mul_1?
$gat_conv_191/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gat_conv_191/Sum_1/reduction_indices?
gat_conv_191/Sum_1Sumgat_conv_191/mul_1:z:0-gat_conv_191/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Sum_1~
gat_conv_191/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2_1/axis?
gat_conv_191/GatherV2_1GatherV2gat_conv_191/Sum_1:output:0%gat_conv_191/strided_slice_6:output:0%gat_conv_191/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_191/GatherV2_1?
gat_conv_191/addAddV2gat_conv_191/GatherV2:output:0 gat_conv_191/GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/add|
gat_conv_191/LeakyRelu	LeakyRelugat_conv_191/add:z:0*'
_output_shapes
:?????????2
gat_conv_191/LeakyRelu?
gat_conv_191/UnsortedSegmentMaxUnsortedSegmentMax$gat_conv_191/LeakyRelu:activations:0%gat_conv_191/strided_slice_5:output:0#gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2!
gat_conv_191/UnsortedSegmentMax~
gat_conv_191/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2_2/axis?
gat_conv_191/GatherV2_2GatherV2(gat_conv_191/UnsortedSegmentMax:output:0%gat_conv_191/strided_slice_5:output:0%gat_conv_191/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_191/GatherV2_2?
gat_conv_191/subSub$gat_conv_191/LeakyRelu:activations:0 gat_conv_191/GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/subs
gat_conv_191/ExpExpgat_conv_191/sub:z:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Exp?
gat_conv_191/UnsortedSegmentSumUnsortedSegmentSumgat_conv_191/Exp:y:0%gat_conv_191/strided_slice_5:output:0#gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2!
gat_conv_191/UnsortedSegmentSumq
gat_conv_191/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02
gat_conv_191/add_1/y?
gat_conv_191/add_1AddV2(gat_conv_191/UnsortedSegmentSum:output:0gat_conv_191/add_1/y:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/add_1~
gat_conv_191/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2_3/axis?
gat_conv_191/GatherV2_3GatherV2gat_conv_191/add_1:z:0%gat_conv_191/strided_slice_5:output:0%gat_conv_191/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
gat_conv_191/GatherV2_3?
gat_conv_191/truedivRealDivgat_conv_191/Exp:y:0 gat_conv_191/GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/truediv?
$gat_conv_191/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$gat_conv_191/dropout_1/dropout/Const?
"gat_conv_191/dropout_1/dropout/MulMulgat_conv_191/truediv:z:0-gat_conv_191/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2$
"gat_conv_191/dropout_1/dropout/Mul?
$gat_conv_191/dropout_1/dropout/ShapeShapegat_conv_191/truediv:z:0*
T0*
_output_shapes
:2&
$gat_conv_191/dropout_1/dropout/Shape?
;gat_conv_191/dropout_1/dropout/random_uniform/RandomUniformRandomUniform-gat_conv_191/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02=
;gat_conv_191/dropout_1/dropout/random_uniform/RandomUniform?
-gat_conv_191/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2/
-gat_conv_191/dropout_1/dropout/GreaterEqual/y?
+gat_conv_191/dropout_1/dropout/GreaterEqualGreaterEqualDgat_conv_191/dropout_1/dropout/random_uniform/RandomUniform:output:06gat_conv_191/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2-
+gat_conv_191/dropout_1/dropout/GreaterEqual?
#gat_conv_191/dropout_1/dropout/CastCast/gat_conv_191/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2%
#gat_conv_191/dropout_1/dropout/Cast?
$gat_conv_191/dropout_1/dropout/Mul_1Mul&gat_conv_191/dropout_1/dropout/Mul:z:0'gat_conv_191/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2&
$gat_conv_191/dropout_1/dropout/Mul_1?
"gat_conv_191/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gat_conv_191/strided_slice_7/stack?
$gat_conv_191/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gat_conv_191/strided_slice_7/stack_1?
$gat_conv_191/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gat_conv_191/strided_slice_7/stack_2?
gat_conv_191/strided_slice_7StridedSlice(gat_conv_191/dropout_1/dropout/Mul_1:z:0+gat_conv_191/strided_slice_7/stack:output:0-gat_conv_191/strided_slice_7/stack_1:output:0-gat_conv_191/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
gat_conv_191/strided_slice_7~
gat_conv_191/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_191/GatherV2_4/axis?
gat_conv_191/GatherV2_4GatherV2gat_conv_191/Reshape_1:output:0%gat_conv_191/strided_slice_6:output:0%gat_conv_191/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2
gat_conv_191/GatherV2_4?
gat_conv_191/mul_2Mul%gat_conv_191/strided_slice_7:output:0 gat_conv_191/GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
gat_conv_191/mul_2?
!gat_conv_191/UnsortedSegmentSum_1UnsortedSegmentSumgat_conv_191/mul_2:z:0%gat_conv_191/strided_slice_5:output:0#gat_conv_191/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2#
!gat_conv_191/UnsortedSegmentSum_1?
#gat_conv_191/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#gat_conv_191/Mean/reduction_indices?
gat_conv_191/MeanMean*gat_conv_191/UnsortedSegmentSum_1:output:0,gat_conv_191/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Mean?
!gat_conv_191/add_2/ReadVariableOpReadVariableOp*gat_conv_191_add_2_readvariableop_resource*
_output_shapes
:*
dtype02#
!gat_conv_191/add_2/ReadVariableOp?
gat_conv_191/add_2AddV2gat_conv_191/Mean:output:0)gat_conv_191/add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/add_2?
gat_conv_191/SoftmaxSoftmaxgat_conv_191/add_2:z:0*
T0*'
_output_shapes
:?????????2
gat_conv_191/Softmax?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,gat_conv_190_reshape_readvariableop_resource*#
_output_shapes
:?*
dtype02G
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_190/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:?28
6gcn_improved_78/gat_conv_190/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_190/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_190/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_190/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp.gat_conv_190_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp0gat_conv_190_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpReadVariableOp*gat_conv_190_add_2_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_190/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@26
4gcn_improved_78/gat_conv_190/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_190/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_190/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_190/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_190/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_190/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_190/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_190/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/mul?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,gat_conv_191_reshape_readvariableop_resource*"
_output_shapes
:@*
dtype02G
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_191/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@28
6gcn_improved_78/gat_conv_191/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_191/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_191/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_191/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_191/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_191/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_191/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp.gat_conv_191_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp0gat_conv_191_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpReadVariableOp*gat_conv_191_add_2_readvariableop_resource*
_output_shapes
:*
dtype02E
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_191/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:26
4gcn_improved_78/gat_conv_191/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_191/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_191/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_191/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_191/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_191/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_191/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_191/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_191/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_191/bias/Regularizer/mul?
IdentityIdentitygat_conv_191/Softmax:softmax:0$^gat_conv_190/Reshape/ReadVariableOp"^gat_conv_190/add_2/ReadVariableOp&^gat_conv_190/transpose/ReadVariableOp(^gat_conv_190/transpose_1/ReadVariableOp$^gat_conv_191/Reshape/ReadVariableOp"^gat_conv_191/add_2/ReadVariableOp&^gat_conv_191/transpose/ReadVariableOp(^gat_conv_191/transpose_1/ReadVariableOpQ^gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpQ^gcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*o
_input_shapes^
\:??????????:?????????:?????????:::::::::2J
#gat_conv_190/Reshape/ReadVariableOp#gat_conv_190/Reshape/ReadVariableOp2F
!gat_conv_190/add_2/ReadVariableOp!gat_conv_190/add_2/ReadVariableOp2N
%gat_conv_190/transpose/ReadVariableOp%gat_conv_190/transpose/ReadVariableOp2R
'gat_conv_190/transpose_1/ReadVariableOp'gat_conv_190/transpose_1/ReadVariableOp2J
#gat_conv_191/Reshape/ReadVariableOp#gat_conv_191/Reshape/ReadVariableOp2F
!gat_conv_191/add_2/ReadVariableOp!gat_conv_191/add_2/ReadVariableOp2N
%gat_conv_191/transpose/ReadVariableOp%gat_conv_191/transpose/ReadVariableOp2R
'gat_conv_191/transpose_1/ReadVariableOp'gat_conv_191/transpose_1/ReadVariableOp2?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp2?
Pgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_191/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_191/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_191/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_191/kernel/Regularizer/Square/ReadVariableOp:R N
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
H__inference_dropout_128_layer_call_and_return_conditional_losses_2758010

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
?
f
-__inference_dropout_128_layer_call_fn_2760055

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
H__inference_dropout_128_layer_call_and_return_conditional_losses_27580052
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
??
?
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_2758219

inputs
inputs_1	
inputs_2
inputs_3	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource!
add_2_readvariableop_resource
identity??Reshape/ReadVariableOp?add_2/ReadVariableOp?Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?transpose/ReadVariableOp?transpose_1/ReadVariableOp?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*#
_output_shapes
:?*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes
:	?@2	
Reshape?
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose?
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1T
ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0	2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputs_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2?
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:?????????*
shape:?????????2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:?????????2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim?
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1?
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiples?
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:?????????2
Repeat/Tile?
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stack?
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1?
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2?
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_slice?
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stack?
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1?
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2?
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mul?
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stack?
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1?
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2?
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis?
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concat?
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:??????????????????2
Repeat/Reshape_1`
boolean_mask/ShapeShapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape?
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stack?
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1?
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2?
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_slice?
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indices?
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodd
boolean_mask/Shape_1Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_1?
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stack?
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1?
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2?
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1d
boolean_mask/Shape_2Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_2?
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stack?
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1?
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2?
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2?
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axis?
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat?
boolean_mask/ReshapeReshapeinputs_1boolean_mask/concat:output:0*
T0	*'
_output_shapes
:?????????2
boolean_mask/Reshape?
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
boolean_mask/Reshape_1/shape?
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:?????????2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:?????????2
boolean_mask/Where?
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axis?
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:?????????2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:?????????2
	ones_like?
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shape?
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":?????????:?????????2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6f
MatMulMatMulinputsReshape:output:0*
T0*'
_output_shapes
:?????????@2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:?????????2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:?????????2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:?????????2
	LeakyRelu?
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:?????????2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:?????????2
Exp?
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:?????????2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:?????????2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:?????????2	
truedivs
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const?
dropout/dropout/MulMultruediv:z:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/Muli
dropout/dropout/ShapeShapetruediv:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/Mul_1
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicedropout/dropout/Mul_1:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:?????????2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:?????????2
mul_2?
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:?????????2
UnsortedSegmentSum_1_
Shape_1ShapeUnsortedSegmentSum_1:output:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack?
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2?
strided_slice_8StridedSliceShape_1:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
strided_slice_8p
concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:@2
concat_1/values_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2strided_slice_8:output:0concat_1/values_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1?
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0concat_1:output:0*
T0*'
_output_shapes
:?????????@2
	Reshape_2?
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02
add_2/ReadVariableOp{
add_2AddV2Reshape_2:output:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
add_2N
EluElu	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Elu?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpReadVariableOpreshape_readvariableop_resource*#
_output_shapes
:?*
dtype02G
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp?
6gcn_improved_78/gat_conv_190/kernel/Regularizer/SquareSquareMgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:?28
6gcn_improved_78/gat_conv_190/kernel/Regularizer/Square?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          27
5gcn_improved_78/gat_conv_190/kernel/Regularizer/Const?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/SumSum:gcn_improved_78/gat_conv_190/kernel/Regularizer/Square:y:0>gcn_improved_78/gat_conv_190/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum?
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?927
5gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x?
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mulMul>gcn_improved_78/gat_conv_190/kernel/Regularizer/mul/x:output:0<gcn_improved_78/gat_conv_190/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 25
3gcn_improved_78/gat_conv_190/kernel/Regularizer/mul?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02Q
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp?
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SquareSquareWgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2B
@gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/SumSumDgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square:y:0Hgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Const:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum?
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92A
?gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mulMulHgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul/x:output:0Fgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2?
=gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/mul?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02R
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp?
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SquareSquareXgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2C
Agcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/SumSumEgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square:y:0Igcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum?
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?92B
@gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x?
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mulMulIgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul/x:output:0Ggcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/mul?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp?
4gcn_improved_78/gat_conv_190/bias/Regularizer/SquareSquareKgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@26
4gcn_improved_78/gat_conv_190/bias/Regularizer/Square?
3gcn_improved_78/gat_conv_190/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3gcn_improved_78/gat_conv_190/bias/Regularizer/Const?
1gcn_improved_78/gat_conv_190/bias/Regularizer/SumSum8gcn_improved_78/gat_conv_190/bias/Regularizer/Square:y:0<gcn_improved_78/gat_conv_190/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/Sum?
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?925
3gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x?
1gcn_improved_78/gat_conv_190/bias/Regularizer/mulMul<gcn_improved_78/gat_conv_190/bias/Regularizer/mul/x:output:0:gcn_improved_78/gat_conv_190/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1gcn_improved_78/gat_conv_190/bias/Regularizer/mul?
IdentityIdentityElu:activations:0^Reshape/ReadVariableOp^add_2/ReadVariableOpQ^gcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpP^gcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpD^gcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpF^gcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:??????????:?????????:?????????:::::20
Reshape/ReadVariableOpReshape/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2?
Pgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOpPgcn_improved_78/gat_conv_190/attn_kernel_neigh/Regularizer/Square/ReadVariableOp2?
Ogcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOpOgcn_improved_78/gat_conv_190/attn_kernel_self/Regularizer/Square/ReadVariableOp2?
Cgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOpCgcn_improved_78/gat_conv_190/bias/Regularizer/Square/ReadVariableOp2?
Egcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOpEgcn_improved_78/gat_conv_190/kernel/Regularizer/Square/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:P L
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
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?	
do1
gat0
do2
classification
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
r_default_save_signature
*s&call_and_return_all_conditional_losses
t__call__"?
_tf_keras_model?{"class_name": "GCN_improved", "name": "gcn_improved_78", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "GCN_improved"}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "sum", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}}, "metrics": null, "weighted_metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}}]], "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.004999999888241291, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
	variables
trainable_variables
regularization_losses
	keras_api
*u&call_and_return_all_conditional_losses
v__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_128", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_128", "trainable": true, "dtype": "float32", "rate": 0.6, "noise_shape": null, "seed": null}}
?

kwargs_keys

kernel
attn_kernel_self
attn_kernel_neigh
attn_kernel_neighs
bias
dropout
	variables
trainable_variables
regularization_losses
	keras_api
*w&call_and_return_all_conditional_losses
x__call__"?
_tf_keras_layer?{"class_name": "GATConv", "name": "gat_conv_190", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gat_conv_190", "trainable": true, "dtype": "float32", "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0002500000118743628}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0002500000118743628}}, "kernel_constraint": null, "bias_constraint": null, "channels": 8, "attn_heads": 8, "concat_heads": true, "dropout_rate": 0.6, "return_attn_coef": false, "attn_kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "attn_kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0002500000118743628}}, "attn_kernel_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [2708, 1433]}, {"class_name": "TensorShape", "items": [2708, 2708]}]}
?
	variables
trainable_variables
regularization_losses
	keras_api
*y&call_and_return_all_conditional_losses
z__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_129", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_129", "trainable": true, "dtype": "float32", "rate": 0.6, "noise_shape": null, "seed": null}}
?
kwargs_keys

kernel
attn_kernel_self
 attn_kernel_neigh
 attn_kernel_neighs
!bias
"dropout
#	variables
$trainable_variables
%regularization_losses
&	keras_api
*{&call_and_return_all_conditional_losses
|__call__"?
_tf_keras_layer?{"class_name": "GATConv", "name": "gat_conv_191", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gat_conv_191", "trainable": true, "dtype": "float32", "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0002500000118743628}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0002500000118743628}}, "kernel_constraint": null, "bias_constraint": null, "channels": 7, "attn_heads": 1, "concat_heads": false, "dropout_rate": 0.6, "return_attn_coef": false, "attn_kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "attn_kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0002500000118743628}}, "attn_kernel_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [2708, 64]}, {"class_name": "TensorShape", "items": [2708, 2708]}]}
?
'iter

(beta_1

)beta_2
	*decay
+learning_ratembmcmdmemfmg mh!mivjvkvlvmvnvo vp!vq"
	optimizer
X
0
1
2
3
4
5
 6
!7"
trackable_list_wrapper
X
0
1
2
3
4
5
 6
!7"
trackable_list_wrapper
]
}0
~1
2
?3
?4
?5
?6
?7"
trackable_list_wrapper
?
,layer_regularization_losses
	variables
-layer_metrics
.non_trainable_variables

/layers
0metrics
trainable_variables
regularization_losses
t__call__
r_default_save_signature
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
1layer_regularization_losses
	variables
2layer_metrics
3non_trainable_variables

4layers
5metrics
trainable_variables
regularization_losses
v__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
::8?2#gcn_improved_78/gat_conv_190/kernel
C:A2-gcn_improved_78/gat_conv_190/attn_kernel_self
D:B2.gcn_improved_78/gat_conv_190/attn_kernel_neigh
/:-@2!gcn_improved_78/gat_conv_190/bias
?
6	variables
7trainable_variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.6, "noise_shape": null, "seed": null}}
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
=
}0
~1
2
?3"
trackable_list_wrapper
?
:layer_regularization_losses
	variables
;layer_metrics
<non_trainable_variables

=layers
>metrics
trainable_variables
regularization_losses
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_regularization_losses
	variables
@layer_metrics
Anon_trainable_variables

Blayers
Cmetrics
trainable_variables
regularization_losses
z__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
9:7@2#gcn_improved_78/gat_conv_191/kernel
C:A2-gcn_improved_78/gat_conv_191/attn_kernel_self
D:B2.gcn_improved_78/gat_conv_191/attn_kernel_neigh
/:-2!gcn_improved_78/gat_conv_191/bias
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.6, "noise_shape": null, "seed": null}}
<
0
1
 2
!3"
trackable_list_wrapper
<
0
1
 2
!3"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
Hlayer_regularization_losses
#	variables
Ilayer_metrics
Jnon_trainable_variables

Klayers
Lmetrics
$trainable_variables
%regularization_losses
|__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
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
<
0
1
2
3"
trackable_list_wrapper
.
M0
N1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
?
Olayer_regularization_losses
6	variables
Player_metrics
Qnon_trainable_variables

Rlayers
Smetrics
7trainable_variables
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
=
}0
~1
2
?3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tlayer_regularization_losses
D	variables
Ulayer_metrics
Vnon_trainable_variables

Wlayers
Xmetrics
Etrainable_variables
Fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	Ytotal
	Zcount
[	variables
\	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	]total
	^count
_
_fn_kwargs
`	variables
a	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}}
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
:  (2total
:  (2count
.
Y0
Z1"
trackable_list_wrapper
-
[	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
?:=?2*Adam/gcn_improved_78/gat_conv_190/kernel/m
H:F24Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/m
I:G25Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/m
4:2@2(Adam/gcn_improved_78/gat_conv_190/bias/m
>:<@2*Adam/gcn_improved_78/gat_conv_191/kernel/m
H:F24Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/m
I:G25Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/m
4:22(Adam/gcn_improved_78/gat_conv_191/bias/m
?:=?2*Adam/gcn_improved_78/gat_conv_190/kernel/v
H:F24Adam/gcn_improved_78/gat_conv_190/attn_kernel_self/v
I:G25Adam/gcn_improved_78/gat_conv_190/attn_kernel_neigh/v
4:2@2(Adam/gcn_improved_78/gat_conv_190/bias/v
>:<@2*Adam/gcn_improved_78/gat_conv_191/kernel/v
H:F24Adam/gcn_improved_78/gat_conv_191/attn_kernel_self/v
I:G25Adam/gcn_improved_78/gat_conv_191/attn_kernel_neigh/v
4:22(Adam/gcn_improved_78/gat_conv_191/bias/v
?2?
"__inference__wrapped_model_2757986?
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
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_2759985
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_2759619?
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
1__inference_gcn_improved_78_layer_call_fn_2760033
1__inference_gcn_improved_78_layer_call_fn_2760009?
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
H__inference_dropout_128_layer_call_and_return_conditional_losses_2760045
H__inference_dropout_128_layer_call_and_return_conditional_losses_2760050?
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
-__inference_dropout_128_layer_call_fn_2760055
-__inference_dropout_128_layer_call_fn_2760060?
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
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_2760469
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_2760280?
???
FullArgSpec!
args?
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_gat_conv_190_layer_call_fn_2760485
.__inference_gat_conv_190_layer_call_fn_2760501?
???
FullArgSpec!
args?
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dropout_129_layer_call_and_return_conditional_losses_2760518
H__inference_dropout_129_layer_call_and_return_conditional_losses_2760513?
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
-__inference_dropout_129_layer_call_fn_2760523
-__inference_dropout_129_layer_call_fn_2760528?
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
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_2760741
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_2760923?
???
FullArgSpec!
args?
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_gat_conv_191_layer_call_fn_2760939
.__inference_gat_conv_191_layer_call_fn_2760955?
???
FullArgSpec!
args?
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_2760966?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_2760977?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_2760988?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_2760999?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_2761010?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_2761021?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_6_2761032?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_7_2761043?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
%__inference_signature_wrapper_2759225args_0args_0_1args_0_2args_0_3"?
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
 
?2??
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
?2??
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
?2??
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
?2??
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
 ?
"__inference__wrapped_model_2757986? !y?v
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
H__inference_dropout_128_layer_call_and_return_conditional_losses_2760045^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
H__inference_dropout_128_layer_call_and_return_conditional_losses_2760050^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
-__inference_dropout_128_layer_call_fn_2760055Q4?1
*?'
!?
inputs??????????
p
? "????????????
-__inference_dropout_128_layer_call_fn_2760060Q4?1
*?'
!?
inputs??????????
p 
? "????????????
H__inference_dropout_129_layer_call_and_return_conditional_losses_2760513\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
H__inference_dropout_129_layer_call_and_return_conditional_losses_2760518\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
-__inference_dropout_129_layer_call_fn_2760523O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
-__inference_dropout_129_layer_call_fn_2760528O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_2760280?}?z
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
0?????????@
? ?
I__inference_gat_conv_190_layer_call_and_return_conditional_losses_2760469?}?z
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
0?????????@
? ?
.__inference_gat_conv_190_layer_call_fn_2760485?}?z
s?p
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
p
? "??????????@?
.__inference_gat_conv_190_layer_call_fn_2760501?}?z
s?p
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
p 
? "??????????@?
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_2760741? !|?y
r?o
i?f
"?
inputs/0?????????@
@?='?$
???????????????????
?SparseTensorSpec
p
? "%?"
?
0?????????
? ?
I__inference_gat_conv_191_layer_call_and_return_conditional_losses_2760923? !|?y
r?o
i?f
"?
inputs/0?????????@
@?='?$
???????????????????
?SparseTensorSpec
p 
? "%?"
?
0?????????
? ?
.__inference_gat_conv_191_layer_call_fn_2760939? !|?y
r?o
i?f
"?
inputs/0?????????@
@?='?$
???????????????????
?SparseTensorSpec
p
? "???????????
.__inference_gat_conv_191_layer_call_fn_2760955? !|?y
r?o
i?f
"?
inputs/0?????????@
@?='?$
???????????????????
?SparseTensorSpec
p 
? "???????????
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_2759619? !}?z
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
? ?
L__inference_gcn_improved_78_layer_call_and_return_conditional_losses_2759985? !}?z
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
1__inference_gcn_improved_78_layer_call_fn_2760009? !}?z
s?p
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
p
? "???????????
1__inference_gcn_improved_78_layer_call_fn_2760033? !}?z
s?p
j?g
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
p 
? "??????????<
__inference_loss_fn_0_2760966?

? 
? "? <
__inference_loss_fn_1_2760977?

? 
? "? <
__inference_loss_fn_2_2760988?

? 
? "? <
__inference_loss_fn_3_2760999?

? 
? "? <
__inference_loss_fn_4_2761010?

? 
? "? <
__inference_loss_fn_5_2761021?

? 
? "? <
__inference_loss_fn_6_2761032 ?

? 
? "? <
__inference_loss_fn_7_2761043!?

? 
? "? ?
%__inference_signature_wrapper_2759225? !???
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