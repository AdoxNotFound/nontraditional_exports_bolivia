²Ë(
úÊ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8'

Adam/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*)
shared_nameAdam/gru/gru_cell/bias/v

,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/v*
_output_shapes
:	¬*
dtype0
¥
$Adam/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d¬*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/v

8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/v*
_output_shapes
:	d¬*
dtype0

Adam/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*+
shared_nameAdam/gru/gru_cell/kernel/v

.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/v*
_output_shapes
:	¬*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
: *
dtype0

Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:d *
dtype0

Adam/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*)
shared_nameAdam/gru/gru_cell/bias/m

,Adam/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/m*
_output_shapes
:	¬*
dtype0
¥
$Adam/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d¬*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/m

8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/m*
_output_shapes
:	d¬*
dtype0

Adam/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*+
shared_nameAdam/gru/gru_cell/kernel/m

.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/m*
_output_shapes
:	¬*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
: *
dtype0

Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:d *
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

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	¬*
dtype0

gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d¬*.
shared_namegru/gru_cell/recurrent_kernel

1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel*
_output_shapes
:	d¬*
dtype0

gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	¬*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

: *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
: *
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:d *
dtype0

serving_default_input_3Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
Ã
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3gru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_130695

NoOpNoOp
¥7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*à6
valueÖ6BÓ6 BÌ6
Á
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
5
&0
'1
(2
3
4
$5
%6*
5
&0
'1
(2
3
4
$5
%6*
* 
°
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
.trace_0
/trace_1
0trace_2
1trace_3* 
6
2trace_0
3trace_1
4trace_2
5trace_3* 
* 
Â
6iter

7beta_1

8beta_2
	9decay
:learning_ratemomp$mq%mr&ms'mt(muvvvw$vx%vy&vz'v{(v|*

;serving_default* 

&0
'1
(2*

&0
'1
(2*
* 


<states
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Btrace_0
Ctrace_1
Dtrace_2
Etrace_3* 
6
Ftrace_0
Gtrace_1
Htrace_2
Itrace_3* 
* 
Ó
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_random_generator

&kernel
'recurrent_kernel
(bias*
* 

0
1*

0
1*
* 

Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Vtrace_0* 

Wtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 

Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgru/gru_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEgru/gru_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEgru/gru_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

&0
'1
(2*

&0
'1
(2*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
f	variables
g	keras_api
	htotal
	icount*
H
j	variables
k	keras_api
	ltotal
	mcount
n
_fn_kwargs*
* 
* 
* 
* 
* 

h0
i1*

f	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

j	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/gru/gru_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/gru/gru_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
á
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp,Adam/gru/gru_cell/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpConst*+
Tin$
"2 	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_133223

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasdense_5/kerneldense_5/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/gru/gru_cell/kernel/m$Adam/gru/gru_cell/recurrent_kernel/mAdam/gru/gru_cell/bias/mAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/gru/gru_cell/kernel/v$Adam/gru/gru_cell/recurrent_kernel/vAdam/gru/gru_cell/bias/v**
Tin#
!2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_133323Õ&
à
½
?__inference_gru_layer_call_and_return_conditional_losses_130539

inputs/
read_readvariableop_resource:	¬1
read_1_readvariableop_resource:	d¬1
read_2_readvariableop_resource:	¬

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	¬*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_130324i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®x
²
"__inference__traced_restore_133323
file_prefix1
assignvariableop_dense_4_kernel:d -
assignvariableop_1_dense_4_bias: 3
!assignvariableop_2_dense_5_kernel: -
assignvariableop_3_dense_5_bias:9
&assignvariableop_4_gru_gru_cell_kernel:	¬C
0assignvariableop_5_gru_gru_cell_recurrent_kernel:	d¬7
$assignvariableop_6_gru_gru_cell_bias:	¬&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: #
assignvariableop_14_total: #
assignvariableop_15_count: ;
)assignvariableop_16_adam_dense_4_kernel_m:d 5
'assignvariableop_17_adam_dense_4_bias_m: ;
)assignvariableop_18_adam_dense_5_kernel_m: 5
'assignvariableop_19_adam_dense_5_bias_m:A
.assignvariableop_20_adam_gru_gru_cell_kernel_m:	¬K
8assignvariableop_21_adam_gru_gru_cell_recurrent_kernel_m:	d¬?
,assignvariableop_22_adam_gru_gru_cell_bias_m:	¬;
)assignvariableop_23_adam_dense_4_kernel_v:d 5
'assignvariableop_24_adam_dense_4_bias_v: ;
)assignvariableop_25_adam_dense_5_kernel_v: 5
'assignvariableop_26_adam_dense_5_bias_v:A
.assignvariableop_27_adam_gru_gru_cell_kernel_v:	¬K
8assignvariableop_28_adam_gru_gru_cell_recurrent_kernel_v:	d¬?
,assignvariableop_29_adam_gru_gru_cell_bias_v:	¬
identity_31¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Î
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ô
valueêBçB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B º
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp&assignvariableop_4_gru_gru_cell_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp0assignvariableop_5_gru_gru_cell_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_gru_gru_cell_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_4_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_4_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_5_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_5_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_gru_gru_cell_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_21AssignVariableOp8assignvariableop_21_adam_gru_gru_cell_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp,assignvariableop_22_adam_gru_gru_cell_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_4_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_4_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_5_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_5_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_gru_gru_cell_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_28AssignVariableOp8assignvariableop_28_adam_gru_gru_cell_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_gru_gru_cell_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ã
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: Ð
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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


ô
C__inference_dense_4_layer_call_and_return_conditional_losses_133091

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
>
¹
&__forward_gpu_gru_with_fallback_132690

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_7ed09685-afa7-451b-a8eb-927c1347ac5a*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_132555_132691*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias

Ø

:__inference___backward_gpu_gru_with_fallback_128754_128890
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*L
_output_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_a5714bc8-4a7f-42e5-a395-d6c57cdbfa20*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_128889*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

Ø

:__inference___backward_gpu_gru_with_fallback_129931_130067
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*L
_output_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_32fdef6c-2d26-4910-bc51-61b7a52aac96*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_130066*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
Þ
while_cond_128586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_128586___redundant_placeholder04
0while_while_cond_128586___redundant_placeholder14
0while_while_cond_128586___redundant_placeholder24
0while_while_cond_128586___redundant_placeholder34
0while_while_cond_128586___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
	
Þ
while_cond_128981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_128981___redundant_placeholder04
0while_while_cond_128981___redundant_placeholder14
0while_while_cond_128981___redundant_placeholder24
0while_while_cond_128981___redundant_placeholder34
0while_while_cond_128981___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

·
$__inference_gru_layer_call_fn_131537
inputs_0
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_129676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
>
¹
&__forward_gpu_gru_with_fallback_130066

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_32fdef6c-2d26-4910-bc51-61b7a52aac96*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_129931_130067*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
ó4
¯
(__inference_gpu_gru_with_fallback_129537

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_69068c1d-693b-4004-9828-6c2fadc1646b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
÷
§
H__inference_sequential_2_layer_call_and_return_conditional_losses_130647
input_3

gru_130629:	¬

gru_130631:	d¬

gru_130633:	¬ 
dense_4_130636:d 
dense_4_130638:  
dense_5_130641: 
dense_5_130643:
identity¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢gru/StatefulPartitionedCallë
gru/StatefulPartitionedCallStatefulPartitionedCallinput_3
gru_130629
gru_130631
gru_130633*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_130069
dense_4/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_4_130636dense_4_130638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_130088
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_130641dense_5_130643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_130104w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
Ì
Ø

:__inference___backward_gpu_gru_with_fallback_129538_129674
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¢
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ù
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*ª
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_69068c1d-693b-4004-9828-6c2fadc1646b*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_129673*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ú
¿
?__inference_gru_layer_call_and_return_conditional_losses_132315
inputs_0/
read_readvariableop_resource:	¬1
read_1_readvariableop_resource:	d¬1
read_2_readvariableop_resource:	¬

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	¬*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_132100i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
è-
â
while_body_129371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
ò
½
?__inference_gru_layer_call_and_return_conditional_losses_129676

inputs/
read_readvariableop_resource:	¬1
read_1_readvariableop_resource:	d¬1
read_2_readvariableop_resource:	¬

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	¬*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_129461i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Þ
while_cond_129370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_129370___redundant_placeholder04
0while_while_cond_129370___redundant_placeholder14
0while_while_cond_129370___redundant_placeholder24
0while_while_cond_129370___redundant_placeholder34
0while_while_cond_129370___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
>
¹
&__forward_gpu_gru_with_fallback_128889

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_a5714bc8-4a7f-42e5-a395-d6c57cdbfa20*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_128754_128890*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias

Ø

:__inference___backward_gpu_gru_with_fallback_132933_133069
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*L
_output_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_2d3344ee-ab5a-4dae-83c5-3d001749fedb*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_133068*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
º>
¹
&__forward_gpu_gru_with_fallback_129284

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_5caf3294-7125-46c3-a7a6-cddae800a403*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_129149_129285*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
è-
â
while_body_132766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
ô
¦
H__inference_sequential_2_layer_call_and_return_conditional_losses_130111

inputs

gru_130070:	¬

gru_130072:	d¬

gru_130074:	¬ 
dense_4_130089:d 
dense_4_130091:  
dense_5_130105: 
dense_5_130107:
identity¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢gru/StatefulPartitionedCallê
gru/StatefulPartitionedCallStatefulPartitionedCallinputs
gru_130070
gru_130072
gru_130074*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_130069
dense_4/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_4_130089dense_4_130091*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_130088
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_130105dense_5_130107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_130104w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ	
ô
C__inference_dense_5_layer_call_and_return_conditional_losses_133110

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ï4
¯
(__inference_gpu_gru_with_fallback_130972

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_51568af6-e74f-4bd4-ac27-0fb74de8927d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
ò
½
?__inference_gru_layer_call_and_return_conditional_losses_129287

inputs/
read_readvariableop_resource:	¬1
read_1_readvariableop_resource:	d¬1
read_2_readvariableop_resource:	¬

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	¬*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_129072i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ø

:__inference___backward_gpu_gru_with_fallback_132555_132691
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*L
_output_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_7ed09685-afa7-451b-a8eb-927c1347ac5a*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_132690*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ï4
¯
(__inference_gpu_gru_with_fallback_128753

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_a5714bc8-4a7f-42e5-a395-d6c57cdbfa20*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
À

(__inference_dense_4_layer_call_fn_133080

inputs
unknown:d 
	unknown_0: 
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_130088o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º>
¹
&__forward_gpu_gru_with_fallback_132312

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_04d93cb8-9cf6-44f7-a8aa-cd7808246e38*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_132177_132313*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
Ï4
¯
(__inference_gpu_gru_with_fallback_129930

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_32fdef6c-2d26-4910-bc51-61b7a52aac96*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
>
£
__inference_standard_gru_130324

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_130234*
condR
while_cond_130233*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_9281b0d1-1452-408c-9d27-54b9d7aef3dc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
º>
¹
&__forward_gpu_gru_with_fallback_129673

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_69068c1d-693b-4004-9828-6c2fadc1646b*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_129538_129674*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
>
¹
&__forward_gpu_gru_with_fallback_131499

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_d5d7a384-8191-4ff1-9675-94cb1aa261e6*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_131364_131500*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
ô
¦
H__inference_sequential_2_layer_call_and_return_conditional_losses_130590

inputs

gru_130572:	¬

gru_130574:	d¬

gru_130576:	¬ 
dense_4_130579:d 
dense_4_130581:  
dense_5_130584: 
dense_5_130586:
identity¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢gru/StatefulPartitionedCallê
gru/StatefulPartitionedCallStatefulPartitionedCallinputs
gru_130572
gru_130574
gru_130576*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_130539
dense_4/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_4_130579dense_4_130581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_130088
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_130584dense_5_130586*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_130104w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­	
ª
-__inference_sequential_2_layer_call_fn_130714

inputs
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
	unknown_2:d 
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_130111o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ'
À
H__inference_sequential_2_layer_call_and_return_conditional_losses_131515

inputs3
 gru_read_readvariableop_resource:	¬5
"gru_read_1_readvariableop_resource:	d¬5
"gru_read_2_readvariableop_resource:	¬8
&dense_4_matmul_readvariableop_resource:d 5
'dense_4_biasadd_readvariableop_resource: 8
&dense_5_matmul_readvariableop_resource: 5
'dense_5_biasadd_readvariableop_resource:
identity¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢gru/Read/ReadVariableOp¢gru/Read_1/ReadVariableOp¢gru/Read_2/ReadVariableOp?
	gru/ShapeShapeinputs*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource*
_output_shapes
:	¬*
dtype0c
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬}
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0g
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬}
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0g
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
gru/PartitionedCallPartitionedCallinputsgru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_131287
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0
dense_4/MatMulMatMulgru/PartitionedCall:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ø

:__inference___backward_gpu_gru_with_fallback_130973_131109
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*L
_output_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_51568af6-e74f-4bd4-ac27-0fb74de8927d*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_131108*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
­	
ª
-__inference_sequential_2_layer_call_fn_130733

inputs
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
	unknown_2:d 
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_130590o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Þ
while_cond_132765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_132765___redundant_placeholder04
0while_while_cond_132765___redundant_placeholder14
0while_while_cond_132765___redundant_placeholder24
0while_while_cond_132765___redundant_placeholder34
0while_while_cond_132765___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Æ	
ô
C__inference_dense_5_layer_call_and_return_conditional_losses_130104

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
µ>
£
__inference_standard_gru_129072

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_128982*
condR
while_cond_128981*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_5caf3294-7125-46c3-a7a6-cddae800a403*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
>
£
__inference_standard_gru_132856

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_132766*
condR
while_cond_132765*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_2d3344ee-ab5a-4dae-83c5-3d001749fedb*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
	
Þ
while_cond_130233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_130233___redundant_placeholder04
0while_while_cond_130233___redundant_placeholder14
0while_while_cond_130233___redundant_placeholder24
0while_while_cond_130233___redundant_placeholder34
0while_while_cond_130233___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
>
£
__inference_standard_gru_128677

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_128587*
condR
while_cond_128586*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_a5714bc8-4a7f-42e5-a395-d6c57cdbfa20*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
µ>
£
__inference_standard_gru_131722

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_131632*
condR
while_cond_131631*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_9780d15f-5fd2-44b1-96b5-9ea8594f5c90*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
è-
â
while_body_131632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
>
£
__inference_standard_gru_129854

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_129764*
condR
while_cond_129763*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_32fdef6c-2d26-4910-bc51-61b7a52aac96*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias

·
$__inference_gru_layer_call_fn_131526
inputs_0
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_129287o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
>
£
__inference_standard_gru_130896

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_130806*
condR
while_cond_130805*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_51568af6-e74f-4bd4-ac27-0fb74de8927d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
Ì
Ø

:__inference___backward_gpu_gru_with_fallback_132177_132313
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¢
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ù
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*ª
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_04d93cb8-9cf6-44f7-a8aa-cd7808246e38*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_132312*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
>
¹
&__forward_gpu_gru_with_fallback_131108

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_51568af6-e74f-4bd4-ac27-0fb74de8927d*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_130973_131109*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
ú
¿
?__inference_gru_layer_call_and_return_conditional_losses_131937
inputs_0/
read_readvariableop_resource:	¬1
read_1_readvariableop_resource:	d¬1
read_2_readvariableop_resource:	¬

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	¬*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_131722i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ï4
¯
(__inference_gpu_gru_with_fallback_132554

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_7ed09685-afa7-451b-a8eb-927c1347ac5a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
ó4
¯
(__inference_gpu_gru_with_fallback_129148

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_5caf3294-7125-46c3-a7a6-cddae800a403*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias

Ø

:__inference___backward_gpu_gru_with_fallback_131364_131500
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*L
_output_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_d5d7a384-8191-4ff1-9675-94cb1aa261e6*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_131499*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
>
¹
&__forward_gpu_gru_with_fallback_133068

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_2d3344ee-ab5a-4dae-83c5-3d001749fedb*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_132933_133069*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
ó
µ
$__inference_gru_layer_call_fn_131548

inputs
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_130069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è-
â
while_body_129764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬


ô
C__inference_dense_4_layer_call_and_return_conditional_losses_130088

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º>
¹
&__forward_gpu_gru_with_fallback_131934

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_9780d15f-5fd2-44b1-96b5-9ea8594f5c90*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_131799_131935*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
Ì
Ø

:__inference___backward_gpu_gru_with_fallback_131799_131935
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¢
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ù
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*ª
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_9780d15f-5fd2-44b1-96b5-9ea8594f5c90*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_131934*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
è-
â
while_body_132010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
	
Þ
while_cond_132387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_132387___redundant_placeholder04
0while_while_cond_132387___redundant_placeholder14
0while_while_cond_132387___redundant_placeholder24
0while_while_cond_132387___redundant_placeholder34
0while_while_cond_132387___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ó4
¯
(__inference_gpu_gru_with_fallback_132176

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_04d93cb8-9cf6-44f7-a8aa-cd7808246e38*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
Ï4
¯
(__inference_gpu_gru_with_fallback_130400

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_9281b0d1-1452-408c-9d27-54b9d7aef3dc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
÷
§
H__inference_sequential_2_layer_call_and_return_conditional_losses_130668
input_3

gru_130650:	¬

gru_130652:	d¬

gru_130654:	¬ 
dense_4_130657:d 
dense_4_130659:  
dense_5_130662: 
dense_5_130664:
identity¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢gru/StatefulPartitionedCallë
gru/StatefulPartitionedCallStatefulPartitionedCallinput_3
gru_130650
gru_130652
gru_130654*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_130539
dense_4/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_4_130657dense_4_130659*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_130088
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_130662dense_5_130664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_130104w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
à
½
?__inference_gru_layer_call_and_return_conditional_losses_132693

inputs/
read_readvariableop_resource:	¬1
read_1_readvariableop_resource:	d¬1
read_2_readvariableop_resource:	¬

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	¬*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_132478i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è-
â
while_body_128587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
µ>
£
__inference_standard_gru_132100

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_132010*
condR
while_cond_132009*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_04d93cb8-9cf6-44f7-a8aa-cd7808246e38*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
è-
â
while_body_131197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
Õ'
À
H__inference_sequential_2_layer_call_and_return_conditional_losses_131124

inputs3
 gru_read_readvariableop_resource:	¬5
"gru_read_1_readvariableop_resource:	d¬5
"gru_read_2_readvariableop_resource:	¬8
&dense_4_matmul_readvariableop_resource:d 5
'dense_4_biasadd_readvariableop_resource: 8
&dense_5_matmul_readvariableop_resource: 5
'dense_5_biasadd_readvariableop_resource:
identity¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢gru/Read/ReadVariableOp¢gru/Read_1/ReadVariableOp¢gru/Read_2/ReadVariableOp?
	gru/ShapeShapeinputs*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource*
_output_shapes
:	¬*
dtype0c
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬}
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0g
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬}
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0g
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
gru/PartitionedCallPartitionedCallinputsgru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_130896
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0
dense_4/MatMulMatMulgru/PartitionedCall:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
>
¹
&__forward_gpu_gru_with_fallback_130536

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¯
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_9281b0d1-1452-408c-9d27-54b9d7aef3dc*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_130401_130537*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
A
Þ
__inference__traced_save_133223
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_m_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_v_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ë
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ô
valueêBçB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH«
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B È
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop5savev2_adam_gru_gru_cell_kernel_m_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop3savev2_adam_gru_gru_cell_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop5savev2_adam_gru_gru_cell_kernel_v_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop3savev2_adam_gru_gru_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*î
_input_shapesÜ
Ù: :d : : ::	¬:	d¬:	¬: : : : : : : : : :d : : ::	¬:	d¬:	¬:d : : ::	¬:	d¬:	¬: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	¬:%!

_output_shapes
:	d¬:%!

_output_shapes
:	¬:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:d : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	¬:%!

_output_shapes
:	d¬:%!

_output_shapes
:	¬:$ 

_output_shapes

:d : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	¬:%!

_output_shapes
:	d¬:%!

_output_shapes
:	¬:

_output_shapes
: 
å0
Ð
!__inference__wrapped_model_128905
input_3@
-sequential_2_gru_read_readvariableop_resource:	¬B
/sequential_2_gru_read_1_readvariableop_resource:	d¬B
/sequential_2_gru_read_2_readvariableop_resource:	¬E
3sequential_2_dense_4_matmul_readvariableop_resource:d B
4sequential_2_dense_4_biasadd_readvariableop_resource: E
3sequential_2_dense_5_matmul_readvariableop_resource: B
4sequential_2_dense_5_biasadd_readvariableop_resource:
identity¢+sequential_2/dense_4/BiasAdd/ReadVariableOp¢*sequential_2/dense_4/MatMul/ReadVariableOp¢+sequential_2/dense_5/BiasAdd/ReadVariableOp¢*sequential_2/dense_5/MatMul/ReadVariableOp¢$sequential_2/gru/Read/ReadVariableOp¢&sequential_2/gru/Read_1/ReadVariableOp¢&sequential_2/gru/Read_2/ReadVariableOpM
sequential_2/gru/ShapeShapeinput_3*
T0*
_output_shapes
:n
$sequential_2/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential_2/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential_2/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
sequential_2/gru/strided_sliceStridedSlicesequential_2/gru/Shape:output:0-sequential_2/gru/strided_slice/stack:output:0/sequential_2/gru/strided_slice/stack_1:output:0/sequential_2/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential_2/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¦
sequential_2/gru/zeros/packedPack'sequential_2/gru/strided_slice:output:0(sequential_2/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
sequential_2/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential_2/gru/zerosFill&sequential_2/gru/zeros/packed:output:0%sequential_2/gru/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$sequential_2/gru/Read/ReadVariableOpReadVariableOp-sequential_2_gru_read_readvariableop_resource*
_output_shapes
:	¬*
dtype0}
sequential_2/gru/IdentityIdentity,sequential_2/gru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
&sequential_2/gru/Read_1/ReadVariableOpReadVariableOp/sequential_2_gru_read_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0
sequential_2/gru/Identity_1Identity.sequential_2/gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬
&sequential_2/gru/Read_2/ReadVariableOpReadVariableOp/sequential_2_gru_read_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0
sequential_2/gru/Identity_2Identity.sequential_2/gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬à
 sequential_2/gru/PartitionedCallPartitionedCallinput_3sequential_2/gru/zeros:output:0"sequential_2/gru/Identity:output:0$sequential_2/gru/Identity_1:output:0$sequential_2/gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_128677
*sequential_2/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_4_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0¶
sequential_2/dense_4/MatMulMatMul)sequential_2/gru/PartitionedCall:output:02sequential_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0µ
sequential_2/dense_4/BiasAddBiasAdd%sequential_2/dense_4/MatMul:product:03sequential_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
sequential_2/dense_4/ReluRelu%sequential_2/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0´
sequential_2/dense_5/MatMulMatMul'sequential_2/dense_4/Relu:activations:02sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_2/dense_5/BiasAddBiasAdd%sequential_2/dense_5/MatMul:product:03sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
IdentityIdentity%sequential_2/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
NoOpNoOp,^sequential_2/dense_4/BiasAdd/ReadVariableOp+^sequential_2/dense_4/MatMul/ReadVariableOp,^sequential_2/dense_5/BiasAdd/ReadVariableOp+^sequential_2/dense_5/MatMul/ReadVariableOp%^sequential_2/gru/Read/ReadVariableOp'^sequential_2/gru/Read_1/ReadVariableOp'^sequential_2/gru/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2Z
+sequential_2/dense_4/BiasAdd/ReadVariableOp+sequential_2/dense_4/BiasAdd/ReadVariableOp2X
*sequential_2/dense_4/MatMul/ReadVariableOp*sequential_2/dense_4/MatMul/ReadVariableOp2Z
+sequential_2/dense_5/BiasAdd/ReadVariableOp+sequential_2/dense_5/BiasAdd/ReadVariableOp2X
*sequential_2/dense_5/MatMul/ReadVariableOp*sequential_2/dense_5/MatMul/ReadVariableOp2L
$sequential_2/gru/Read/ReadVariableOp$sequential_2/gru/Read/ReadVariableOp2P
&sequential_2/gru/Read_1/ReadVariableOp&sequential_2/gru/Read_1/ReadVariableOp2P
&sequential_2/gru/Read_2/ReadVariableOp&sequential_2/gru/Read_2/ReadVariableOp:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
è-
â
while_body_128982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
À

(__inference_dense_5_layer_call_fn_133100

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_130104o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
è-
â
while_body_130806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
	
Þ
while_cond_130805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_130805___redundant_placeholder04
0while_while_cond_130805___redundant_placeholder14
0while_while_cond_130805___redundant_placeholder24
0while_while_cond_130805___redundant_placeholder34
0while_while_cond_130805___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ó
µ
$__inference_gru_layer_call_fn_131559

inputs
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_130539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ø

:__inference___backward_gpu_gru_with_fallback_130401_130537
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*L
_output_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_9281b0d1-1452-408c-9d27-54b9d7aef3dc*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_130536*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
°	
«
-__inference_sequential_2_layer_call_fn_130128
input_3
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
	unknown_2:d 
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_130111o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
°	
«
-__inference_sequential_2_layer_call_fn_130626
input_3
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
	unknown_2:d 
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_130590o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
à
½
?__inference_gru_layer_call_and_return_conditional_losses_130069

inputs/
read_readvariableop_resource:	¬1
read_1_readvariableop_resource:	d¬1
read_2_readvariableop_resource:	¬

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	¬*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_129854i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó4
¯
(__inference_gpu_gru_with_fallback_131798

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_9780d15f-5fd2-44b1-96b5-9ea8594f5c90*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
Ï4
¯
(__inference_gpu_gru_with_fallback_132932

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_2d3344ee-ab5a-4dae-83c5-3d001749fedb*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
	
Þ
while_cond_129763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_129763___redundant_placeholder04
0while_while_cond_129763___redundant_placeholder14
0while_while_cond_129763___redundant_placeholder24
0while_while_cond_129763___redundant_placeholder34
0while_while_cond_129763___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
µ>
£
__inference_standard_gru_129461

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_129371*
condR
while_cond_129370*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_69068c1d-693b-4004-9828-6c2fadc1646b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
	
Þ
while_cond_131196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_131196___redundant_placeholder04
0while_while_cond_131196___redundant_placeholder14
0while_while_cond_131196___redundant_placeholder24
0while_while_cond_131196___redundant_placeholder34
0while_while_cond_131196___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ï4
¯
(__inference_gpu_gru_with_fallback_131363

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:d:d:d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:dd:dd:dd*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿV
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:ØS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ôa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Na
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:N[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:äúU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_d5d7a384-8191-4ff1-9675-94cb1aa261e6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
à
½
?__inference_gru_layer_call_and_return_conditional_losses_133071

inputs/
read_readvariableop_resource:	¬1
read_1_readvariableop_resource:	d¬1
read_2_readvariableop_resource:	¬

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	¬*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d¬*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d¬u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	¬*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_132856i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è-
â
while_body_132388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
	
Þ
while_cond_132009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_132009___redundant_placeholder04
0while_while_cond_132009___redundant_placeholder14
0while_while_cond_132009___redundant_placeholder24
0while_while_cond_132009___redundant_placeholder34
0while_while_cond_132009___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
è-
â
while_body_130234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¬:!

_output_shapes	
:¬:%	!

_output_shapes
:	d¬:!


_output_shapes	
:¬
	
Þ
while_cond_131631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_131631___redundant_placeholder04
0while_while_cond_131631___redundant_placeholder14
0while_while_cond_131631___redundant_placeholder24
0while_while_cond_131631___redundant_placeholder34
0while_while_cond_131631___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿd: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
>
£
__inference_standard_gru_132478

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_132388*
condR
while_cond_132387*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_7ed09685-afa7-451b-a8eb-927c1347ac5a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
>
£
__inference_standard_gru_131287

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:¬:¬*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_131197*
condR
while_cond_131196*V
output_shapesE
C: : : : :ÿÿÿÿÿÿÿÿÿd: : :	¬:¬:	d¬:¬*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:	¬:	d¬:	¬*<
api_implements*(gru_d5d7a384-8191-4ff1-9675-94cb1aa261e6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinit_h:GC

_output_shapes
:	¬
 
_user_specified_namekernel:QM

_output_shapes
:	d¬
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	¬

_user_specified_namebias
Ì
Ø

:__inference___backward_gpu_gru_with_fallback_129149_129285
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ª
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¢
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ù
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ôh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Nh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Ng
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:dg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dh
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::æ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ôê
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Nê
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Né
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dé
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dì
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d      ¥
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   ¥
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¡
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:d
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ø
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	¬
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d¬m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ,  ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	¬{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	¬h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d¬i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	¬"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*ª
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: ::ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd: :äú::ÿÿÿÿÿÿÿÿÿd: ::::::: : : *<
api_implements*(gru_5caf3294-7125-46c3-a7a6-cddae800a403*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_129284*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :"

_output_shapes

:äú: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
¢
$__inference_signature_wrapper_130695
input_3
unknown:	¬
	unknown_0:	d¬
	unknown_1:	¬
	unknown_2:d 
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_128905o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*®
serving_default
?
input_34
serving_default_input_3:0ÿÿÿÿÿÿÿÿÿ;
dense_50
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Å
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ú
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
Q
&0
'1
(2
3
4
$5
%6"
trackable_list_wrapper
Q
&0
'1
(2
3
4
$5
%6"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
é
.trace_0
/trace_1
0trace_2
1trace_32þ
-__inference_sequential_2_layer_call_fn_130128
-__inference_sequential_2_layer_call_fn_130714
-__inference_sequential_2_layer_call_fn_130733
-__inference_sequential_2_layer_call_fn_130626¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z.trace_0z/trace_1z0trace_2z1trace_3
Õ
2trace_0
3trace_1
4trace_2
5trace_32ê
H__inference_sequential_2_layer_call_and_return_conditional_losses_131124
H__inference_sequential_2_layer_call_and_return_conditional_losses_131515
H__inference_sequential_2_layer_call_and_return_conditional_losses_130647
H__inference_sequential_2_layer_call_and_return_conditional_losses_130668¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z2trace_0z3trace_1z4trace_2z5trace_3
ÌBÉ
!__inference__wrapped_model_128905input_3"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ
6iter

7beta_1

8beta_2
	9decay
:learning_ratemomp$mq%mr&ms'mt(muvvvw$vx%vy&vz'v{(v|"
	optimizer
,
;serving_default"
signature_map
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

<states
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ú
Btrace_0
Ctrace_1
Dtrace_2
Etrace_32ï
$__inference_gru_layer_call_fn_131526
$__inference_gru_layer_call_fn_131537
$__inference_gru_layer_call_fn_131548
$__inference_gru_layer_call_fn_131559Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zBtrace_0zCtrace_1zDtrace_2zEtrace_3
Æ
Ftrace_0
Gtrace_1
Htrace_2
Itrace_32Û
?__inference_gru_layer_call_and_return_conditional_losses_131937
?__inference_gru_layer_call_and_return_conditional_losses_132315
?__inference_gru_layer_call_and_return_conditional_losses_132693
?__inference_gru_layer_call_and_return_conditional_losses_133071Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zFtrace_0zGtrace_1zHtrace_2zItrace_3
"
_generic_user_object
è
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_random_generator

&kernel
'recurrent_kernel
(bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ì
Vtrace_02Ï
(__inference_dense_4_layer_call_fn_133080¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zVtrace_0

Wtrace_02ê
C__inference_dense_4_layer_call_and_return_conditional_losses_133091¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zWtrace_0
 :d 2dense_4/kernel
: 2dense_4/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ì
]trace_02Ï
(__inference_dense_5_layer_call_fn_133100¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z]trace_0

^trace_02ê
C__inference_dense_5_layer_call_and_return_conditional_losses_133110¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z^trace_0
 : 2dense_5/kernel
:2dense_5/bias
&:$	¬2gru/gru_cell/kernel
0:.	d¬2gru/gru_cell/recurrent_kernel
$:"	¬2gru/gru_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÿBü
-__inference_sequential_2_layer_call_fn_130128input_3"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
-__inference_sequential_2_layer_call_fn_130714inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
-__inference_sequential_2_layer_call_fn_130733inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÿBü
-__inference_sequential_2_layer_call_fn_130626input_3"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_131124inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_131515inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_130647input_3"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_130668input_3"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ËBÈ
$__inference_signature_wrapper_130695input_3"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
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
B
$__inference_gru_layer_call_fn_131526inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
$__inference_gru_layer_call_fn_131537inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
$__inference_gru_layer_call_fn_131548inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
$__inference_gru_layer_call_fn_131559inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
§B¤
?__inference_gru_layer_call_and_return_conditional_losses_131937inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
§B¤
?__inference_gru_layer_call_and_return_conditional_losses_132315inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¥B¢
?__inference_gru_layer_call_and_return_conditional_losses_132693inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¥B¢
?__inference_gru_layer_call_and_return_conditional_losses_133071inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
Ã2À½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ã2À½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
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
ÜBÙ
(__inference_dense_4_layer_call_fn_133080inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_dense_4_layer_call_and_return_conditional_losses_133091inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÜBÙ
(__inference_dense_5_layer_call_fn_133100inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_dense_5_layer_call_and_return_conditional_losses_133110inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
N
f	variables
g	keras_api
	htotal
	icount"
_tf_keras_metric
^
j	variables
k	keras_api
	ltotal
	mcount
n
_fn_kwargs"
_tf_keras_metric
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
.
h0
i1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
%:#d 2Adam/dense_4/kernel/m
: 2Adam/dense_4/bias/m
%:# 2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
+:)	¬2Adam/gru/gru_cell/kernel/m
5:3	d¬2$Adam/gru/gru_cell/recurrent_kernel/m
):'	¬2Adam/gru/gru_cell/bias/m
%:#d 2Adam/dense_4/kernel/v
: 2Adam/dense_4/bias/v
%:# 2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
+:)	¬2Adam/gru/gru_cell/kernel/v
5:3	d¬2$Adam/gru/gru_cell/recurrent_kernel/v
):'	¬2Adam/gru/gru_cell/bias/v
!__inference__wrapped_model_128905r&'($%4¢1
*¢'
%"
input_3ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_5!
dense_5ÿÿÿÿÿÿÿÿÿ£
C__inference_dense_4_layer_call_and_return_conditional_losses_133091\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
(__inference_dense_4_layer_call_fn_133080O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ £
C__inference_dense_5_layer_call_and_return_conditional_losses_133110\$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_dense_5_layer_call_fn_133100O$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿÀ
?__inference_gru_layer_call_and_return_conditional_losses_131937}&'(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 À
?__inference_gru_layer_call_and_return_conditional_losses_132315}&'(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 °
?__inference_gru_layer_call_and_return_conditional_losses_132693m&'(?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 °
?__inference_gru_layer_call_and_return_conditional_losses_133071m&'(?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
$__inference_gru_layer_call_fn_131526p&'(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
$__inference_gru_layer_call_fn_131537p&'(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿd
$__inference_gru_layer_call_fn_131548`&'(?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
$__inference_gru_layer_call_fn_131559`&'(?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdº
H__inference_sequential_2_layer_call_and_return_conditional_losses_130647n&'($%<¢9
2¢/
%"
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
H__inference_sequential_2_layer_call_and_return_conditional_losses_130668n&'($%<¢9
2¢/
%"
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
H__inference_sequential_2_layer_call_and_return_conditional_losses_131124m&'($%;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
H__inference_sequential_2_layer_call_and_return_conditional_losses_131515m&'($%;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_2_layer_call_fn_130128a&'($%<¢9
2¢/
%"
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_130626a&'($%<¢9
2¢/
%"
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_130714`&'($%;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_130733`&'($%;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¥
$__inference_signature_wrapper_130695}&'($%?¢<
¢ 
5ª2
0
input_3%"
input_3ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_5!
dense_5ÿÿÿÿÿÿÿÿÿ