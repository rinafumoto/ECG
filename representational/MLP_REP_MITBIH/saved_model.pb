
é
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
­
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
delete_old_dirsbool(
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
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
executor_typestring 
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8óì
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À]*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	À]*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
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
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:@*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:@*
dtype0
{
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_17/kernel
t
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes
:	@*
dtype0
s
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes	
:*
dtype0
|
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_18/kernel
u
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel* 
_output_shapes
:
*
dtype0
s
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
l
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes	
:*
dtype0
|
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_19/kernel
u
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel* 
_output_shapes
:
*
dtype0
s
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
l
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes	
:*
dtype0
{
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_20/kernel
t
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes
:	@*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:@*
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

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À]*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	À]*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0

Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_15/kernel/m

*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0

Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_16/kernel/m

*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m*
_output_shapes

:@*
dtype0

Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_16/bias/m
y
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_17/kernel/m

*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
z
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_18/kernel/m

*Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/m
z
(Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_19/kernel/m

*Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/m
z
(Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_20/kernel/m

*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À]*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	À]*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0

Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_15/kernel/v

*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0

Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_16/kernel/v

*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v*
_output_shapes

:@*
dtype0

Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_16/bias/v
y
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_17/kernel/v

*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
z
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_18/kernel/v

*Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/v
z
(Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_19/kernel/v

*Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/v
z
(Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_20/kernel/v

*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
S
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¾R
value´RB±R BªR
Ì
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
 
ã

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
layer-8
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Ø
iter

beta_1

beta_2
	 decay
!learning_ratemm"m#m$m%m&m'm (m¡)m¢*m£+m¤,m¥-m¦v§v¨"v©#vª$v«%v¬&v­'v®(v¯)v°*v±+v²,v³-v´
f
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
12
13
 
f
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
12
13
­
.non_trainable_variables
trainable_variables
regularization_losses
/metrics

0layers
1layer_metrics
2layer_regularization_losses
	variables
 
%
#3_self_saveable_object_factories


"kernel
#bias
#4_self_saveable_object_factories
5trainable_variables
6regularization_losses
7	variables
8	keras_api


$kernel
%bias
#9_self_saveable_object_factories
:trainable_variables
;regularization_losses
<	variables
=	keras_api


&kernel
'bias
#>_self_saveable_object_factories
?trainable_variables
@regularization_losses
A	variables
B	keras_api


(kernel
)bias
#C_self_saveable_object_factories
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api


*kernel
+bias
#H_self_saveable_object_factories
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
w
#M_self_saveable_object_factories
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api


,kernel
-bias
#R_self_saveable_object_factories
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
w
#W_self_saveable_object_factories
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
V
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
 
V
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
­
\non_trainable_variables
trainable_variables
regularization_losses
]metrics

^layers
_layer_metrics
`layer_regularization_losses
	variables
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
anon_trainable_variables
trainable_variables
regularization_losses
bmetrics

clayers
dlayer_metrics
elayer_regularization_losses
	variables
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
US
VARIABLE_VALUEdense_15/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_15/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_16/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_16/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_17/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_17/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_18/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_18/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_19/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_19/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_20/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_20/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
 

f0
g1

0
1
2
 
 
 
 

"0
#1
 

"0
#1
­
hnon_trainable_variables
5trainable_variables
6regularization_losses
imetrics

jlayers
klayer_metrics
llayer_regularization_losses
7	variables
 

$0
%1
 

$0
%1
­
mnon_trainable_variables
:trainable_variables
;regularization_losses
nmetrics

olayers
player_metrics
qlayer_regularization_losses
<	variables
 

&0
'1
 

&0
'1
­
rnon_trainable_variables
?trainable_variables
@regularization_losses
smetrics

tlayers
ulayer_metrics
vlayer_regularization_losses
A	variables
 

(0
)1
 

(0
)1
­
wnon_trainable_variables
Dtrainable_variables
Eregularization_losses
xmetrics

ylayers
zlayer_metrics
{layer_regularization_losses
F	variables
 

*0
+1
 

*0
+1
®
|non_trainable_variables
Itrainable_variables
Jregularization_losses
}metrics

~layers
layer_metrics
 layer_regularization_losses
K	variables
 
 
 
 
²
non_trainable_variables
Ntrainable_variables
Oregularization_losses
metrics
layers
layer_metrics
 layer_regularization_losses
P	variables
 

,0
-1
 

,0
-1
²
non_trainable_variables
Strainable_variables
Tregularization_losses
metrics
layers
layer_metrics
 layer_regularization_losses
U	variables
 
 
 
 
²
non_trainable_variables
Xtrainable_variables
Yregularization_losses
metrics
layers
layer_metrics
 layer_regularization_losses
Z	variables
 
 
?

0
1
2
3
4
5
6
7
8
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
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

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_15/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_15/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_16/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_16/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_17/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_17/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_18/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_18/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_19/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_19/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_20/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_20/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_15/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_15/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_16/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_16/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_17/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_17/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_18/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_18/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_19/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_19/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_20/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_20/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_7Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿ»
¬
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_7dense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_443765
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp*Adam/dense_18/kernel/m/Read/ReadVariableOp(Adam/dense_18/bias/m/Read/ReadVariableOp*Adam/dense_19/kernel/m/Read/ReadVariableOp(Adam/dense_19/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp*Adam/dense_18/kernel/v/Read/ReadVariableOp(Adam/dense_18/bias/v/Read/ReadVariableOp*Adam/dense_19/kernel/v/Read/ReadVariableOp(Adam/dense_19/bias/v/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
__inference__traced_save_445062


StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biastotalcounttotal_1count_1Adam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/mAdam/dense_17/kernel/mAdam/dense_17/bias/mAdam/dense_18/kernel/mAdam/dense_18/bias/mAdam/dense_19/kernel/mAdam/dense_19/bias/mAdam/dense_20/kernel/mAdam/dense_20/bias/mAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_15/kernel/vAdam/dense_15/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/vAdam/dense_17/kernel/vAdam/dense_17/bias/vAdam/dense_18/kernel/vAdam/dense_18/bias/vAdam/dense_19/kernel/vAdam/dense_19/bias/vAdam/dense_20/kernel/vAdam/dense_20/bias/v*?
Tin8
624*
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
"__inference__traced_restore_445225ÿ
ð	
¶
)__inference_model_15_layer_call_fn_443655
input_7
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_4436242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_7
Í&
²
D__inference_model_14_layer_call_and_return_conditional_losses_443307
input_2
dense_15_443274
dense_15_443276
dense_16_443279
dense_16_443281
dense_17_443284
dense_17_443286
dense_18_443289
dense_18_443291
dense_19_443294
dense_19_443296
dense_20_443300
dense_20_443302
identity¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢ dense_20/StatefulPartitionedCall
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_15_443274dense_15_443276*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4429752"
 dense_15/StatefulPartitionedCall¼
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_443279dense_16_443281*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4430222"
 dense_16/StatefulPartitionedCall½
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_443284dense_17_443286*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4430692"
 dense_17/StatefulPartitionedCall½
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0dense_18_443289dense_18_443291*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_4431162"
 dense_18/StatefulPartitionedCall½
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_443294dense_19_443296*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4431632"
 dense_19/StatefulPartitionedCall
dropout_1/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_4431962
dropout_1/PartitionedCallµ
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_20_443300dense_20_443302*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_4432402"
 dense_20/StatefulPartitionedCallû
flatten_1/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_4432622
flatten_1/PartitionedCallÉ
IdentityIdentity"flatten_1/PartitionedCall:output:0!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_2
Âe
Ü
__inference__traced_save_445062
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÆ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Ø
valueÎBË4B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesð
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*
_input_shapes
: :	À]:: : : : : :::@:@:	@::
::
::	@:@: : : : :	À]::::@:@:	@::
::
::	@:@:	À]::::@:@:	@::
::
::	@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	À]: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 	

_output_shapes
::$
 

_output_shapes

:@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	À]: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::& "
 
_output_shapes
:
:!!

_output_shapes	
::&""
 
_output_shapes
:
:!#

_output_shapes	
::%$!

_output_shapes
:	@: %

_output_shapes
:@:%&!

_output_shapes
:	À]: '

_output_shapes
::$( 

_output_shapes

:: )

_output_shapes
::$* 

_output_shapes

:@: +

_output_shapes
:@:%,!

_output_shapes
:	@:!-

_output_shapes	
::&."
 
_output_shapes
:
:!/

_output_shapes	
::&0"
 
_output_shapes
:
:!1

_output_shapes	
::%2!

_output_shapes
:	@: 3

_output_shapes
:@:4

_output_shapes
: 
³
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_444820

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consty
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeº
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yÄ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout/Mul_1k
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
 
F
*__inference_flatten_1_layer_call_fn_444886

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_4432622
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»@:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@
 
_user_specified_nameinputs

Ì
D__inference_model_15_layer_call_and_return_conditional_losses_443691

inputs
model_14_443660
model_14_443662
model_14_443664
model_14_443666
model_14_443668
model_14_443670
model_14_443672
model_14_443674
model_14_443676
model_14_443678
model_14_443680
model_14_443682
dense_5_443685
dense_5_443687
identity¢dense_5/StatefulPartitionedCall¢ model_14/StatefulPartitionedCallÓ
 model_14/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_14_443660model_14_443662model_14_443664model_14_443666model_14_443668model_14_443670model_14_443672model_14_443674model_14_443676model_14_443678model_14_443680model_14_443682*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_14_layer_call_and_return_conditional_losses_4434112"
 model_14/StatefulPartitionedCall²
dense_5/StatefulPartitionedCallStatefulPartitionedCall)model_14/StatefulPartitionedCall:output:0dense_5_443685dense_5_443687*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4435362!
dense_5/StatefulPartitionedCallÁ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0 ^dense_5/StatefulPartitionedCall!^model_14/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2D
 model_14/StatefulPartitionedCall model_14/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ð	
¶
)__inference_model_15_layer_call_fn_443722
input_7
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_4436912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_7
à
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_443196

inputs

identity_1`
IdentityIdentityinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identityo

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity_1"!

identity_1Identity_1:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
Ê&
±
D__inference_model_14_layer_call_and_return_conditional_losses_443411

inputs
dense_15_443378
dense_15_443380
dense_16_443383
dense_16_443385
dense_17_443388
dense_17_443390
dense_18_443393
dense_18_443395
dense_19_443398
dense_19_443400
dense_20_443404
dense_20_443406
identity¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢ dense_20/StatefulPartitionedCall
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_443378dense_15_443380*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4429752"
 dense_15/StatefulPartitionedCall¼
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_443383dense_16_443385*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4430222"
 dense_16/StatefulPartitionedCall½
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_443388dense_17_443390*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4430692"
 dense_17/StatefulPartitionedCall½
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0dense_18_443393dense_18_443395*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_4431162"
 dense_18/StatefulPartitionedCall½
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_443398dense_19_443400*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4431632"
 dense_19/StatefulPartitionedCall
dropout_1/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_4431962
dropout_1/PartitionedCallµ
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_20_443404dense_20_443406*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_4432402"
 dense_20/StatefulPartitionedCallû
flatten_1/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_4432622
flatten_1/PartitionedCallÉ
IdentityIdentity"flatten_1/PartitionedCall:output:0!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
À 
ã
D__inference_dense_17_layer_call_and_return_conditional_losses_443069

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@
 
_user_specified_nameinputs
ô
~
)__inference_dense_19_layer_call_fn_444808

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4431632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
¸ 
ã
D__inference_dense_16_layer_call_and_return_conditional_losses_444679

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
·
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_443262

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ.  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»@:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@
 
_user_specified_nameinputs
·
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_444881

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ.  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»@:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@
 
_user_specified_nameinputs
Å·

!__inference__wrapped_model_442941
input_7@
<model_15_model_14_dense_15_tensordot_readvariableop_resource>
:model_15_model_14_dense_15_biasadd_readvariableop_resource@
<model_15_model_14_dense_16_tensordot_readvariableop_resource>
:model_15_model_14_dense_16_biasadd_readvariableop_resource@
<model_15_model_14_dense_17_tensordot_readvariableop_resource>
:model_15_model_14_dense_17_biasadd_readvariableop_resource@
<model_15_model_14_dense_18_tensordot_readvariableop_resource>
:model_15_model_14_dense_18_biasadd_readvariableop_resource@
<model_15_model_14_dense_19_tensordot_readvariableop_resource>
:model_15_model_14_dense_19_biasadd_readvariableop_resource@
<model_15_model_14_dense_20_tensordot_readvariableop_resource>
:model_15_model_14_dense_20_biasadd_readvariableop_resource3
/model_15_dense_5_matmul_readvariableop_resource4
0model_15_dense_5_biasadd_readvariableop_resource
identity¢'model_15/dense_5/BiasAdd/ReadVariableOp¢&model_15/dense_5/MatMul/ReadVariableOp¢1model_15/model_14/dense_15/BiasAdd/ReadVariableOp¢3model_15/model_14/dense_15/Tensordot/ReadVariableOp¢1model_15/model_14/dense_16/BiasAdd/ReadVariableOp¢3model_15/model_14/dense_16/Tensordot/ReadVariableOp¢1model_15/model_14/dense_17/BiasAdd/ReadVariableOp¢3model_15/model_14/dense_17/Tensordot/ReadVariableOp¢1model_15/model_14/dense_18/BiasAdd/ReadVariableOp¢3model_15/model_14/dense_18/Tensordot/ReadVariableOp¢1model_15/model_14/dense_19/BiasAdd/ReadVariableOp¢3model_15/model_14/dense_19/Tensordot/ReadVariableOp¢1model_15/model_14/dense_20/BiasAdd/ReadVariableOp¢3model_15/model_14/dense_20/Tensordot/ReadVariableOpç
3model_15/model_14/dense_15/Tensordot/ReadVariableOpReadVariableOp<model_15_model_14_dense_15_tensordot_readvariableop_resource*
_output_shapes

:*
dtype025
3model_15/model_14/dense_15/Tensordot/ReadVariableOp 
)model_15/model_14/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/model_14/dense_15/Tensordot/axes§
)model_15/model_14/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_15/model_14/dense_15/Tensordot/free
*model_15/model_14/dense_15/Tensordot/ShapeShapeinput_7*
T0*
_output_shapes
:2,
*model_15/model_14/dense_15/Tensordot/Shapeª
2model_15/model_14/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_15/Tensordot/GatherV2/axisØ
-model_15/model_14/dense_15/Tensordot/GatherV2GatherV23model_15/model_14/dense_15/Tensordot/Shape:output:02model_15/model_14/dense_15/Tensordot/free:output:0;model_15/model_14/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-model_15/model_14/dense_15/Tensordot/GatherV2®
4model_15/model_14/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4model_15/model_14/dense_15/Tensordot/GatherV2_1/axisÞ
/model_15/model_14/dense_15/Tensordot/GatherV2_1GatherV23model_15/model_14/dense_15/Tensordot/Shape:output:02model_15/model_14/dense_15/Tensordot/axes:output:0=model_15/model_14/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/model_15/model_14/dense_15/Tensordot/GatherV2_1¢
*model_15/model_14/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_15/model_14/dense_15/Tensordot/Constì
)model_15/model_14/dense_15/Tensordot/ProdProd6model_15/model_14/dense_15/Tensordot/GatherV2:output:03model_15/model_14/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)model_15/model_14/dense_15/Tensordot/Prod¦
,model_15/model_14/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,model_15/model_14/dense_15/Tensordot/Const_1ô
+model_15/model_14/dense_15/Tensordot/Prod_1Prod8model_15/model_14/dense_15/Tensordot/GatherV2_1:output:05model_15/model_14/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+model_15/model_14/dense_15/Tensordot/Prod_1¦
0model_15/model_14/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_15/model_14/dense_15/Tensordot/concat/axis·
+model_15/model_14/dense_15/Tensordot/concatConcatV22model_15/model_14/dense_15/Tensordot/free:output:02model_15/model_14/dense_15/Tensordot/axes:output:09model_15/model_14/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+model_15/model_14/dense_15/Tensordot/concatø
*model_15/model_14/dense_15/Tensordot/stackPack2model_15/model_14/dense_15/Tensordot/Prod:output:04model_15/model_14/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*model_15/model_14/dense_15/Tensordot/stackã
.model_15/model_14/dense_15/Tensordot/transpose	Transposeinput_74model_15/model_14/dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»20
.model_15/model_14/dense_15/Tensordot/transpose
,model_15/model_14/dense_15/Tensordot/ReshapeReshape2model_15/model_14/dense_15/Tensordot/transpose:y:03model_15/model_14/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2.
,model_15/model_14/dense_15/Tensordot/Reshape
+model_15/model_14/dense_15/Tensordot/MatMulMatMul5model_15/model_14/dense_15/Tensordot/Reshape:output:0;model_15/model_14/dense_15/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+model_15/model_14/dense_15/Tensordot/MatMul¦
,model_15/model_14/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_15/model_14/dense_15/Tensordot/Const_2ª
2model_15/model_14/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_15/Tensordot/concat_1/axisÄ
-model_15/model_14/dense_15/Tensordot/concat_1ConcatV26model_15/model_14/dense_15/Tensordot/GatherV2:output:05model_15/model_14/dense_15/Tensordot/Const_2:output:0;model_15/model_14/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-model_15/model_14/dense_15/Tensordot/concat_1ý
$model_15/model_14/dense_15/TensordotReshape5model_15/model_14/dense_15/Tensordot/MatMul:product:06model_15/model_14/dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2&
$model_15/model_14/dense_15/TensordotÝ
1model_15/model_14/dense_15/BiasAdd/ReadVariableOpReadVariableOp:model_15_model_14_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1model_15/model_14/dense_15/BiasAdd/ReadVariableOpô
"model_15/model_14/dense_15/BiasAddBiasAdd-model_15/model_14/dense_15/Tensordot:output:09model_15/model_14/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2$
"model_15/model_14/dense_15/BiasAddç
3model_15/model_14/dense_16/Tensordot/ReadVariableOpReadVariableOp<model_15_model_14_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype025
3model_15/model_14/dense_16/Tensordot/ReadVariableOp 
)model_15/model_14/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/model_14/dense_16/Tensordot/axes§
)model_15/model_14/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_15/model_14/dense_16/Tensordot/free³
*model_15/model_14/dense_16/Tensordot/ShapeShape+model_15/model_14/dense_15/BiasAdd:output:0*
T0*
_output_shapes
:2,
*model_15/model_14/dense_16/Tensordot/Shapeª
2model_15/model_14/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_16/Tensordot/GatherV2/axisØ
-model_15/model_14/dense_16/Tensordot/GatherV2GatherV23model_15/model_14/dense_16/Tensordot/Shape:output:02model_15/model_14/dense_16/Tensordot/free:output:0;model_15/model_14/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-model_15/model_14/dense_16/Tensordot/GatherV2®
4model_15/model_14/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4model_15/model_14/dense_16/Tensordot/GatherV2_1/axisÞ
/model_15/model_14/dense_16/Tensordot/GatherV2_1GatherV23model_15/model_14/dense_16/Tensordot/Shape:output:02model_15/model_14/dense_16/Tensordot/axes:output:0=model_15/model_14/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/model_15/model_14/dense_16/Tensordot/GatherV2_1¢
*model_15/model_14/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_15/model_14/dense_16/Tensordot/Constì
)model_15/model_14/dense_16/Tensordot/ProdProd6model_15/model_14/dense_16/Tensordot/GatherV2:output:03model_15/model_14/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)model_15/model_14/dense_16/Tensordot/Prod¦
,model_15/model_14/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,model_15/model_14/dense_16/Tensordot/Const_1ô
+model_15/model_14/dense_16/Tensordot/Prod_1Prod8model_15/model_14/dense_16/Tensordot/GatherV2_1:output:05model_15/model_14/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+model_15/model_14/dense_16/Tensordot/Prod_1¦
0model_15/model_14/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_15/model_14/dense_16/Tensordot/concat/axis·
+model_15/model_14/dense_16/Tensordot/concatConcatV22model_15/model_14/dense_16/Tensordot/free:output:02model_15/model_14/dense_16/Tensordot/axes:output:09model_15/model_14/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+model_15/model_14/dense_16/Tensordot/concatø
*model_15/model_14/dense_16/Tensordot/stackPack2model_15/model_14/dense_16/Tensordot/Prod:output:04model_15/model_14/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*model_15/model_14/dense_16/Tensordot/stack
.model_15/model_14/dense_16/Tensordot/transpose	Transpose+model_15/model_14/dense_15/BiasAdd:output:04model_15/model_14/dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»20
.model_15/model_14/dense_16/Tensordot/transpose
,model_15/model_14/dense_16/Tensordot/ReshapeReshape2model_15/model_14/dense_16/Tensordot/transpose:y:03model_15/model_14/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2.
,model_15/model_14/dense_16/Tensordot/Reshape
+model_15/model_14/dense_16/Tensordot/MatMulMatMul5model_15/model_14/dense_16/Tensordot/Reshape:output:0;model_15/model_14/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+model_15/model_14/dense_16/Tensordot/MatMul¦
,model_15/model_14/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2.
,model_15/model_14/dense_16/Tensordot/Const_2ª
2model_15/model_14/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_16/Tensordot/concat_1/axisÄ
-model_15/model_14/dense_16/Tensordot/concat_1ConcatV26model_15/model_14/dense_16/Tensordot/GatherV2:output:05model_15/model_14/dense_16/Tensordot/Const_2:output:0;model_15/model_14/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-model_15/model_14/dense_16/Tensordot/concat_1ý
$model_15/model_14/dense_16/TensordotReshape5model_15/model_14/dense_16/Tensordot/MatMul:product:06model_15/model_14/dense_16/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2&
$model_15/model_14/dense_16/TensordotÝ
1model_15/model_14/dense_16/BiasAdd/ReadVariableOpReadVariableOp:model_15_model_14_dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1model_15/model_14/dense_16/BiasAdd/ReadVariableOpô
"model_15/model_14/dense_16/BiasAddBiasAdd-model_15/model_14/dense_16/Tensordot:output:09model_15/model_14/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2$
"model_15/model_14/dense_16/BiasAdd®
model_15/model_14/dense_16/ReluRelu+model_15/model_14/dense_16/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2!
model_15/model_14/dense_16/Reluè
3model_15/model_14/dense_17/Tensordot/ReadVariableOpReadVariableOp<model_15_model_14_dense_17_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype025
3model_15/model_14/dense_17/Tensordot/ReadVariableOp 
)model_15/model_14/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/model_14/dense_17/Tensordot/axes§
)model_15/model_14/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_15/model_14/dense_17/Tensordot/freeµ
*model_15/model_14/dense_17/Tensordot/ShapeShape-model_15/model_14/dense_16/Relu:activations:0*
T0*
_output_shapes
:2,
*model_15/model_14/dense_17/Tensordot/Shapeª
2model_15/model_14/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_17/Tensordot/GatherV2/axisØ
-model_15/model_14/dense_17/Tensordot/GatherV2GatherV23model_15/model_14/dense_17/Tensordot/Shape:output:02model_15/model_14/dense_17/Tensordot/free:output:0;model_15/model_14/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-model_15/model_14/dense_17/Tensordot/GatherV2®
4model_15/model_14/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4model_15/model_14/dense_17/Tensordot/GatherV2_1/axisÞ
/model_15/model_14/dense_17/Tensordot/GatherV2_1GatherV23model_15/model_14/dense_17/Tensordot/Shape:output:02model_15/model_14/dense_17/Tensordot/axes:output:0=model_15/model_14/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/model_15/model_14/dense_17/Tensordot/GatherV2_1¢
*model_15/model_14/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_15/model_14/dense_17/Tensordot/Constì
)model_15/model_14/dense_17/Tensordot/ProdProd6model_15/model_14/dense_17/Tensordot/GatherV2:output:03model_15/model_14/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)model_15/model_14/dense_17/Tensordot/Prod¦
,model_15/model_14/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,model_15/model_14/dense_17/Tensordot/Const_1ô
+model_15/model_14/dense_17/Tensordot/Prod_1Prod8model_15/model_14/dense_17/Tensordot/GatherV2_1:output:05model_15/model_14/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+model_15/model_14/dense_17/Tensordot/Prod_1¦
0model_15/model_14/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_15/model_14/dense_17/Tensordot/concat/axis·
+model_15/model_14/dense_17/Tensordot/concatConcatV22model_15/model_14/dense_17/Tensordot/free:output:02model_15/model_14/dense_17/Tensordot/axes:output:09model_15/model_14/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+model_15/model_14/dense_17/Tensordot/concatø
*model_15/model_14/dense_17/Tensordot/stackPack2model_15/model_14/dense_17/Tensordot/Prod:output:04model_15/model_14/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*model_15/model_14/dense_17/Tensordot/stack
.model_15/model_14/dense_17/Tensordot/transpose	Transpose-model_15/model_14/dense_16/Relu:activations:04model_15/model_14/dense_17/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@20
.model_15/model_14/dense_17/Tensordot/transpose
,model_15/model_14/dense_17/Tensordot/ReshapeReshape2model_15/model_14/dense_17/Tensordot/transpose:y:03model_15/model_14/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2.
,model_15/model_14/dense_17/Tensordot/Reshape
+model_15/model_14/dense_17/Tensordot/MatMulMatMul5model_15/model_14/dense_17/Tensordot/Reshape:output:0;model_15/model_14/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+model_15/model_14/dense_17/Tensordot/MatMul§
,model_15/model_14/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_15/model_14/dense_17/Tensordot/Const_2ª
2model_15/model_14/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_17/Tensordot/concat_1/axisÄ
-model_15/model_14/dense_17/Tensordot/concat_1ConcatV26model_15/model_14/dense_17/Tensordot/GatherV2:output:05model_15/model_14/dense_17/Tensordot/Const_2:output:0;model_15/model_14/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-model_15/model_14/dense_17/Tensordot/concat_1þ
$model_15/model_14/dense_17/TensordotReshape5model_15/model_14/dense_17/Tensordot/MatMul:product:06model_15/model_14/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2&
$model_15/model_14/dense_17/TensordotÞ
1model_15/model_14/dense_17/BiasAdd/ReadVariableOpReadVariableOp:model_15_model_14_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype023
1model_15/model_14/dense_17/BiasAdd/ReadVariableOpõ
"model_15/model_14/dense_17/BiasAddBiasAdd-model_15/model_14/dense_17/Tensordot:output:09model_15/model_14/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2$
"model_15/model_14/dense_17/BiasAdd¯
model_15/model_14/dense_17/ReluRelu+model_15/model_14/dense_17/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2!
model_15/model_14/dense_17/Relué
3model_15/model_14/dense_18/Tensordot/ReadVariableOpReadVariableOp<model_15_model_14_dense_18_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype025
3model_15/model_14/dense_18/Tensordot/ReadVariableOp 
)model_15/model_14/dense_18/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/model_14/dense_18/Tensordot/axes§
)model_15/model_14/dense_18/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_15/model_14/dense_18/Tensordot/freeµ
*model_15/model_14/dense_18/Tensordot/ShapeShape-model_15/model_14/dense_17/Relu:activations:0*
T0*
_output_shapes
:2,
*model_15/model_14/dense_18/Tensordot/Shapeª
2model_15/model_14/dense_18/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_18/Tensordot/GatherV2/axisØ
-model_15/model_14/dense_18/Tensordot/GatherV2GatherV23model_15/model_14/dense_18/Tensordot/Shape:output:02model_15/model_14/dense_18/Tensordot/free:output:0;model_15/model_14/dense_18/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-model_15/model_14/dense_18/Tensordot/GatherV2®
4model_15/model_14/dense_18/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4model_15/model_14/dense_18/Tensordot/GatherV2_1/axisÞ
/model_15/model_14/dense_18/Tensordot/GatherV2_1GatherV23model_15/model_14/dense_18/Tensordot/Shape:output:02model_15/model_14/dense_18/Tensordot/axes:output:0=model_15/model_14/dense_18/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/model_15/model_14/dense_18/Tensordot/GatherV2_1¢
*model_15/model_14/dense_18/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_15/model_14/dense_18/Tensordot/Constì
)model_15/model_14/dense_18/Tensordot/ProdProd6model_15/model_14/dense_18/Tensordot/GatherV2:output:03model_15/model_14/dense_18/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)model_15/model_14/dense_18/Tensordot/Prod¦
,model_15/model_14/dense_18/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,model_15/model_14/dense_18/Tensordot/Const_1ô
+model_15/model_14/dense_18/Tensordot/Prod_1Prod8model_15/model_14/dense_18/Tensordot/GatherV2_1:output:05model_15/model_14/dense_18/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+model_15/model_14/dense_18/Tensordot/Prod_1¦
0model_15/model_14/dense_18/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_15/model_14/dense_18/Tensordot/concat/axis·
+model_15/model_14/dense_18/Tensordot/concatConcatV22model_15/model_14/dense_18/Tensordot/free:output:02model_15/model_14/dense_18/Tensordot/axes:output:09model_15/model_14/dense_18/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+model_15/model_14/dense_18/Tensordot/concatø
*model_15/model_14/dense_18/Tensordot/stackPack2model_15/model_14/dense_18/Tensordot/Prod:output:04model_15/model_14/dense_18/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*model_15/model_14/dense_18/Tensordot/stack
.model_15/model_14/dense_18/Tensordot/transpose	Transpose-model_15/model_14/dense_17/Relu:activations:04model_15/model_14/dense_18/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»20
.model_15/model_14/dense_18/Tensordot/transpose
,model_15/model_14/dense_18/Tensordot/ReshapeReshape2model_15/model_14/dense_18/Tensordot/transpose:y:03model_15/model_14/dense_18/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2.
,model_15/model_14/dense_18/Tensordot/Reshape
+model_15/model_14/dense_18/Tensordot/MatMulMatMul5model_15/model_14/dense_18/Tensordot/Reshape:output:0;model_15/model_14/dense_18/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+model_15/model_14/dense_18/Tensordot/MatMul§
,model_15/model_14/dense_18/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_15/model_14/dense_18/Tensordot/Const_2ª
2model_15/model_14/dense_18/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_18/Tensordot/concat_1/axisÄ
-model_15/model_14/dense_18/Tensordot/concat_1ConcatV26model_15/model_14/dense_18/Tensordot/GatherV2:output:05model_15/model_14/dense_18/Tensordot/Const_2:output:0;model_15/model_14/dense_18/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-model_15/model_14/dense_18/Tensordot/concat_1þ
$model_15/model_14/dense_18/TensordotReshape5model_15/model_14/dense_18/Tensordot/MatMul:product:06model_15/model_14/dense_18/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2&
$model_15/model_14/dense_18/TensordotÞ
1model_15/model_14/dense_18/BiasAdd/ReadVariableOpReadVariableOp:model_15_model_14_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype023
1model_15/model_14/dense_18/BiasAdd/ReadVariableOpõ
"model_15/model_14/dense_18/BiasAddBiasAdd-model_15/model_14/dense_18/Tensordot:output:09model_15/model_14/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2$
"model_15/model_14/dense_18/BiasAdd¯
model_15/model_14/dense_18/ReluRelu+model_15/model_14/dense_18/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2!
model_15/model_14/dense_18/Relué
3model_15/model_14/dense_19/Tensordot/ReadVariableOpReadVariableOp<model_15_model_14_dense_19_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype025
3model_15/model_14/dense_19/Tensordot/ReadVariableOp 
)model_15/model_14/dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/model_14/dense_19/Tensordot/axes§
)model_15/model_14/dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_15/model_14/dense_19/Tensordot/freeµ
*model_15/model_14/dense_19/Tensordot/ShapeShape-model_15/model_14/dense_18/Relu:activations:0*
T0*
_output_shapes
:2,
*model_15/model_14/dense_19/Tensordot/Shapeª
2model_15/model_14/dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_19/Tensordot/GatherV2/axisØ
-model_15/model_14/dense_19/Tensordot/GatherV2GatherV23model_15/model_14/dense_19/Tensordot/Shape:output:02model_15/model_14/dense_19/Tensordot/free:output:0;model_15/model_14/dense_19/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-model_15/model_14/dense_19/Tensordot/GatherV2®
4model_15/model_14/dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4model_15/model_14/dense_19/Tensordot/GatherV2_1/axisÞ
/model_15/model_14/dense_19/Tensordot/GatherV2_1GatherV23model_15/model_14/dense_19/Tensordot/Shape:output:02model_15/model_14/dense_19/Tensordot/axes:output:0=model_15/model_14/dense_19/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/model_15/model_14/dense_19/Tensordot/GatherV2_1¢
*model_15/model_14/dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_15/model_14/dense_19/Tensordot/Constì
)model_15/model_14/dense_19/Tensordot/ProdProd6model_15/model_14/dense_19/Tensordot/GatherV2:output:03model_15/model_14/dense_19/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)model_15/model_14/dense_19/Tensordot/Prod¦
,model_15/model_14/dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,model_15/model_14/dense_19/Tensordot/Const_1ô
+model_15/model_14/dense_19/Tensordot/Prod_1Prod8model_15/model_14/dense_19/Tensordot/GatherV2_1:output:05model_15/model_14/dense_19/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+model_15/model_14/dense_19/Tensordot/Prod_1¦
0model_15/model_14/dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_15/model_14/dense_19/Tensordot/concat/axis·
+model_15/model_14/dense_19/Tensordot/concatConcatV22model_15/model_14/dense_19/Tensordot/free:output:02model_15/model_14/dense_19/Tensordot/axes:output:09model_15/model_14/dense_19/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+model_15/model_14/dense_19/Tensordot/concatø
*model_15/model_14/dense_19/Tensordot/stackPack2model_15/model_14/dense_19/Tensordot/Prod:output:04model_15/model_14/dense_19/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*model_15/model_14/dense_19/Tensordot/stack
.model_15/model_14/dense_19/Tensordot/transpose	Transpose-model_15/model_14/dense_18/Relu:activations:04model_15/model_14/dense_19/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»20
.model_15/model_14/dense_19/Tensordot/transpose
,model_15/model_14/dense_19/Tensordot/ReshapeReshape2model_15/model_14/dense_19/Tensordot/transpose:y:03model_15/model_14/dense_19/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2.
,model_15/model_14/dense_19/Tensordot/Reshape
+model_15/model_14/dense_19/Tensordot/MatMulMatMul5model_15/model_14/dense_19/Tensordot/Reshape:output:0;model_15/model_14/dense_19/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+model_15/model_14/dense_19/Tensordot/MatMul§
,model_15/model_14/dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_15/model_14/dense_19/Tensordot/Const_2ª
2model_15/model_14/dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_19/Tensordot/concat_1/axisÄ
-model_15/model_14/dense_19/Tensordot/concat_1ConcatV26model_15/model_14/dense_19/Tensordot/GatherV2:output:05model_15/model_14/dense_19/Tensordot/Const_2:output:0;model_15/model_14/dense_19/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-model_15/model_14/dense_19/Tensordot/concat_1þ
$model_15/model_14/dense_19/TensordotReshape5model_15/model_14/dense_19/Tensordot/MatMul:product:06model_15/model_14/dense_19/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2&
$model_15/model_14/dense_19/TensordotÞ
1model_15/model_14/dense_19/BiasAdd/ReadVariableOpReadVariableOp:model_15_model_14_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype023
1model_15/model_14/dense_19/BiasAdd/ReadVariableOpõ
"model_15/model_14/dense_19/BiasAddBiasAdd-model_15/model_14/dense_19/Tensordot:output:09model_15/model_14/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2$
"model_15/model_14/dense_19/BiasAdd¯
model_15/model_14/dense_19/ReluRelu+model_15/model_14/dense_19/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2!
model_15/model_14/dense_19/Relu¿
$model_15/model_14/dropout_1/IdentityIdentity-model_15/model_14/dense_19/Relu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2&
$model_15/model_14/dropout_1/Identityè
3model_15/model_14/dense_20/Tensordot/ReadVariableOpReadVariableOp<model_15_model_14_dense_20_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype025
3model_15/model_14/dense_20/Tensordot/ReadVariableOp 
)model_15/model_14/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/model_14/dense_20/Tensordot/axes§
)model_15/model_14/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_15/model_14/dense_20/Tensordot/freeµ
*model_15/model_14/dense_20/Tensordot/ShapeShape-model_15/model_14/dropout_1/Identity:output:0*
T0*
_output_shapes
:2,
*model_15/model_14/dense_20/Tensordot/Shapeª
2model_15/model_14/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_20/Tensordot/GatherV2/axisØ
-model_15/model_14/dense_20/Tensordot/GatherV2GatherV23model_15/model_14/dense_20/Tensordot/Shape:output:02model_15/model_14/dense_20/Tensordot/free:output:0;model_15/model_14/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-model_15/model_14/dense_20/Tensordot/GatherV2®
4model_15/model_14/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4model_15/model_14/dense_20/Tensordot/GatherV2_1/axisÞ
/model_15/model_14/dense_20/Tensordot/GatherV2_1GatherV23model_15/model_14/dense_20/Tensordot/Shape:output:02model_15/model_14/dense_20/Tensordot/axes:output:0=model_15/model_14/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/model_15/model_14/dense_20/Tensordot/GatherV2_1¢
*model_15/model_14/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_15/model_14/dense_20/Tensordot/Constì
)model_15/model_14/dense_20/Tensordot/ProdProd6model_15/model_14/dense_20/Tensordot/GatherV2:output:03model_15/model_14/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)model_15/model_14/dense_20/Tensordot/Prod¦
,model_15/model_14/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,model_15/model_14/dense_20/Tensordot/Const_1ô
+model_15/model_14/dense_20/Tensordot/Prod_1Prod8model_15/model_14/dense_20/Tensordot/GatherV2_1:output:05model_15/model_14/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+model_15/model_14/dense_20/Tensordot/Prod_1¦
0model_15/model_14/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0model_15/model_14/dense_20/Tensordot/concat/axis·
+model_15/model_14/dense_20/Tensordot/concatConcatV22model_15/model_14/dense_20/Tensordot/free:output:02model_15/model_14/dense_20/Tensordot/axes:output:09model_15/model_14/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+model_15/model_14/dense_20/Tensordot/concatø
*model_15/model_14/dense_20/Tensordot/stackPack2model_15/model_14/dense_20/Tensordot/Prod:output:04model_15/model_14/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*model_15/model_14/dense_20/Tensordot/stack
.model_15/model_14/dense_20/Tensordot/transpose	Transpose-model_15/model_14/dropout_1/Identity:output:04model_15/model_14/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»20
.model_15/model_14/dense_20/Tensordot/transpose
,model_15/model_14/dense_20/Tensordot/ReshapeReshape2model_15/model_14/dense_20/Tensordot/transpose:y:03model_15/model_14/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2.
,model_15/model_14/dense_20/Tensordot/Reshape
+model_15/model_14/dense_20/Tensordot/MatMulMatMul5model_15/model_14/dense_20/Tensordot/Reshape:output:0;model_15/model_14/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+model_15/model_14/dense_20/Tensordot/MatMul¦
,model_15/model_14/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2.
,model_15/model_14/dense_20/Tensordot/Const_2ª
2model_15/model_14/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_15/model_14/dense_20/Tensordot/concat_1/axisÄ
-model_15/model_14/dense_20/Tensordot/concat_1ConcatV26model_15/model_14/dense_20/Tensordot/GatherV2:output:05model_15/model_14/dense_20/Tensordot/Const_2:output:0;model_15/model_14/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-model_15/model_14/dense_20/Tensordot/concat_1ý
$model_15/model_14/dense_20/TensordotReshape5model_15/model_14/dense_20/Tensordot/MatMul:product:06model_15/model_14/dense_20/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2&
$model_15/model_14/dense_20/TensordotÝ
1model_15/model_14/dense_20/BiasAdd/ReadVariableOpReadVariableOp:model_15_model_14_dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1model_15/model_14/dense_20/BiasAdd/ReadVariableOpô
"model_15/model_14/dense_20/BiasAddBiasAdd-model_15/model_14/dense_20/Tensordot:output:09model_15/model_14/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2$
"model_15/model_14/dense_20/BiasAdd®
model_15/model_14/dense_20/ReluRelu+model_15/model_14/dense_20/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2!
model_15/model_14/dense_20/Relu
!model_15/model_14/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ.  2#
!model_15/model_14/flatten_1/Constã
#model_15/model_14/flatten_1/ReshapeReshape-model_15/model_14/dense_20/Relu:activations:0*model_15/model_14/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2%
#model_15/model_14/flatten_1/ReshapeÁ
&model_15/dense_5/MatMul/ReadVariableOpReadVariableOp/model_15_dense_5_matmul_readvariableop_resource*
_output_shapes
:	À]*
dtype02(
&model_15/dense_5/MatMul/ReadVariableOpÌ
model_15/dense_5/MatMulMatMul,model_15/model_14/flatten_1/Reshape:output:0.model_15/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_15/dense_5/MatMul¿
'model_15/dense_5/BiasAdd/ReadVariableOpReadVariableOp0model_15_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_15/dense_5/BiasAdd/ReadVariableOpÅ
model_15/dense_5/BiasAddBiasAdd!model_15/dense_5/MatMul:product:0/model_15/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_15/dense_5/BiasAdd
model_15/dense_5/SoftmaxSoftmax!model_15/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_15/dense_5/SoftmaxÅ
IdentityIdentity"model_15/dense_5/Softmax:softmax:0(^model_15/dense_5/BiasAdd/ReadVariableOp'^model_15/dense_5/MatMul/ReadVariableOp2^model_15/model_14/dense_15/BiasAdd/ReadVariableOp4^model_15/model_14/dense_15/Tensordot/ReadVariableOp2^model_15/model_14/dense_16/BiasAdd/ReadVariableOp4^model_15/model_14/dense_16/Tensordot/ReadVariableOp2^model_15/model_14/dense_17/BiasAdd/ReadVariableOp4^model_15/model_14/dense_17/Tensordot/ReadVariableOp2^model_15/model_14/dense_18/BiasAdd/ReadVariableOp4^model_15/model_14/dense_18/Tensordot/ReadVariableOp2^model_15/model_14/dense_19/BiasAdd/ReadVariableOp4^model_15/model_14/dense_19/Tensordot/ReadVariableOp2^model_15/model_14/dense_20/BiasAdd/ReadVariableOp4^model_15/model_14/dense_20/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::2R
'model_15/dense_5/BiasAdd/ReadVariableOp'model_15/dense_5/BiasAdd/ReadVariableOp2P
&model_15/dense_5/MatMul/ReadVariableOp&model_15/dense_5/MatMul/ReadVariableOp2f
1model_15/model_14/dense_15/BiasAdd/ReadVariableOp1model_15/model_14/dense_15/BiasAdd/ReadVariableOp2j
3model_15/model_14/dense_15/Tensordot/ReadVariableOp3model_15/model_14/dense_15/Tensordot/ReadVariableOp2f
1model_15/model_14/dense_16/BiasAdd/ReadVariableOp1model_15/model_14/dense_16/BiasAdd/ReadVariableOp2j
3model_15/model_14/dense_16/Tensordot/ReadVariableOp3model_15/model_14/dense_16/Tensordot/ReadVariableOp2f
1model_15/model_14/dense_17/BiasAdd/ReadVariableOp1model_15/model_14/dense_17/BiasAdd/ReadVariableOp2j
3model_15/model_14/dense_17/Tensordot/ReadVariableOp3model_15/model_14/dense_17/Tensordot/ReadVariableOp2f
1model_15/model_14/dense_18/BiasAdd/ReadVariableOp1model_15/model_14/dense_18/BiasAdd/ReadVariableOp2j
3model_15/model_14/dense_18/Tensordot/ReadVariableOp3model_15/model_14/dense_18/Tensordot/ReadVariableOp2f
1model_15/model_14/dense_19/BiasAdd/ReadVariableOp1model_15/model_14/dense_19/BiasAdd/ReadVariableOp2j
3model_15/model_14/dense_19/Tensordot/ReadVariableOp3model_15/model_14/dense_19/Tensordot/ReadVariableOp2f
1model_15/model_14/dense_20/BiasAdd/ReadVariableOp1model_15/model_14/dense_20/BiasAdd/ReadVariableOp2j
3model_15/model_14/dense_20/Tensordot/ReadVariableOp3model_15/model_14/dense_20/Tensordot/ReadVariableOp:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_7
ý'
Ö
D__inference_model_14_layer_call_and_return_conditional_losses_443271
input_2
dense_15_442986
dense_15_442988
dense_16_443033
dense_16_443035
dense_17_443080
dense_17_443082
dense_18_443127
dense_18_443129
dense_19_443174
dense_19_443176
dense_20_443251
dense_20_443253
identity¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢ dense_20/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_15_442986dense_15_442988*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4429752"
 dense_15/StatefulPartitionedCall¼
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_443033dense_16_443035*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4430222"
 dense_16/StatefulPartitionedCall½
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_443080dense_17_443082*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4430692"
 dense_17/StatefulPartitionedCall½
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0dense_18_443127dense_18_443129*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_4431162"
 dense_18/StatefulPartitionedCall½
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_443174dense_19_443176*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4431632"
 dense_19/StatefulPartitionedCall
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_4431912#
!dropout_1/StatefulPartitionedCall½
 dense_20/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_20_443251dense_20_443253*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_4432402"
 dense_20/StatefulPartitionedCallû
flatten_1/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_4432622
flatten_1/PartitionedCallí
IdentityIdentity"flatten_1/PartitionedCall:output:0!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_2
ÖÔ

"__inference__traced_restore_445225
file_prefix#
assignvariableop_dense_5_kernel#
assignvariableop_1_dense_5_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate&
"assignvariableop_7_dense_15_kernel$
 assignvariableop_8_dense_15_bias&
"assignvariableop_9_dense_16_kernel%
!assignvariableop_10_dense_16_bias'
#assignvariableop_11_dense_17_kernel%
!assignvariableop_12_dense_17_bias'
#assignvariableop_13_dense_18_kernel%
!assignvariableop_14_dense_18_bias'
#assignvariableop_15_dense_19_kernel%
!assignvariableop_16_dense_19_bias'
#assignvariableop_17_dense_20_kernel%
!assignvariableop_18_dense_20_bias
assignvariableop_19_total
assignvariableop_20_count
assignvariableop_21_total_1
assignvariableop_22_count_1-
)assignvariableop_23_adam_dense_5_kernel_m+
'assignvariableop_24_adam_dense_5_bias_m.
*assignvariableop_25_adam_dense_15_kernel_m,
(assignvariableop_26_adam_dense_15_bias_m.
*assignvariableop_27_adam_dense_16_kernel_m,
(assignvariableop_28_adam_dense_16_bias_m.
*assignvariableop_29_adam_dense_17_kernel_m,
(assignvariableop_30_adam_dense_17_bias_m.
*assignvariableop_31_adam_dense_18_kernel_m,
(assignvariableop_32_adam_dense_18_bias_m.
*assignvariableop_33_adam_dense_19_kernel_m,
(assignvariableop_34_adam_dense_19_bias_m.
*assignvariableop_35_adam_dense_20_kernel_m,
(assignvariableop_36_adam_dense_20_bias_m-
)assignvariableop_37_adam_dense_5_kernel_v+
'assignvariableop_38_adam_dense_5_bias_v.
*assignvariableop_39_adam_dense_15_kernel_v,
(assignvariableop_40_adam_dense_15_bias_v.
*assignvariableop_41_adam_dense_16_kernel_v,
(assignvariableop_42_adam_dense_16_bias_v.
*assignvariableop_43_adam_dense_17_kernel_v,
(assignvariableop_44_adam_dense_17_bias_v.
*assignvariableop_45_adam_dense_18_kernel_v,
(assignvariableop_46_adam_dense_18_bias_v.
*assignvariableop_47_adam_dense_19_kernel_v,
(assignvariableop_48_adam_dense_19_bias_v.
*assignvariableop_49_adam_dense_20_kernel_v,
(assignvariableop_50_adam_dense_20_bias_v
identity_52¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ì
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Ø
valueÎBË4B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesö
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices²
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*æ
_output_shapesÓ
Ð::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¤
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2¡
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¢
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ª
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7§
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_15_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¥
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_15_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9§
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_16_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10©
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_16_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11«
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_17_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12©
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense_17_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13«
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_18_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14©
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_18_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15«
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_19_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16©
AssignVariableOp_16AssignVariableOp!assignvariableop_16_dense_19_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17«
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_20_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18©
AssignVariableOp_18AssignVariableOp!assignvariableop_18_dense_20_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¡
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¡
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21£
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22£
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23±
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_5_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¯
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_5_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_15_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_15_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_16_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_16_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_17_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_17_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31²
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_18_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_18_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_19_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_19_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_20_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_20_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37±
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_5_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38¯
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_5_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_15_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_15_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41²
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_16_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42°
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_16_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43²
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_17_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44°
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_17_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45²
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_18_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46°
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_18_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47²
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_19_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48°
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_19_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49²
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_20_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50°
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_20_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÀ	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51³	
Identity_52IdentityIdentity_51:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_52"#
identity_52Identity_52:output:0*ã
_input_shapesÑ
Î: :::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¸ 
ã
D__inference_dense_16_layer_call_and_return_conditional_losses_443022

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
Ú
­
D__inference_model_15_layer_call_and_return_conditional_losses_444122

inputs7
3model_14_dense_15_tensordot_readvariableop_resource5
1model_14_dense_15_biasadd_readvariableop_resource7
3model_14_dense_16_tensordot_readvariableop_resource5
1model_14_dense_16_biasadd_readvariableop_resource7
3model_14_dense_17_tensordot_readvariableop_resource5
1model_14_dense_17_biasadd_readvariableop_resource7
3model_14_dense_18_tensordot_readvariableop_resource5
1model_14_dense_18_biasadd_readvariableop_resource7
3model_14_dense_19_tensordot_readvariableop_resource5
1model_14_dense_19_biasadd_readvariableop_resource7
3model_14_dense_20_tensordot_readvariableop_resource5
1model_14_dense_20_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource
identity¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢(model_14/dense_15/BiasAdd/ReadVariableOp¢*model_14/dense_15/Tensordot/ReadVariableOp¢(model_14/dense_16/BiasAdd/ReadVariableOp¢*model_14/dense_16/Tensordot/ReadVariableOp¢(model_14/dense_17/BiasAdd/ReadVariableOp¢*model_14/dense_17/Tensordot/ReadVariableOp¢(model_14/dense_18/BiasAdd/ReadVariableOp¢*model_14/dense_18/Tensordot/ReadVariableOp¢(model_14/dense_19/BiasAdd/ReadVariableOp¢*model_14/dense_19/Tensordot/ReadVariableOp¢(model_14/dense_20/BiasAdd/ReadVariableOp¢*model_14/dense_20/Tensordot/ReadVariableOpÌ
*model_14/dense_15/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_15_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02,
*model_14/dense_15/Tensordot/ReadVariableOp
 model_14/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_15/Tensordot/axes
 model_14/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_15/Tensordot/free|
!model_14/dense_15/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2#
!model_14/dense_15/Tensordot/Shape
)model_14/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_15/Tensordot/GatherV2/axis«
$model_14/dense_15/Tensordot/GatherV2GatherV2*model_14/dense_15/Tensordot/Shape:output:0)model_14/dense_15/Tensordot/free:output:02model_14/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_15/Tensordot/GatherV2
+model_14/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_15/Tensordot/GatherV2_1/axis±
&model_14/dense_15/Tensordot/GatherV2_1GatherV2*model_14/dense_15/Tensordot/Shape:output:0)model_14/dense_15/Tensordot/axes:output:04model_14/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_15/Tensordot/GatherV2_1
!model_14/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_15/Tensordot/ConstÈ
 model_14/dense_15/Tensordot/ProdProd-model_14/dense_15/Tensordot/GatherV2:output:0*model_14/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_15/Tensordot/Prod
#model_14/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_15/Tensordot/Const_1Ð
"model_14/dense_15/Tensordot/Prod_1Prod/model_14/dense_15/Tensordot/GatherV2_1:output:0,model_14/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_15/Tensordot/Prod_1
'model_14/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_15/Tensordot/concat/axis
"model_14/dense_15/Tensordot/concatConcatV2)model_14/dense_15/Tensordot/free:output:0)model_14/dense_15/Tensordot/axes:output:00model_14/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_15/Tensordot/concatÔ
!model_14/dense_15/Tensordot/stackPack)model_14/dense_15/Tensordot/Prod:output:0+model_14/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_15/Tensordot/stackÇ
%model_14/dense_15/Tensordot/transpose	Transposeinputs+model_14/dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_15/Tensordot/transposeç
#model_14/dense_15/Tensordot/ReshapeReshape)model_14/dense_15/Tensordot/transpose:y:0*model_14/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_15/Tensordot/Reshapeæ
"model_14/dense_15/Tensordot/MatMulMatMul,model_14/dense_15/Tensordot/Reshape:output:02model_14/dense_15/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model_14/dense_15/Tensordot/MatMul
#model_14/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_14/dense_15/Tensordot/Const_2
)model_14/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_15/Tensordot/concat_1/axis
$model_14/dense_15/Tensordot/concat_1ConcatV2-model_14/dense_15/Tensordot/GatherV2:output:0,model_14/dense_15/Tensordot/Const_2:output:02model_14/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_15/Tensordot/concat_1Ù
model_14/dense_15/TensordotReshape,model_14/dense_15/Tensordot/MatMul:product:0-model_14/dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_15/TensordotÂ
(model_14/dense_15/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_14/dense_15/BiasAdd/ReadVariableOpÐ
model_14/dense_15/BiasAddBiasAdd$model_14/dense_15/Tensordot:output:00model_14/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_15/BiasAddÌ
*model_14/dense_16/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02,
*model_14/dense_16/Tensordot/ReadVariableOp
 model_14/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_16/Tensordot/axes
 model_14/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_16/Tensordot/free
!model_14/dense_16/Tensordot/ShapeShape"model_14/dense_15/BiasAdd:output:0*
T0*
_output_shapes
:2#
!model_14/dense_16/Tensordot/Shape
)model_14/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_16/Tensordot/GatherV2/axis«
$model_14/dense_16/Tensordot/GatherV2GatherV2*model_14/dense_16/Tensordot/Shape:output:0)model_14/dense_16/Tensordot/free:output:02model_14/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_16/Tensordot/GatherV2
+model_14/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_16/Tensordot/GatherV2_1/axis±
&model_14/dense_16/Tensordot/GatherV2_1GatherV2*model_14/dense_16/Tensordot/Shape:output:0)model_14/dense_16/Tensordot/axes:output:04model_14/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_16/Tensordot/GatherV2_1
!model_14/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_16/Tensordot/ConstÈ
 model_14/dense_16/Tensordot/ProdProd-model_14/dense_16/Tensordot/GatherV2:output:0*model_14/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_16/Tensordot/Prod
#model_14/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_16/Tensordot/Const_1Ð
"model_14/dense_16/Tensordot/Prod_1Prod/model_14/dense_16/Tensordot/GatherV2_1:output:0,model_14/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_16/Tensordot/Prod_1
'model_14/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_16/Tensordot/concat/axis
"model_14/dense_16/Tensordot/concatConcatV2)model_14/dense_16/Tensordot/free:output:0)model_14/dense_16/Tensordot/axes:output:00model_14/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_16/Tensordot/concatÔ
!model_14/dense_16/Tensordot/stackPack)model_14/dense_16/Tensordot/Prod:output:0+model_14/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_16/Tensordot/stackã
%model_14/dense_16/Tensordot/transpose	Transpose"model_14/dense_15/BiasAdd:output:0+model_14/dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_16/Tensordot/transposeç
#model_14/dense_16/Tensordot/ReshapeReshape)model_14/dense_16/Tensordot/transpose:y:0*model_14/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_16/Tensordot/Reshapeæ
"model_14/dense_16/Tensordot/MatMulMatMul,model_14/dense_16/Tensordot/Reshape:output:02model_14/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"model_14/dense_16/Tensordot/MatMul
#model_14/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2%
#model_14/dense_16/Tensordot/Const_2
)model_14/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_16/Tensordot/concat_1/axis
$model_14/dense_16/Tensordot/concat_1ConcatV2-model_14/dense_16/Tensordot/GatherV2:output:0,model_14/dense_16/Tensordot/Const_2:output:02model_14/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_16/Tensordot/concat_1Ù
model_14/dense_16/TensordotReshape,model_14/dense_16/Tensordot/MatMul:product:0-model_14/dense_16/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_16/TensordotÂ
(model_14/dense_16/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_14/dense_16/BiasAdd/ReadVariableOpÐ
model_14/dense_16/BiasAddBiasAdd$model_14/dense_16/Tensordot:output:00model_14/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_16/BiasAdd
model_14/dense_16/ReluRelu"model_14/dense_16/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_16/ReluÍ
*model_14/dense_17/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_17_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02,
*model_14/dense_17/Tensordot/ReadVariableOp
 model_14/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_17/Tensordot/axes
 model_14/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_17/Tensordot/free
!model_14/dense_17/Tensordot/ShapeShape$model_14/dense_16/Relu:activations:0*
T0*
_output_shapes
:2#
!model_14/dense_17/Tensordot/Shape
)model_14/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_17/Tensordot/GatherV2/axis«
$model_14/dense_17/Tensordot/GatherV2GatherV2*model_14/dense_17/Tensordot/Shape:output:0)model_14/dense_17/Tensordot/free:output:02model_14/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_17/Tensordot/GatherV2
+model_14/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_17/Tensordot/GatherV2_1/axis±
&model_14/dense_17/Tensordot/GatherV2_1GatherV2*model_14/dense_17/Tensordot/Shape:output:0)model_14/dense_17/Tensordot/axes:output:04model_14/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_17/Tensordot/GatherV2_1
!model_14/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_17/Tensordot/ConstÈ
 model_14/dense_17/Tensordot/ProdProd-model_14/dense_17/Tensordot/GatherV2:output:0*model_14/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_17/Tensordot/Prod
#model_14/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_17/Tensordot/Const_1Ð
"model_14/dense_17/Tensordot/Prod_1Prod/model_14/dense_17/Tensordot/GatherV2_1:output:0,model_14/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_17/Tensordot/Prod_1
'model_14/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_17/Tensordot/concat/axis
"model_14/dense_17/Tensordot/concatConcatV2)model_14/dense_17/Tensordot/free:output:0)model_14/dense_17/Tensordot/axes:output:00model_14/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_17/Tensordot/concatÔ
!model_14/dense_17/Tensordot/stackPack)model_14/dense_17/Tensordot/Prod:output:0+model_14/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_17/Tensordot/stackå
%model_14/dense_17/Tensordot/transpose	Transpose$model_14/dense_16/Relu:activations:0+model_14/dense_17/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2'
%model_14/dense_17/Tensordot/transposeç
#model_14/dense_17/Tensordot/ReshapeReshape)model_14/dense_17/Tensordot/transpose:y:0*model_14/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_17/Tensordot/Reshapeç
"model_14/dense_17/Tensordot/MatMulMatMul,model_14/dense_17/Tensordot/Reshape:output:02model_14/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model_14/dense_17/Tensordot/MatMul
#model_14/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_14/dense_17/Tensordot/Const_2
)model_14/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_17/Tensordot/concat_1/axis
$model_14/dense_17/Tensordot/concat_1ConcatV2-model_14/dense_17/Tensordot/GatherV2:output:0,model_14/dense_17/Tensordot/Const_2:output:02model_14/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_17/Tensordot/concat_1Ú
model_14/dense_17/TensordotReshape,model_14/dense_17/Tensordot/MatMul:product:0-model_14/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_17/TensordotÃ
(model_14/dense_17/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_14/dense_17/BiasAdd/ReadVariableOpÑ
model_14/dense_17/BiasAddBiasAdd$model_14/dense_17/Tensordot:output:00model_14/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_17/BiasAdd
model_14/dense_17/ReluRelu"model_14/dense_17/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_17/ReluÎ
*model_14/dense_18/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_18_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*model_14/dense_18/Tensordot/ReadVariableOp
 model_14/dense_18/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_18/Tensordot/axes
 model_14/dense_18/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_18/Tensordot/free
!model_14/dense_18/Tensordot/ShapeShape$model_14/dense_17/Relu:activations:0*
T0*
_output_shapes
:2#
!model_14/dense_18/Tensordot/Shape
)model_14/dense_18/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_18/Tensordot/GatherV2/axis«
$model_14/dense_18/Tensordot/GatherV2GatherV2*model_14/dense_18/Tensordot/Shape:output:0)model_14/dense_18/Tensordot/free:output:02model_14/dense_18/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_18/Tensordot/GatherV2
+model_14/dense_18/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_18/Tensordot/GatherV2_1/axis±
&model_14/dense_18/Tensordot/GatherV2_1GatherV2*model_14/dense_18/Tensordot/Shape:output:0)model_14/dense_18/Tensordot/axes:output:04model_14/dense_18/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_18/Tensordot/GatherV2_1
!model_14/dense_18/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_18/Tensordot/ConstÈ
 model_14/dense_18/Tensordot/ProdProd-model_14/dense_18/Tensordot/GatherV2:output:0*model_14/dense_18/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_18/Tensordot/Prod
#model_14/dense_18/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_18/Tensordot/Const_1Ð
"model_14/dense_18/Tensordot/Prod_1Prod/model_14/dense_18/Tensordot/GatherV2_1:output:0,model_14/dense_18/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_18/Tensordot/Prod_1
'model_14/dense_18/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_18/Tensordot/concat/axis
"model_14/dense_18/Tensordot/concatConcatV2)model_14/dense_18/Tensordot/free:output:0)model_14/dense_18/Tensordot/axes:output:00model_14/dense_18/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_18/Tensordot/concatÔ
!model_14/dense_18/Tensordot/stackPack)model_14/dense_18/Tensordot/Prod:output:0+model_14/dense_18/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_18/Tensordot/stackæ
%model_14/dense_18/Tensordot/transpose	Transpose$model_14/dense_17/Relu:activations:0+model_14/dense_18/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_18/Tensordot/transposeç
#model_14/dense_18/Tensordot/ReshapeReshape)model_14/dense_18/Tensordot/transpose:y:0*model_14/dense_18/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_18/Tensordot/Reshapeç
"model_14/dense_18/Tensordot/MatMulMatMul,model_14/dense_18/Tensordot/Reshape:output:02model_14/dense_18/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model_14/dense_18/Tensordot/MatMul
#model_14/dense_18/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_14/dense_18/Tensordot/Const_2
)model_14/dense_18/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_18/Tensordot/concat_1/axis
$model_14/dense_18/Tensordot/concat_1ConcatV2-model_14/dense_18/Tensordot/GatherV2:output:0,model_14/dense_18/Tensordot/Const_2:output:02model_14/dense_18/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_18/Tensordot/concat_1Ú
model_14/dense_18/TensordotReshape,model_14/dense_18/Tensordot/MatMul:product:0-model_14/dense_18/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_18/TensordotÃ
(model_14/dense_18/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_14/dense_18/BiasAdd/ReadVariableOpÑ
model_14/dense_18/BiasAddBiasAdd$model_14/dense_18/Tensordot:output:00model_14/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_18/BiasAdd
model_14/dense_18/ReluRelu"model_14/dense_18/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_18/ReluÎ
*model_14/dense_19/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_19_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*model_14/dense_19/Tensordot/ReadVariableOp
 model_14/dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_19/Tensordot/axes
 model_14/dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_19/Tensordot/free
!model_14/dense_19/Tensordot/ShapeShape$model_14/dense_18/Relu:activations:0*
T0*
_output_shapes
:2#
!model_14/dense_19/Tensordot/Shape
)model_14/dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_19/Tensordot/GatherV2/axis«
$model_14/dense_19/Tensordot/GatherV2GatherV2*model_14/dense_19/Tensordot/Shape:output:0)model_14/dense_19/Tensordot/free:output:02model_14/dense_19/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_19/Tensordot/GatherV2
+model_14/dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_19/Tensordot/GatherV2_1/axis±
&model_14/dense_19/Tensordot/GatherV2_1GatherV2*model_14/dense_19/Tensordot/Shape:output:0)model_14/dense_19/Tensordot/axes:output:04model_14/dense_19/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_19/Tensordot/GatherV2_1
!model_14/dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_19/Tensordot/ConstÈ
 model_14/dense_19/Tensordot/ProdProd-model_14/dense_19/Tensordot/GatherV2:output:0*model_14/dense_19/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_19/Tensordot/Prod
#model_14/dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_19/Tensordot/Const_1Ð
"model_14/dense_19/Tensordot/Prod_1Prod/model_14/dense_19/Tensordot/GatherV2_1:output:0,model_14/dense_19/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_19/Tensordot/Prod_1
'model_14/dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_19/Tensordot/concat/axis
"model_14/dense_19/Tensordot/concatConcatV2)model_14/dense_19/Tensordot/free:output:0)model_14/dense_19/Tensordot/axes:output:00model_14/dense_19/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_19/Tensordot/concatÔ
!model_14/dense_19/Tensordot/stackPack)model_14/dense_19/Tensordot/Prod:output:0+model_14/dense_19/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_19/Tensordot/stackæ
%model_14/dense_19/Tensordot/transpose	Transpose$model_14/dense_18/Relu:activations:0+model_14/dense_19/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_19/Tensordot/transposeç
#model_14/dense_19/Tensordot/ReshapeReshape)model_14/dense_19/Tensordot/transpose:y:0*model_14/dense_19/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_19/Tensordot/Reshapeç
"model_14/dense_19/Tensordot/MatMulMatMul,model_14/dense_19/Tensordot/Reshape:output:02model_14/dense_19/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model_14/dense_19/Tensordot/MatMul
#model_14/dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_14/dense_19/Tensordot/Const_2
)model_14/dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_19/Tensordot/concat_1/axis
$model_14/dense_19/Tensordot/concat_1ConcatV2-model_14/dense_19/Tensordot/GatherV2:output:0,model_14/dense_19/Tensordot/Const_2:output:02model_14/dense_19/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_19/Tensordot/concat_1Ú
model_14/dense_19/TensordotReshape,model_14/dense_19/Tensordot/MatMul:product:0-model_14/dense_19/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_19/TensordotÃ
(model_14/dense_19/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_14/dense_19/BiasAdd/ReadVariableOpÑ
model_14/dense_19/BiasAddBiasAdd$model_14/dense_19/Tensordot:output:00model_14/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_19/BiasAdd
model_14/dense_19/ReluRelu"model_14/dense_19/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_19/Relu¤
model_14/dropout_1/IdentityIdentity$model_14/dense_19/Relu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dropout_1/IdentityÍ
*model_14/dense_20/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_20_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02,
*model_14/dense_20/Tensordot/ReadVariableOp
 model_14/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_20/Tensordot/axes
 model_14/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_20/Tensordot/free
!model_14/dense_20/Tensordot/ShapeShape$model_14/dropout_1/Identity:output:0*
T0*
_output_shapes
:2#
!model_14/dense_20/Tensordot/Shape
)model_14/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_20/Tensordot/GatherV2/axis«
$model_14/dense_20/Tensordot/GatherV2GatherV2*model_14/dense_20/Tensordot/Shape:output:0)model_14/dense_20/Tensordot/free:output:02model_14/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_20/Tensordot/GatherV2
+model_14/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_20/Tensordot/GatherV2_1/axis±
&model_14/dense_20/Tensordot/GatherV2_1GatherV2*model_14/dense_20/Tensordot/Shape:output:0)model_14/dense_20/Tensordot/axes:output:04model_14/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_20/Tensordot/GatherV2_1
!model_14/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_20/Tensordot/ConstÈ
 model_14/dense_20/Tensordot/ProdProd-model_14/dense_20/Tensordot/GatherV2:output:0*model_14/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_20/Tensordot/Prod
#model_14/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_20/Tensordot/Const_1Ð
"model_14/dense_20/Tensordot/Prod_1Prod/model_14/dense_20/Tensordot/GatherV2_1:output:0,model_14/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_20/Tensordot/Prod_1
'model_14/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_20/Tensordot/concat/axis
"model_14/dense_20/Tensordot/concatConcatV2)model_14/dense_20/Tensordot/free:output:0)model_14/dense_20/Tensordot/axes:output:00model_14/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_20/Tensordot/concatÔ
!model_14/dense_20/Tensordot/stackPack)model_14/dense_20/Tensordot/Prod:output:0+model_14/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_20/Tensordot/stackæ
%model_14/dense_20/Tensordot/transpose	Transpose$model_14/dropout_1/Identity:output:0+model_14/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_20/Tensordot/transposeç
#model_14/dense_20/Tensordot/ReshapeReshape)model_14/dense_20/Tensordot/transpose:y:0*model_14/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_20/Tensordot/Reshapeæ
"model_14/dense_20/Tensordot/MatMulMatMul,model_14/dense_20/Tensordot/Reshape:output:02model_14/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"model_14/dense_20/Tensordot/MatMul
#model_14/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2%
#model_14/dense_20/Tensordot/Const_2
)model_14/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_20/Tensordot/concat_1/axis
$model_14/dense_20/Tensordot/concat_1ConcatV2-model_14/dense_20/Tensordot/GatherV2:output:0,model_14/dense_20/Tensordot/Const_2:output:02model_14/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_20/Tensordot/concat_1Ù
model_14/dense_20/TensordotReshape,model_14/dense_20/Tensordot/MatMul:product:0-model_14/dense_20/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_20/TensordotÂ
(model_14/dense_20/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_14/dense_20/BiasAdd/ReadVariableOpÐ
model_14/dense_20/BiasAddBiasAdd$model_14/dense_20/Tensordot:output:00model_14/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_20/BiasAdd
model_14/dense_20/ReluRelu"model_14/dense_20/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_20/Relu
model_14/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ.  2
model_14/flatten_1/Const¿
model_14/flatten_1/ReshapeReshape$model_14/dense_20/Relu:activations:0!model_14/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2
model_14/flatten_1/Reshape¦
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	À]*
dtype02
dense_5/MatMul/ReadVariableOp¨
dense_5/MatMulMatMul#model_14/flatten_1/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_5/MatMul¤
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOp¡
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_5/BiasAddy
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_5/Softmax¾
IdentityIdentitydense_5/Softmax:softmax:0^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp)^model_14/dense_15/BiasAdd/ReadVariableOp+^model_14/dense_15/Tensordot/ReadVariableOp)^model_14/dense_16/BiasAdd/ReadVariableOp+^model_14/dense_16/Tensordot/ReadVariableOp)^model_14/dense_17/BiasAdd/ReadVariableOp+^model_14/dense_17/Tensordot/ReadVariableOp)^model_14/dense_18/BiasAdd/ReadVariableOp+^model_14/dense_18/Tensordot/ReadVariableOp)^model_14/dense_19/BiasAdd/ReadVariableOp+^model_14/dense_19/Tensordot/ReadVariableOp)^model_14/dense_20/BiasAdd/ReadVariableOp+^model_14/dense_20/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2T
(model_14/dense_15/BiasAdd/ReadVariableOp(model_14/dense_15/BiasAdd/ReadVariableOp2X
*model_14/dense_15/Tensordot/ReadVariableOp*model_14/dense_15/Tensordot/ReadVariableOp2T
(model_14/dense_16/BiasAdd/ReadVariableOp(model_14/dense_16/BiasAdd/ReadVariableOp2X
*model_14/dense_16/Tensordot/ReadVariableOp*model_14/dense_16/Tensordot/ReadVariableOp2T
(model_14/dense_17/BiasAdd/ReadVariableOp(model_14/dense_17/BiasAdd/ReadVariableOp2X
*model_14/dense_17/Tensordot/ReadVariableOp*model_14/dense_17/Tensordot/ReadVariableOp2T
(model_14/dense_18/BiasAdd/ReadVariableOp(model_14/dense_18/BiasAdd/ReadVariableOp2X
*model_14/dense_18/Tensordot/ReadVariableOp*model_14/dense_18/Tensordot/ReadVariableOp2T
(model_14/dense_19/BiasAdd/ReadVariableOp(model_14/dense_19/BiasAdd/ReadVariableOp2X
*model_14/dense_19/Tensordot/ReadVariableOp*model_14/dense_19/Tensordot/ReadVariableOp2T
(model_14/dense_20/BiasAdd/ReadVariableOp(model_14/dense_20/BiasAdd/ReadVariableOp2X
*model_14/dense_20/Tensordot/ReadVariableOp*model_14/dense_20/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
Ü
}
(__inference_dense_5_layer_call_fn_444609

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4435362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ]::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]
 
_user_specified_nameinputs
ø	
Ü
C__inference_dense_5_layer_call_and_return_conditional_losses_443536

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À]*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ]::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]
 
_user_specified_nameinputs
®	

)__inference_model_14_layer_call_fn_443373
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_14_layer_call_and_return_conditional_losses_4433462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_2
í	
µ
)__inference_model_15_layer_call_fn_444188

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_4436912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
üç
»
D__inference_model_14_layer_call_and_return_conditional_losses_444363

inputs.
*dense_15_tensordot_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource.
*dense_16_tensordot_readvariableop_resource,
(dense_16_biasadd_readvariableop_resource.
*dense_17_tensordot_readvariableop_resource,
(dense_17_biasadd_readvariableop_resource.
*dense_18_tensordot_readvariableop_resource,
(dense_18_biasadd_readvariableop_resource.
*dense_19_tensordot_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource.
*dense_20_tensordot_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource
identity¢dense_15/BiasAdd/ReadVariableOp¢!dense_15/Tensordot/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢!dense_16/Tensordot/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢!dense_17/Tensordot/ReadVariableOp¢dense_18/BiasAdd/ReadVariableOp¢!dense_18/Tensordot/ReadVariableOp¢dense_19/BiasAdd/ReadVariableOp¢!dense_19/Tensordot/ReadVariableOp¢dense_20/BiasAdd/ReadVariableOp¢!dense_20/Tensordot/ReadVariableOp±
!dense_15/Tensordot/ReadVariableOpReadVariableOp*dense_15_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02#
!dense_15/Tensordot/ReadVariableOp|
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_15/Tensordot/axes
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_15/Tensordot/freej
dense_15/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_15/Tensordot/Shape
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_15/Tensordot/GatherV2/axisþ
dense_15/Tensordot/GatherV2GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/free:output:0)dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_15/Tensordot/GatherV2
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_15/Tensordot/GatherV2_1/axis
dense_15/Tensordot/GatherV2_1GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/axes:output:0+dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_15/Tensordot/GatherV2_1~
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_15/Tensordot/Const¤
dense_15/Tensordot/ProdProd$dense_15/Tensordot/GatherV2:output:0!dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_15/Tensordot/Prod
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_15/Tensordot/Const_1¬
dense_15/Tensordot/Prod_1Prod&dense_15/Tensordot/GatherV2_1:output:0#dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_15/Tensordot/Prod_1
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_15/Tensordot/concat/axisÝ
dense_15/Tensordot/concatConcatV2 dense_15/Tensordot/free:output:0 dense_15/Tensordot/axes:output:0'dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_15/Tensordot/concat°
dense_15/Tensordot/stackPack dense_15/Tensordot/Prod:output:0"dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_15/Tensordot/stack¬
dense_15/Tensordot/transpose	Transposeinputs"dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_15/Tensordot/transposeÃ
dense_15/Tensordot/ReshapeReshape dense_15/Tensordot/transpose:y:0!dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_15/Tensordot/ReshapeÂ
dense_15/Tensordot/MatMulMatMul#dense_15/Tensordot/Reshape:output:0)dense_15/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_15/Tensordot/MatMul
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_15/Tensordot/Const_2
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_15/Tensordot/concat_1/axisê
dense_15/Tensordot/concat_1ConcatV2$dense_15/Tensordot/GatherV2:output:0#dense_15/Tensordot/Const_2:output:0)dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_15/Tensordot/concat_1µ
dense_15/TensordotReshape#dense_15/Tensordot/MatMul:product:0$dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_15/Tensordot§
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOp¬
dense_15/BiasAddBiasAdddense_15/Tensordot:output:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_15/BiasAdd±
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02#
!dense_16/Tensordot/ReadVariableOp|
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_16/Tensordot/axes
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_16/Tensordot/free}
dense_16/Tensordot/ShapeShapedense_15/BiasAdd:output:0*
T0*
_output_shapes
:2
dense_16/Tensordot/Shape
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_16/Tensordot/GatherV2/axisþ
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_16/Tensordot/GatherV2
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_16/Tensordot/GatherV2_1/axis
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_16/Tensordot/GatherV2_1~
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const¤
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_16/Tensordot/Prod
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const_1¬
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_16/Tensordot/Prod_1
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_16/Tensordot/concat/axisÝ
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/concat°
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/stack¿
dense_16/Tensordot/transpose	Transposedense_15/BiasAdd:output:0"dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_16/Tensordot/transposeÃ
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_16/Tensordot/ReshapeÂ
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_16/Tensordot/MatMul
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_16/Tensordot/Const_2
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_16/Tensordot/concat_1/axisê
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/concat_1µ
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_16/Tensordot§
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_16/BiasAdd/ReadVariableOp¬
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_16/BiasAddx
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_16/Relu²
!dense_17/Tensordot/ReadVariableOpReadVariableOp*dense_17_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02#
!dense_17/Tensordot/ReadVariableOp|
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_17/Tensordot/axes
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_17/Tensordot/free
dense_17/Tensordot/ShapeShapedense_16/Relu:activations:0*
T0*
_output_shapes
:2
dense_17/Tensordot/Shape
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_17/Tensordot/GatherV2/axisþ
dense_17/Tensordot/GatherV2GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/free:output:0)dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_17/Tensordot/GatherV2
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_17/Tensordot/GatherV2_1/axis
dense_17/Tensordot/GatherV2_1GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/axes:output:0+dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_17/Tensordot/GatherV2_1~
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_17/Tensordot/Const¤
dense_17/Tensordot/ProdProd$dense_17/Tensordot/GatherV2:output:0!dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_17/Tensordot/Prod
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_17/Tensordot/Const_1¬
dense_17/Tensordot/Prod_1Prod&dense_17/Tensordot/GatherV2_1:output:0#dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_17/Tensordot/Prod_1
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_17/Tensordot/concat/axisÝ
dense_17/Tensordot/concatConcatV2 dense_17/Tensordot/free:output:0 dense_17/Tensordot/axes:output:0'dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/concat°
dense_17/Tensordot/stackPack dense_17/Tensordot/Prod:output:0"dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/stackÁ
dense_17/Tensordot/transpose	Transposedense_16/Relu:activations:0"dense_17/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_17/Tensordot/transposeÃ
dense_17/Tensordot/ReshapeReshape dense_17/Tensordot/transpose:y:0!dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_17/Tensordot/ReshapeÃ
dense_17/Tensordot/MatMulMatMul#dense_17/Tensordot/Reshape:output:0)dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_17/Tensordot/MatMul
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_17/Tensordot/Const_2
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_17/Tensordot/concat_1/axisê
dense_17/Tensordot/concat_1ConcatV2$dense_17/Tensordot/GatherV2:output:0#dense_17/Tensordot/Const_2:output:0)dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/concat_1¶
dense_17/TensordotReshape#dense_17/Tensordot/MatMul:product:0$dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_17/Tensordot¨
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_17/BiasAdd/ReadVariableOp­
dense_17/BiasAddBiasAdddense_17/Tensordot:output:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_17/BiasAddy
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_17/Relu³
!dense_18/Tensordot/ReadVariableOpReadVariableOp*dense_18_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!dense_18/Tensordot/ReadVariableOp|
dense_18/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_18/Tensordot/axes
dense_18/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_18/Tensordot/free
dense_18/Tensordot/ShapeShapedense_17/Relu:activations:0*
T0*
_output_shapes
:2
dense_18/Tensordot/Shape
 dense_18/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_18/Tensordot/GatherV2/axisþ
dense_18/Tensordot/GatherV2GatherV2!dense_18/Tensordot/Shape:output:0 dense_18/Tensordot/free:output:0)dense_18/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_18/Tensordot/GatherV2
"dense_18/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_18/Tensordot/GatherV2_1/axis
dense_18/Tensordot/GatherV2_1GatherV2!dense_18/Tensordot/Shape:output:0 dense_18/Tensordot/axes:output:0+dense_18/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_18/Tensordot/GatherV2_1~
dense_18/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_18/Tensordot/Const¤
dense_18/Tensordot/ProdProd$dense_18/Tensordot/GatherV2:output:0!dense_18/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_18/Tensordot/Prod
dense_18/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_18/Tensordot/Const_1¬
dense_18/Tensordot/Prod_1Prod&dense_18/Tensordot/GatherV2_1:output:0#dense_18/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_18/Tensordot/Prod_1
dense_18/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_18/Tensordot/concat/axisÝ
dense_18/Tensordot/concatConcatV2 dense_18/Tensordot/free:output:0 dense_18/Tensordot/axes:output:0'dense_18/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_18/Tensordot/concat°
dense_18/Tensordot/stackPack dense_18/Tensordot/Prod:output:0"dense_18/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_18/Tensordot/stackÂ
dense_18/Tensordot/transpose	Transposedense_17/Relu:activations:0"dense_18/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_18/Tensordot/transposeÃ
dense_18/Tensordot/ReshapeReshape dense_18/Tensordot/transpose:y:0!dense_18/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_18/Tensordot/ReshapeÃ
dense_18/Tensordot/MatMulMatMul#dense_18/Tensordot/Reshape:output:0)dense_18/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_18/Tensordot/MatMul
dense_18/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_18/Tensordot/Const_2
 dense_18/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_18/Tensordot/concat_1/axisê
dense_18/Tensordot/concat_1ConcatV2$dense_18/Tensordot/GatherV2:output:0#dense_18/Tensordot/Const_2:output:0)dense_18/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_18/Tensordot/concat_1¶
dense_18/TensordotReshape#dense_18/Tensordot/MatMul:product:0$dense_18/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_18/Tensordot¨
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_18/BiasAdd/ReadVariableOp­
dense_18/BiasAddBiasAdddense_18/Tensordot:output:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_18/BiasAddy
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_18/Relu³
!dense_19/Tensordot/ReadVariableOpReadVariableOp*dense_19_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!dense_19/Tensordot/ReadVariableOp|
dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_19/Tensordot/axes
dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_19/Tensordot/free
dense_19/Tensordot/ShapeShapedense_18/Relu:activations:0*
T0*
_output_shapes
:2
dense_19/Tensordot/Shape
 dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_19/Tensordot/GatherV2/axisþ
dense_19/Tensordot/GatherV2GatherV2!dense_19/Tensordot/Shape:output:0 dense_19/Tensordot/free:output:0)dense_19/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_19/Tensordot/GatherV2
"dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_19/Tensordot/GatherV2_1/axis
dense_19/Tensordot/GatherV2_1GatherV2!dense_19/Tensordot/Shape:output:0 dense_19/Tensordot/axes:output:0+dense_19/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_19/Tensordot/GatherV2_1~
dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_19/Tensordot/Const¤
dense_19/Tensordot/ProdProd$dense_19/Tensordot/GatherV2:output:0!dense_19/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_19/Tensordot/Prod
dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_19/Tensordot/Const_1¬
dense_19/Tensordot/Prod_1Prod&dense_19/Tensordot/GatherV2_1:output:0#dense_19/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_19/Tensordot/Prod_1
dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_19/Tensordot/concat/axisÝ
dense_19/Tensordot/concatConcatV2 dense_19/Tensordot/free:output:0 dense_19/Tensordot/axes:output:0'dense_19/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_19/Tensordot/concat°
dense_19/Tensordot/stackPack dense_19/Tensordot/Prod:output:0"dense_19/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_19/Tensordot/stackÂ
dense_19/Tensordot/transpose	Transposedense_18/Relu:activations:0"dense_19/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_19/Tensordot/transposeÃ
dense_19/Tensordot/ReshapeReshape dense_19/Tensordot/transpose:y:0!dense_19/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_19/Tensordot/ReshapeÃ
dense_19/Tensordot/MatMulMatMul#dense_19/Tensordot/Reshape:output:0)dense_19/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_19/Tensordot/MatMul
dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_19/Tensordot/Const_2
 dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_19/Tensordot/concat_1/axisê
dense_19/Tensordot/concat_1ConcatV2$dense_19/Tensordot/GatherV2:output:0#dense_19/Tensordot/Const_2:output:0)dense_19/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_19/Tensordot/concat_1¶
dense_19/TensordotReshape#dense_19/Tensordot/MatMul:product:0$dense_19/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_19/Tensordot¨
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_19/BiasAdd/ReadVariableOp­
dense_19/BiasAddBiasAdddense_19/Tensordot:output:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_19/BiasAddy
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_19/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/dropout/Const¬
dropout_1/dropout/MulMuldense_19/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout_1/dropout/Mul}
dropout_1/dropout/ShapeShapedense_19/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/ShapeØ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 dropout_1/dropout/GreaterEqual/yì
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2 
dropout_1/dropout/GreaterEqual£
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout_1/dropout/Cast¨
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout_1/dropout/Mul_1²
!dense_20/Tensordot/ReadVariableOpReadVariableOp*dense_20_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02#
!dense_20/Tensordot/ReadVariableOp|
dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_20/Tensordot/axes
dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_20/Tensordot/free
dense_20/Tensordot/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_20/Tensordot/Shape
 dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_20/Tensordot/GatherV2/axisþ
dense_20/Tensordot/GatherV2GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/free:output:0)dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_20/Tensordot/GatherV2
"dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_20/Tensordot/GatherV2_1/axis
dense_20/Tensordot/GatherV2_1GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/axes:output:0+dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_20/Tensordot/GatherV2_1~
dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_20/Tensordot/Const¤
dense_20/Tensordot/ProdProd$dense_20/Tensordot/GatherV2:output:0!dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_20/Tensordot/Prod
dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_20/Tensordot/Const_1¬
dense_20/Tensordot/Prod_1Prod&dense_20/Tensordot/GatherV2_1:output:0#dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_20/Tensordot/Prod_1
dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_20/Tensordot/concat/axisÝ
dense_20/Tensordot/concatConcatV2 dense_20/Tensordot/free:output:0 dense_20/Tensordot/axes:output:0'dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/concat°
dense_20/Tensordot/stackPack dense_20/Tensordot/Prod:output:0"dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/stackÂ
dense_20/Tensordot/transpose	Transposedropout_1/dropout/Mul_1:z:0"dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_20/Tensordot/transposeÃ
dense_20/Tensordot/ReshapeReshape dense_20/Tensordot/transpose:y:0!dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_20/Tensordot/ReshapeÂ
dense_20/Tensordot/MatMulMatMul#dense_20/Tensordot/Reshape:output:0)dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_20/Tensordot/MatMul
dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_20/Tensordot/Const_2
 dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_20/Tensordot/concat_1/axisê
dense_20/Tensordot/concat_1ConcatV2$dense_20/Tensordot/GatherV2:output:0#dense_20/Tensordot/Const_2:output:0)dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/concat_1µ
dense_20/TensordotReshape#dense_20/Tensordot/MatMul:product:0$dense_20/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_20/Tensordot§
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_20/BiasAdd/ReadVariableOp¬
dense_20/BiasAddBiasAdddense_20/Tensordot:output:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_20/BiasAddx
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_20/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ.  2
flatten_1/Const
flatten_1/ReshapeReshapedense_20/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2
flatten_1/Reshape
IdentityIdentityflatten_1/Reshape:output:0 ^dense_15/BiasAdd/ReadVariableOp"^dense_15/Tensordot/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp"^dense_17/Tensordot/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp"^dense_18/Tensordot/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp"^dense_19/Tensordot/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp"^dense_20/Tensordot/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2F
!dense_15/Tensordot/ReadVariableOp!dense_15/Tensordot/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2F
!dense_17/Tensordot/ReadVariableOp!dense_17/Tensordot/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2F
!dense_18/Tensordot/ReadVariableOp!dense_18/Tensordot/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2F
!dense_19/Tensordot/ReadVariableOp!dense_19/Tensordot/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2F
!dense_20/Tensordot/ReadVariableOp!dense_20/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ô
~
)__inference_dense_18_layer_call_fn_444768

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_4431162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
¸
c
*__inference_dropout_1_layer_call_fn_444830

inputs
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_4431912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
È	
±
$__inference_signature_wrapper_443765
input_7
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_4429412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_7

Í
D__inference_model_15_layer_call_and_return_conditional_losses_443587
input_7
model_14_443556
model_14_443558
model_14_443560
model_14_443562
model_14_443564
model_14_443566
model_14_443568
model_14_443570
model_14_443572
model_14_443574
model_14_443576
model_14_443578
dense_5_443581
dense_5_443583
identity¢dense_5/StatefulPartitionedCall¢ model_14/StatefulPartitionedCallÔ
 model_14/StatefulPartitionedCallStatefulPartitionedCallinput_7model_14_443556model_14_443558model_14_443560model_14_443562model_14_443564model_14_443566model_14_443568model_14_443570model_14_443572model_14_443574model_14_443576model_14_443578*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_14_layer_call_and_return_conditional_losses_4434112"
 model_14/StatefulPartitionedCall²
dense_5/StatefulPartitionedCallStatefulPartitionedCall)model_14/StatefulPartitionedCall:output:0dense_5_443581dense_5_443583*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4435362!
dense_5/StatefulPartitionedCallÁ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0 ^dense_5/StatefulPartitionedCall!^model_14/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2D
 model_14/StatefulPartitionedCall model_14/StatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_7
Ä 
ã
D__inference_dense_19_layer_call_and_return_conditional_losses_443163

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
Ä 
ã
D__inference_dense_18_layer_call_and_return_conditional_losses_444759

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
Ä 
ã
D__inference_dense_18_layer_call_and_return_conditional_losses_443116

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
Ä 
ã
D__inference_dense_19_layer_call_and_return_conditional_losses_444799

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
«	

)__inference_model_14_layer_call_fn_444560

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_14_layer_call_and_return_conditional_losses_4433462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
À 
ã
D__inference_dense_17_layer_call_and_return_conditional_losses_444719

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@
 
_user_specified_nameinputs
à
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_444825

inputs

identity_1`
IdentityIdentityinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identityo

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity_1"!

identity_1Identity_1:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ò
~
)__inference_dense_17_layer_call_fn_444728

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4430692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@
 
_user_specified_nameinputs
¼ 
ã
D__inference_dense_20_layer_call_and_return_conditional_losses_443240

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
«	

)__inference_model_14_layer_call_fn_444589

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_14_layer_call_and_return_conditional_losses_4434112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ò
~
)__inference_dense_20_layer_call_fn_444875

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_4432402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ú'
Õ
D__inference_model_14_layer_call_and_return_conditional_losses_443346

inputs
dense_15_443313
dense_15_443315
dense_16_443318
dense_16_443320
dense_17_443323
dense_17_443325
dense_18_443328
dense_18_443330
dense_19_443333
dense_19_443335
dense_20_443339
dense_20_443341
identity¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢ dense_20/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_443313dense_15_443315*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4429752"
 dense_15/StatefulPartitionedCall¼
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_443318dense_16_443320*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4430222"
 dense_16/StatefulPartitionedCall½
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_443323dense_17_443325*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4430692"
 dense_17/StatefulPartitionedCall½
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0dense_18_443328dense_18_443330*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_4431162"
 dense_18/StatefulPartitionedCall½
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_443333dense_19_443335*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4431632"
 dense_19/StatefulPartitionedCall
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_4431912#
!dropout_1/StatefulPartitionedCall½
 dense_20/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_20_443339dense_20_443341*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_4432402"
 dense_20/StatefulPartitionedCallû
flatten_1/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_4432622
flatten_1/PartitionedCallí
IdentityIdentity"flatten_1/PartitionedCall:output:0!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs

Ì
D__inference_model_15_layer_call_and_return_conditional_losses_443624

inputs
model_14_443593
model_14_443595
model_14_443597
model_14_443599
model_14_443601
model_14_443603
model_14_443605
model_14_443607
model_14_443609
model_14_443611
model_14_443613
model_14_443615
dense_5_443618
dense_5_443620
identity¢dense_5/StatefulPartitionedCall¢ model_14/StatefulPartitionedCallÓ
 model_14/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_14_443593model_14_443595model_14_443597model_14_443599model_14_443601model_14_443603model_14_443605model_14_443607model_14_443609model_14_443611model_14_443613model_14_443615*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_14_layer_call_and_return_conditional_losses_4433462"
 model_14/StatefulPartitionedCall²
dense_5/StatefulPartitionedCallStatefulPartitionedCall)model_14/StatefulPartitionedCall:output:0dense_5_443618dense_5_443620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4435362!
dense_5/StatefulPartitionedCallÁ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0 ^dense_5/StatefulPartitionedCall!^model_14/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2D
 model_14/StatefulPartitionedCall model_14/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
®	

)__inference_model_14_layer_call_fn_443438
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_14_layer_call_and_return_conditional_losses_4434112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_2
³
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_443191

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consty
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeº
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yÄ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout/Mul_1k
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ºÞ
»
D__inference_model_14_layer_call_and_return_conditional_losses_444531

inputs.
*dense_15_tensordot_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource.
*dense_16_tensordot_readvariableop_resource,
(dense_16_biasadd_readvariableop_resource.
*dense_17_tensordot_readvariableop_resource,
(dense_17_biasadd_readvariableop_resource.
*dense_18_tensordot_readvariableop_resource,
(dense_18_biasadd_readvariableop_resource.
*dense_19_tensordot_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource.
*dense_20_tensordot_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource
identity¢dense_15/BiasAdd/ReadVariableOp¢!dense_15/Tensordot/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢!dense_16/Tensordot/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢!dense_17/Tensordot/ReadVariableOp¢dense_18/BiasAdd/ReadVariableOp¢!dense_18/Tensordot/ReadVariableOp¢dense_19/BiasAdd/ReadVariableOp¢!dense_19/Tensordot/ReadVariableOp¢dense_20/BiasAdd/ReadVariableOp¢!dense_20/Tensordot/ReadVariableOp±
!dense_15/Tensordot/ReadVariableOpReadVariableOp*dense_15_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02#
!dense_15/Tensordot/ReadVariableOp|
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_15/Tensordot/axes
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_15/Tensordot/freej
dense_15/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_15/Tensordot/Shape
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_15/Tensordot/GatherV2/axisþ
dense_15/Tensordot/GatherV2GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/free:output:0)dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_15/Tensordot/GatherV2
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_15/Tensordot/GatherV2_1/axis
dense_15/Tensordot/GatherV2_1GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/axes:output:0+dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_15/Tensordot/GatherV2_1~
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_15/Tensordot/Const¤
dense_15/Tensordot/ProdProd$dense_15/Tensordot/GatherV2:output:0!dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_15/Tensordot/Prod
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_15/Tensordot/Const_1¬
dense_15/Tensordot/Prod_1Prod&dense_15/Tensordot/GatherV2_1:output:0#dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_15/Tensordot/Prod_1
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_15/Tensordot/concat/axisÝ
dense_15/Tensordot/concatConcatV2 dense_15/Tensordot/free:output:0 dense_15/Tensordot/axes:output:0'dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_15/Tensordot/concat°
dense_15/Tensordot/stackPack dense_15/Tensordot/Prod:output:0"dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_15/Tensordot/stack¬
dense_15/Tensordot/transpose	Transposeinputs"dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_15/Tensordot/transposeÃ
dense_15/Tensordot/ReshapeReshape dense_15/Tensordot/transpose:y:0!dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_15/Tensordot/ReshapeÂ
dense_15/Tensordot/MatMulMatMul#dense_15/Tensordot/Reshape:output:0)dense_15/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_15/Tensordot/MatMul
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_15/Tensordot/Const_2
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_15/Tensordot/concat_1/axisê
dense_15/Tensordot/concat_1ConcatV2$dense_15/Tensordot/GatherV2:output:0#dense_15/Tensordot/Const_2:output:0)dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_15/Tensordot/concat_1µ
dense_15/TensordotReshape#dense_15/Tensordot/MatMul:product:0$dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_15/Tensordot§
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOp¬
dense_15/BiasAddBiasAdddense_15/Tensordot:output:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_15/BiasAdd±
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02#
!dense_16/Tensordot/ReadVariableOp|
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_16/Tensordot/axes
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_16/Tensordot/free}
dense_16/Tensordot/ShapeShapedense_15/BiasAdd:output:0*
T0*
_output_shapes
:2
dense_16/Tensordot/Shape
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_16/Tensordot/GatherV2/axisþ
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_16/Tensordot/GatherV2
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_16/Tensordot/GatherV2_1/axis
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_16/Tensordot/GatherV2_1~
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const¤
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_16/Tensordot/Prod
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const_1¬
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_16/Tensordot/Prod_1
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_16/Tensordot/concat/axisÝ
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/concat°
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/stack¿
dense_16/Tensordot/transpose	Transposedense_15/BiasAdd:output:0"dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_16/Tensordot/transposeÃ
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_16/Tensordot/ReshapeÂ
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_16/Tensordot/MatMul
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_16/Tensordot/Const_2
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_16/Tensordot/concat_1/axisê
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/concat_1µ
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_16/Tensordot§
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_16/BiasAdd/ReadVariableOp¬
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_16/BiasAddx
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_16/Relu²
!dense_17/Tensordot/ReadVariableOpReadVariableOp*dense_17_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02#
!dense_17/Tensordot/ReadVariableOp|
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_17/Tensordot/axes
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_17/Tensordot/free
dense_17/Tensordot/ShapeShapedense_16/Relu:activations:0*
T0*
_output_shapes
:2
dense_17/Tensordot/Shape
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_17/Tensordot/GatherV2/axisþ
dense_17/Tensordot/GatherV2GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/free:output:0)dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_17/Tensordot/GatherV2
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_17/Tensordot/GatherV2_1/axis
dense_17/Tensordot/GatherV2_1GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/axes:output:0+dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_17/Tensordot/GatherV2_1~
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_17/Tensordot/Const¤
dense_17/Tensordot/ProdProd$dense_17/Tensordot/GatherV2:output:0!dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_17/Tensordot/Prod
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_17/Tensordot/Const_1¬
dense_17/Tensordot/Prod_1Prod&dense_17/Tensordot/GatherV2_1:output:0#dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_17/Tensordot/Prod_1
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_17/Tensordot/concat/axisÝ
dense_17/Tensordot/concatConcatV2 dense_17/Tensordot/free:output:0 dense_17/Tensordot/axes:output:0'dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/concat°
dense_17/Tensordot/stackPack dense_17/Tensordot/Prod:output:0"dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/stackÁ
dense_17/Tensordot/transpose	Transposedense_16/Relu:activations:0"dense_17/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_17/Tensordot/transposeÃ
dense_17/Tensordot/ReshapeReshape dense_17/Tensordot/transpose:y:0!dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_17/Tensordot/ReshapeÃ
dense_17/Tensordot/MatMulMatMul#dense_17/Tensordot/Reshape:output:0)dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_17/Tensordot/MatMul
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_17/Tensordot/Const_2
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_17/Tensordot/concat_1/axisê
dense_17/Tensordot/concat_1ConcatV2$dense_17/Tensordot/GatherV2:output:0#dense_17/Tensordot/Const_2:output:0)dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/concat_1¶
dense_17/TensordotReshape#dense_17/Tensordot/MatMul:product:0$dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_17/Tensordot¨
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_17/BiasAdd/ReadVariableOp­
dense_17/BiasAddBiasAdddense_17/Tensordot:output:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_17/BiasAddy
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_17/Relu³
!dense_18/Tensordot/ReadVariableOpReadVariableOp*dense_18_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!dense_18/Tensordot/ReadVariableOp|
dense_18/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_18/Tensordot/axes
dense_18/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_18/Tensordot/free
dense_18/Tensordot/ShapeShapedense_17/Relu:activations:0*
T0*
_output_shapes
:2
dense_18/Tensordot/Shape
 dense_18/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_18/Tensordot/GatherV2/axisþ
dense_18/Tensordot/GatherV2GatherV2!dense_18/Tensordot/Shape:output:0 dense_18/Tensordot/free:output:0)dense_18/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_18/Tensordot/GatherV2
"dense_18/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_18/Tensordot/GatherV2_1/axis
dense_18/Tensordot/GatherV2_1GatherV2!dense_18/Tensordot/Shape:output:0 dense_18/Tensordot/axes:output:0+dense_18/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_18/Tensordot/GatherV2_1~
dense_18/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_18/Tensordot/Const¤
dense_18/Tensordot/ProdProd$dense_18/Tensordot/GatherV2:output:0!dense_18/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_18/Tensordot/Prod
dense_18/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_18/Tensordot/Const_1¬
dense_18/Tensordot/Prod_1Prod&dense_18/Tensordot/GatherV2_1:output:0#dense_18/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_18/Tensordot/Prod_1
dense_18/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_18/Tensordot/concat/axisÝ
dense_18/Tensordot/concatConcatV2 dense_18/Tensordot/free:output:0 dense_18/Tensordot/axes:output:0'dense_18/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_18/Tensordot/concat°
dense_18/Tensordot/stackPack dense_18/Tensordot/Prod:output:0"dense_18/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_18/Tensordot/stackÂ
dense_18/Tensordot/transpose	Transposedense_17/Relu:activations:0"dense_18/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_18/Tensordot/transposeÃ
dense_18/Tensordot/ReshapeReshape dense_18/Tensordot/transpose:y:0!dense_18/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_18/Tensordot/ReshapeÃ
dense_18/Tensordot/MatMulMatMul#dense_18/Tensordot/Reshape:output:0)dense_18/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_18/Tensordot/MatMul
dense_18/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_18/Tensordot/Const_2
 dense_18/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_18/Tensordot/concat_1/axisê
dense_18/Tensordot/concat_1ConcatV2$dense_18/Tensordot/GatherV2:output:0#dense_18/Tensordot/Const_2:output:0)dense_18/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_18/Tensordot/concat_1¶
dense_18/TensordotReshape#dense_18/Tensordot/MatMul:product:0$dense_18/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_18/Tensordot¨
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_18/BiasAdd/ReadVariableOp­
dense_18/BiasAddBiasAdddense_18/Tensordot:output:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_18/BiasAddy
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_18/Relu³
!dense_19/Tensordot/ReadVariableOpReadVariableOp*dense_19_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!dense_19/Tensordot/ReadVariableOp|
dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_19/Tensordot/axes
dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_19/Tensordot/free
dense_19/Tensordot/ShapeShapedense_18/Relu:activations:0*
T0*
_output_shapes
:2
dense_19/Tensordot/Shape
 dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_19/Tensordot/GatherV2/axisþ
dense_19/Tensordot/GatherV2GatherV2!dense_19/Tensordot/Shape:output:0 dense_19/Tensordot/free:output:0)dense_19/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_19/Tensordot/GatherV2
"dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_19/Tensordot/GatherV2_1/axis
dense_19/Tensordot/GatherV2_1GatherV2!dense_19/Tensordot/Shape:output:0 dense_19/Tensordot/axes:output:0+dense_19/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_19/Tensordot/GatherV2_1~
dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_19/Tensordot/Const¤
dense_19/Tensordot/ProdProd$dense_19/Tensordot/GatherV2:output:0!dense_19/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_19/Tensordot/Prod
dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_19/Tensordot/Const_1¬
dense_19/Tensordot/Prod_1Prod&dense_19/Tensordot/GatherV2_1:output:0#dense_19/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_19/Tensordot/Prod_1
dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_19/Tensordot/concat/axisÝ
dense_19/Tensordot/concatConcatV2 dense_19/Tensordot/free:output:0 dense_19/Tensordot/axes:output:0'dense_19/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_19/Tensordot/concat°
dense_19/Tensordot/stackPack dense_19/Tensordot/Prod:output:0"dense_19/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_19/Tensordot/stackÂ
dense_19/Tensordot/transpose	Transposedense_18/Relu:activations:0"dense_19/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_19/Tensordot/transposeÃ
dense_19/Tensordot/ReshapeReshape dense_19/Tensordot/transpose:y:0!dense_19/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_19/Tensordot/ReshapeÃ
dense_19/Tensordot/MatMulMatMul#dense_19/Tensordot/Reshape:output:0)dense_19/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_19/Tensordot/MatMul
dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_19/Tensordot/Const_2
 dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_19/Tensordot/concat_1/axisê
dense_19/Tensordot/concat_1ConcatV2$dense_19/Tensordot/GatherV2:output:0#dense_19/Tensordot/Const_2:output:0)dense_19/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_19/Tensordot/concat_1¶
dense_19/TensordotReshape#dense_19/Tensordot/MatMul:product:0$dense_19/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_19/Tensordot¨
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_19/BiasAdd/ReadVariableOp­
dense_19/BiasAddBiasAdddense_19/Tensordot:output:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_19/BiasAddy
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_19/Relu
dropout_1/IdentityIdentitydense_19/Relu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dropout_1/Identity²
!dense_20/Tensordot/ReadVariableOpReadVariableOp*dense_20_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02#
!dense_20/Tensordot/ReadVariableOp|
dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_20/Tensordot/axes
dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_20/Tensordot/free
dense_20/Tensordot/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:2
dense_20/Tensordot/Shape
 dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_20/Tensordot/GatherV2/axisþ
dense_20/Tensordot/GatherV2GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/free:output:0)dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_20/Tensordot/GatherV2
"dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_20/Tensordot/GatherV2_1/axis
dense_20/Tensordot/GatherV2_1GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/axes:output:0+dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_20/Tensordot/GatherV2_1~
dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_20/Tensordot/Const¤
dense_20/Tensordot/ProdProd$dense_20/Tensordot/GatherV2:output:0!dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_20/Tensordot/Prod
dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_20/Tensordot/Const_1¬
dense_20/Tensordot/Prod_1Prod&dense_20/Tensordot/GatherV2_1:output:0#dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_20/Tensordot/Prod_1
dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_20/Tensordot/concat/axisÝ
dense_20/Tensordot/concatConcatV2 dense_20/Tensordot/free:output:0 dense_20/Tensordot/axes:output:0'dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/concat°
dense_20/Tensordot/stackPack dense_20/Tensordot/Prod:output:0"dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/stackÂ
dense_20/Tensordot/transpose	Transposedropout_1/Identity:output:0"dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
dense_20/Tensordot/transposeÃ
dense_20/Tensordot/ReshapeReshape dense_20/Tensordot/transpose:y:0!dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_20/Tensordot/ReshapeÂ
dense_20/Tensordot/MatMulMatMul#dense_20/Tensordot/Reshape:output:0)dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_20/Tensordot/MatMul
dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_20/Tensordot/Const_2
 dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_20/Tensordot/concat_1/axisê
dense_20/Tensordot/concat_1ConcatV2$dense_20/Tensordot/GatherV2:output:0#dense_20/Tensordot/Const_2:output:0)dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/concat_1µ
dense_20/TensordotReshape#dense_20/Tensordot/MatMul:product:0$dense_20/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_20/Tensordot§
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_20/BiasAdd/ReadVariableOp¬
dense_20/BiasAddBiasAdddense_20/Tensordot:output:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_20/BiasAddx
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
dense_20/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ.  2
flatten_1/Const
flatten_1/ReshapeReshapedense_20/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2
flatten_1/Reshape
IdentityIdentityflatten_1/Reshape:output:0 ^dense_15/BiasAdd/ReadVariableOp"^dense_15/Tensordot/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp"^dense_17/Tensordot/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp"^dense_18/Tensordot/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp"^dense_19/Tensordot/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp"^dense_20/Tensordot/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ»::::::::::::2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2F
!dense_15/Tensordot/ReadVariableOp!dense_15/Tensordot/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2F
!dense_17/Tensordot/ReadVariableOp!dense_17/Tensordot/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2F
!dense_18/Tensordot/ReadVariableOp!dense_18/Tensordot/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2F
!dense_19/Tensordot/ReadVariableOp!dense_19/Tensordot/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2F
!dense_20/Tensordot/ReadVariableOp!dense_20/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
×
ã
D__inference_dense_15_layer_call_and_return_conditional_losses_442975

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
¬
F
*__inference_dropout_1_layer_call_fn_444835

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_4431962
PartitionedCallr
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ»:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
¼ 
ã
D__inference_dense_20_layer_call_and_return_conditional_losses_444866

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
×
ã
D__inference_dense_15_layer_call_and_return_conditional_losses_444639

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ð
~
)__inference_dense_16_layer_call_fn_444688

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4430222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ä
­
D__inference_model_15_layer_call_and_return_conditional_losses_443947

inputs7
3model_14_dense_15_tensordot_readvariableop_resource5
1model_14_dense_15_biasadd_readvariableop_resource7
3model_14_dense_16_tensordot_readvariableop_resource5
1model_14_dense_16_biasadd_readvariableop_resource7
3model_14_dense_17_tensordot_readvariableop_resource5
1model_14_dense_17_biasadd_readvariableop_resource7
3model_14_dense_18_tensordot_readvariableop_resource5
1model_14_dense_18_biasadd_readvariableop_resource7
3model_14_dense_19_tensordot_readvariableop_resource5
1model_14_dense_19_biasadd_readvariableop_resource7
3model_14_dense_20_tensordot_readvariableop_resource5
1model_14_dense_20_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource
identity¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢(model_14/dense_15/BiasAdd/ReadVariableOp¢*model_14/dense_15/Tensordot/ReadVariableOp¢(model_14/dense_16/BiasAdd/ReadVariableOp¢*model_14/dense_16/Tensordot/ReadVariableOp¢(model_14/dense_17/BiasAdd/ReadVariableOp¢*model_14/dense_17/Tensordot/ReadVariableOp¢(model_14/dense_18/BiasAdd/ReadVariableOp¢*model_14/dense_18/Tensordot/ReadVariableOp¢(model_14/dense_19/BiasAdd/ReadVariableOp¢*model_14/dense_19/Tensordot/ReadVariableOp¢(model_14/dense_20/BiasAdd/ReadVariableOp¢*model_14/dense_20/Tensordot/ReadVariableOpÌ
*model_14/dense_15/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_15_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02,
*model_14/dense_15/Tensordot/ReadVariableOp
 model_14/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_15/Tensordot/axes
 model_14/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_15/Tensordot/free|
!model_14/dense_15/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2#
!model_14/dense_15/Tensordot/Shape
)model_14/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_15/Tensordot/GatherV2/axis«
$model_14/dense_15/Tensordot/GatherV2GatherV2*model_14/dense_15/Tensordot/Shape:output:0)model_14/dense_15/Tensordot/free:output:02model_14/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_15/Tensordot/GatherV2
+model_14/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_15/Tensordot/GatherV2_1/axis±
&model_14/dense_15/Tensordot/GatherV2_1GatherV2*model_14/dense_15/Tensordot/Shape:output:0)model_14/dense_15/Tensordot/axes:output:04model_14/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_15/Tensordot/GatherV2_1
!model_14/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_15/Tensordot/ConstÈ
 model_14/dense_15/Tensordot/ProdProd-model_14/dense_15/Tensordot/GatherV2:output:0*model_14/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_15/Tensordot/Prod
#model_14/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_15/Tensordot/Const_1Ð
"model_14/dense_15/Tensordot/Prod_1Prod/model_14/dense_15/Tensordot/GatherV2_1:output:0,model_14/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_15/Tensordot/Prod_1
'model_14/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_15/Tensordot/concat/axis
"model_14/dense_15/Tensordot/concatConcatV2)model_14/dense_15/Tensordot/free:output:0)model_14/dense_15/Tensordot/axes:output:00model_14/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_15/Tensordot/concatÔ
!model_14/dense_15/Tensordot/stackPack)model_14/dense_15/Tensordot/Prod:output:0+model_14/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_15/Tensordot/stackÇ
%model_14/dense_15/Tensordot/transpose	Transposeinputs+model_14/dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_15/Tensordot/transposeç
#model_14/dense_15/Tensordot/ReshapeReshape)model_14/dense_15/Tensordot/transpose:y:0*model_14/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_15/Tensordot/Reshapeæ
"model_14/dense_15/Tensordot/MatMulMatMul,model_14/dense_15/Tensordot/Reshape:output:02model_14/dense_15/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model_14/dense_15/Tensordot/MatMul
#model_14/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_14/dense_15/Tensordot/Const_2
)model_14/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_15/Tensordot/concat_1/axis
$model_14/dense_15/Tensordot/concat_1ConcatV2-model_14/dense_15/Tensordot/GatherV2:output:0,model_14/dense_15/Tensordot/Const_2:output:02model_14/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_15/Tensordot/concat_1Ù
model_14/dense_15/TensordotReshape,model_14/dense_15/Tensordot/MatMul:product:0-model_14/dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_15/TensordotÂ
(model_14/dense_15/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_14/dense_15/BiasAdd/ReadVariableOpÐ
model_14/dense_15/BiasAddBiasAdd$model_14/dense_15/Tensordot:output:00model_14/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_15/BiasAddÌ
*model_14/dense_16/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02,
*model_14/dense_16/Tensordot/ReadVariableOp
 model_14/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_16/Tensordot/axes
 model_14/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_16/Tensordot/free
!model_14/dense_16/Tensordot/ShapeShape"model_14/dense_15/BiasAdd:output:0*
T0*
_output_shapes
:2#
!model_14/dense_16/Tensordot/Shape
)model_14/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_16/Tensordot/GatherV2/axis«
$model_14/dense_16/Tensordot/GatherV2GatherV2*model_14/dense_16/Tensordot/Shape:output:0)model_14/dense_16/Tensordot/free:output:02model_14/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_16/Tensordot/GatherV2
+model_14/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_16/Tensordot/GatherV2_1/axis±
&model_14/dense_16/Tensordot/GatherV2_1GatherV2*model_14/dense_16/Tensordot/Shape:output:0)model_14/dense_16/Tensordot/axes:output:04model_14/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_16/Tensordot/GatherV2_1
!model_14/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_16/Tensordot/ConstÈ
 model_14/dense_16/Tensordot/ProdProd-model_14/dense_16/Tensordot/GatherV2:output:0*model_14/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_16/Tensordot/Prod
#model_14/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_16/Tensordot/Const_1Ð
"model_14/dense_16/Tensordot/Prod_1Prod/model_14/dense_16/Tensordot/GatherV2_1:output:0,model_14/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_16/Tensordot/Prod_1
'model_14/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_16/Tensordot/concat/axis
"model_14/dense_16/Tensordot/concatConcatV2)model_14/dense_16/Tensordot/free:output:0)model_14/dense_16/Tensordot/axes:output:00model_14/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_16/Tensordot/concatÔ
!model_14/dense_16/Tensordot/stackPack)model_14/dense_16/Tensordot/Prod:output:0+model_14/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_16/Tensordot/stackã
%model_14/dense_16/Tensordot/transpose	Transpose"model_14/dense_15/BiasAdd:output:0+model_14/dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_16/Tensordot/transposeç
#model_14/dense_16/Tensordot/ReshapeReshape)model_14/dense_16/Tensordot/transpose:y:0*model_14/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_16/Tensordot/Reshapeæ
"model_14/dense_16/Tensordot/MatMulMatMul,model_14/dense_16/Tensordot/Reshape:output:02model_14/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"model_14/dense_16/Tensordot/MatMul
#model_14/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2%
#model_14/dense_16/Tensordot/Const_2
)model_14/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_16/Tensordot/concat_1/axis
$model_14/dense_16/Tensordot/concat_1ConcatV2-model_14/dense_16/Tensordot/GatherV2:output:0,model_14/dense_16/Tensordot/Const_2:output:02model_14/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_16/Tensordot/concat_1Ù
model_14/dense_16/TensordotReshape,model_14/dense_16/Tensordot/MatMul:product:0-model_14/dense_16/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_16/TensordotÂ
(model_14/dense_16/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_14/dense_16/BiasAdd/ReadVariableOpÐ
model_14/dense_16/BiasAddBiasAdd$model_14/dense_16/Tensordot:output:00model_14/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_16/BiasAdd
model_14/dense_16/ReluRelu"model_14/dense_16/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_16/ReluÍ
*model_14/dense_17/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_17_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02,
*model_14/dense_17/Tensordot/ReadVariableOp
 model_14/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_17/Tensordot/axes
 model_14/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_17/Tensordot/free
!model_14/dense_17/Tensordot/ShapeShape$model_14/dense_16/Relu:activations:0*
T0*
_output_shapes
:2#
!model_14/dense_17/Tensordot/Shape
)model_14/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_17/Tensordot/GatherV2/axis«
$model_14/dense_17/Tensordot/GatherV2GatherV2*model_14/dense_17/Tensordot/Shape:output:0)model_14/dense_17/Tensordot/free:output:02model_14/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_17/Tensordot/GatherV2
+model_14/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_17/Tensordot/GatherV2_1/axis±
&model_14/dense_17/Tensordot/GatherV2_1GatherV2*model_14/dense_17/Tensordot/Shape:output:0)model_14/dense_17/Tensordot/axes:output:04model_14/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_17/Tensordot/GatherV2_1
!model_14/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_17/Tensordot/ConstÈ
 model_14/dense_17/Tensordot/ProdProd-model_14/dense_17/Tensordot/GatherV2:output:0*model_14/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_17/Tensordot/Prod
#model_14/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_17/Tensordot/Const_1Ð
"model_14/dense_17/Tensordot/Prod_1Prod/model_14/dense_17/Tensordot/GatherV2_1:output:0,model_14/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_17/Tensordot/Prod_1
'model_14/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_17/Tensordot/concat/axis
"model_14/dense_17/Tensordot/concatConcatV2)model_14/dense_17/Tensordot/free:output:0)model_14/dense_17/Tensordot/axes:output:00model_14/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_17/Tensordot/concatÔ
!model_14/dense_17/Tensordot/stackPack)model_14/dense_17/Tensordot/Prod:output:0+model_14/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_17/Tensordot/stackå
%model_14/dense_17/Tensordot/transpose	Transpose$model_14/dense_16/Relu:activations:0+model_14/dense_17/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2'
%model_14/dense_17/Tensordot/transposeç
#model_14/dense_17/Tensordot/ReshapeReshape)model_14/dense_17/Tensordot/transpose:y:0*model_14/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_17/Tensordot/Reshapeç
"model_14/dense_17/Tensordot/MatMulMatMul,model_14/dense_17/Tensordot/Reshape:output:02model_14/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model_14/dense_17/Tensordot/MatMul
#model_14/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_14/dense_17/Tensordot/Const_2
)model_14/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_17/Tensordot/concat_1/axis
$model_14/dense_17/Tensordot/concat_1ConcatV2-model_14/dense_17/Tensordot/GatherV2:output:0,model_14/dense_17/Tensordot/Const_2:output:02model_14/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_17/Tensordot/concat_1Ú
model_14/dense_17/TensordotReshape,model_14/dense_17/Tensordot/MatMul:product:0-model_14/dense_17/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_17/TensordotÃ
(model_14/dense_17/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_14/dense_17/BiasAdd/ReadVariableOpÑ
model_14/dense_17/BiasAddBiasAdd$model_14/dense_17/Tensordot:output:00model_14/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_17/BiasAdd
model_14/dense_17/ReluRelu"model_14/dense_17/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_17/ReluÎ
*model_14/dense_18/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_18_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*model_14/dense_18/Tensordot/ReadVariableOp
 model_14/dense_18/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_18/Tensordot/axes
 model_14/dense_18/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_18/Tensordot/free
!model_14/dense_18/Tensordot/ShapeShape$model_14/dense_17/Relu:activations:0*
T0*
_output_shapes
:2#
!model_14/dense_18/Tensordot/Shape
)model_14/dense_18/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_18/Tensordot/GatherV2/axis«
$model_14/dense_18/Tensordot/GatherV2GatherV2*model_14/dense_18/Tensordot/Shape:output:0)model_14/dense_18/Tensordot/free:output:02model_14/dense_18/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_18/Tensordot/GatherV2
+model_14/dense_18/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_18/Tensordot/GatherV2_1/axis±
&model_14/dense_18/Tensordot/GatherV2_1GatherV2*model_14/dense_18/Tensordot/Shape:output:0)model_14/dense_18/Tensordot/axes:output:04model_14/dense_18/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_18/Tensordot/GatherV2_1
!model_14/dense_18/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_18/Tensordot/ConstÈ
 model_14/dense_18/Tensordot/ProdProd-model_14/dense_18/Tensordot/GatherV2:output:0*model_14/dense_18/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_18/Tensordot/Prod
#model_14/dense_18/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_18/Tensordot/Const_1Ð
"model_14/dense_18/Tensordot/Prod_1Prod/model_14/dense_18/Tensordot/GatherV2_1:output:0,model_14/dense_18/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_18/Tensordot/Prod_1
'model_14/dense_18/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_18/Tensordot/concat/axis
"model_14/dense_18/Tensordot/concatConcatV2)model_14/dense_18/Tensordot/free:output:0)model_14/dense_18/Tensordot/axes:output:00model_14/dense_18/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_18/Tensordot/concatÔ
!model_14/dense_18/Tensordot/stackPack)model_14/dense_18/Tensordot/Prod:output:0+model_14/dense_18/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_18/Tensordot/stackæ
%model_14/dense_18/Tensordot/transpose	Transpose$model_14/dense_17/Relu:activations:0+model_14/dense_18/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_18/Tensordot/transposeç
#model_14/dense_18/Tensordot/ReshapeReshape)model_14/dense_18/Tensordot/transpose:y:0*model_14/dense_18/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_18/Tensordot/Reshapeç
"model_14/dense_18/Tensordot/MatMulMatMul,model_14/dense_18/Tensordot/Reshape:output:02model_14/dense_18/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model_14/dense_18/Tensordot/MatMul
#model_14/dense_18/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_14/dense_18/Tensordot/Const_2
)model_14/dense_18/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_18/Tensordot/concat_1/axis
$model_14/dense_18/Tensordot/concat_1ConcatV2-model_14/dense_18/Tensordot/GatherV2:output:0,model_14/dense_18/Tensordot/Const_2:output:02model_14/dense_18/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_18/Tensordot/concat_1Ú
model_14/dense_18/TensordotReshape,model_14/dense_18/Tensordot/MatMul:product:0-model_14/dense_18/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_18/TensordotÃ
(model_14/dense_18/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_14/dense_18/BiasAdd/ReadVariableOpÑ
model_14/dense_18/BiasAddBiasAdd$model_14/dense_18/Tensordot:output:00model_14/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_18/BiasAdd
model_14/dense_18/ReluRelu"model_14/dense_18/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_18/ReluÎ
*model_14/dense_19/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_19_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*model_14/dense_19/Tensordot/ReadVariableOp
 model_14/dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_19/Tensordot/axes
 model_14/dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_19/Tensordot/free
!model_14/dense_19/Tensordot/ShapeShape$model_14/dense_18/Relu:activations:0*
T0*
_output_shapes
:2#
!model_14/dense_19/Tensordot/Shape
)model_14/dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_19/Tensordot/GatherV2/axis«
$model_14/dense_19/Tensordot/GatherV2GatherV2*model_14/dense_19/Tensordot/Shape:output:0)model_14/dense_19/Tensordot/free:output:02model_14/dense_19/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_19/Tensordot/GatherV2
+model_14/dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_19/Tensordot/GatherV2_1/axis±
&model_14/dense_19/Tensordot/GatherV2_1GatherV2*model_14/dense_19/Tensordot/Shape:output:0)model_14/dense_19/Tensordot/axes:output:04model_14/dense_19/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_19/Tensordot/GatherV2_1
!model_14/dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_19/Tensordot/ConstÈ
 model_14/dense_19/Tensordot/ProdProd-model_14/dense_19/Tensordot/GatherV2:output:0*model_14/dense_19/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_19/Tensordot/Prod
#model_14/dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_19/Tensordot/Const_1Ð
"model_14/dense_19/Tensordot/Prod_1Prod/model_14/dense_19/Tensordot/GatherV2_1:output:0,model_14/dense_19/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_19/Tensordot/Prod_1
'model_14/dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_19/Tensordot/concat/axis
"model_14/dense_19/Tensordot/concatConcatV2)model_14/dense_19/Tensordot/free:output:0)model_14/dense_19/Tensordot/axes:output:00model_14/dense_19/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_19/Tensordot/concatÔ
!model_14/dense_19/Tensordot/stackPack)model_14/dense_19/Tensordot/Prod:output:0+model_14/dense_19/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_19/Tensordot/stackæ
%model_14/dense_19/Tensordot/transpose	Transpose$model_14/dense_18/Relu:activations:0+model_14/dense_19/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_19/Tensordot/transposeç
#model_14/dense_19/Tensordot/ReshapeReshape)model_14/dense_19/Tensordot/transpose:y:0*model_14/dense_19/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_19/Tensordot/Reshapeç
"model_14/dense_19/Tensordot/MatMulMatMul,model_14/dense_19/Tensordot/Reshape:output:02model_14/dense_19/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model_14/dense_19/Tensordot/MatMul
#model_14/dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_14/dense_19/Tensordot/Const_2
)model_14/dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_19/Tensordot/concat_1/axis
$model_14/dense_19/Tensordot/concat_1ConcatV2-model_14/dense_19/Tensordot/GatherV2:output:0,model_14/dense_19/Tensordot/Const_2:output:02model_14/dense_19/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_19/Tensordot/concat_1Ú
model_14/dense_19/TensordotReshape,model_14/dense_19/Tensordot/MatMul:product:0-model_14/dense_19/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_19/TensordotÃ
(model_14/dense_19/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_14/dense_19/BiasAdd/ReadVariableOpÑ
model_14/dense_19/BiasAddBiasAdd$model_14/dense_19/Tensordot:output:00model_14/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_19/BiasAdd
model_14/dense_19/ReluRelu"model_14/dense_19/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2
model_14/dense_19/Relu
 model_14/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model_14/dropout_1/dropout/ConstÐ
model_14/dropout_1/dropout/MulMul$model_14/dense_19/Relu:activations:0)model_14/dropout_1/dropout/Const:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2 
model_14/dropout_1/dropout/Mul
 model_14/dropout_1/dropout/ShapeShape$model_14/dense_19/Relu:activations:0*
T0*
_output_shapes
:2"
 model_14/dropout_1/dropout/Shapeó
7model_14/dropout_1/dropout/random_uniform/RandomUniformRandomUniform)model_14/dropout_1/dropout/Shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*
dtype029
7model_14/dropout_1/dropout/random_uniform/RandomUniform
)model_14/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2+
)model_14/dropout_1/dropout/GreaterEqual/y
'model_14/dropout_1/dropout/GreaterEqualGreaterEqual@model_14/dropout_1/dropout/random_uniform/RandomUniform:output:02model_14/dropout_1/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2)
'model_14/dropout_1/dropout/GreaterEqual¾
model_14/dropout_1/dropout/CastCast+model_14/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2!
model_14/dropout_1/dropout/CastÌ
 model_14/dropout_1/dropout/Mul_1Mul"model_14/dropout_1/dropout/Mul:z:0#model_14/dropout_1/dropout/Cast:y:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2"
 model_14/dropout_1/dropout/Mul_1Í
*model_14/dense_20/Tensordot/ReadVariableOpReadVariableOp3model_14_dense_20_tensordot_readvariableop_resource*
_output_shapes
:	@*
dtype02,
*model_14/dense_20/Tensordot/ReadVariableOp
 model_14/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2"
 model_14/dense_20/Tensordot/axes
 model_14/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 model_14/dense_20/Tensordot/free
!model_14/dense_20/Tensordot/ShapeShape$model_14/dropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2#
!model_14/dense_20/Tensordot/Shape
)model_14/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_20/Tensordot/GatherV2/axis«
$model_14/dense_20/Tensordot/GatherV2GatherV2*model_14/dense_20/Tensordot/Shape:output:0)model_14/dense_20/Tensordot/free:output:02model_14/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_14/dense_20/Tensordot/GatherV2
+model_14/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_14/dense_20/Tensordot/GatherV2_1/axis±
&model_14/dense_20/Tensordot/GatherV2_1GatherV2*model_14/dense_20/Tensordot/Shape:output:0)model_14/dense_20/Tensordot/axes:output:04model_14/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model_14/dense_20/Tensordot/GatherV2_1
!model_14/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_14/dense_20/Tensordot/ConstÈ
 model_14/dense_20/Tensordot/ProdProd-model_14/dense_20/Tensordot/GatherV2:output:0*model_14/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 2"
 model_14/dense_20/Tensordot/Prod
#model_14/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#model_14/dense_20/Tensordot/Const_1Ð
"model_14/dense_20/Tensordot/Prod_1Prod/model_14/dense_20/Tensordot/GatherV2_1:output:0,model_14/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2$
"model_14/dense_20/Tensordot/Prod_1
'model_14/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_14/dense_20/Tensordot/concat/axis
"model_14/dense_20/Tensordot/concatConcatV2)model_14/dense_20/Tensordot/free:output:0)model_14/dense_20/Tensordot/axes:output:00model_14/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_14/dense_20/Tensordot/concatÔ
!model_14/dense_20/Tensordot/stackPack)model_14/dense_20/Tensordot/Prod:output:0+model_14/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2#
!model_14/dense_20/Tensordot/stackæ
%model_14/dense_20/Tensordot/transpose	Transpose$model_14/dropout_1/dropout/Mul_1:z:0+model_14/dense_20/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2'
%model_14/dense_20/Tensordot/transposeç
#model_14/dense_20/Tensordot/ReshapeReshape)model_14/dense_20/Tensordot/transpose:y:0*model_14/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model_14/dense_20/Tensordot/Reshapeæ
"model_14/dense_20/Tensordot/MatMulMatMul,model_14/dense_20/Tensordot/Reshape:output:02model_14/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"model_14/dense_20/Tensordot/MatMul
#model_14/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2%
#model_14/dense_20/Tensordot/Const_2
)model_14/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_14/dense_20/Tensordot/concat_1/axis
$model_14/dense_20/Tensordot/concat_1ConcatV2-model_14/dense_20/Tensordot/GatherV2:output:0,model_14/dense_20/Tensordot/Const_2:output:02model_14/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2&
$model_14/dense_20/Tensordot/concat_1Ù
model_14/dense_20/TensordotReshape,model_14/dense_20/Tensordot/MatMul:product:0-model_14/dense_20/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_20/TensordotÂ
(model_14/dense_20/BiasAdd/ReadVariableOpReadVariableOp1model_14_dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_14/dense_20/BiasAdd/ReadVariableOpÐ
model_14/dense_20/BiasAddBiasAdd$model_14/dense_20/Tensordot:output:00model_14/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_20/BiasAdd
model_14/dense_20/ReluRelu"model_14/dense_20/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»@2
model_14/dense_20/Relu
model_14/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ.  2
model_14/flatten_1/Const¿
model_14/flatten_1/ReshapeReshape$model_14/dense_20/Relu:activations:0!model_14/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]2
model_14/flatten_1/Reshape¦
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	À]*
dtype02
dense_5/MatMul/ReadVariableOp¨
dense_5/MatMulMatMul#model_14/flatten_1/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_5/MatMul¤
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOp¡
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_5/BiasAddy
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_5/Softmax¾
IdentityIdentitydense_5/Softmax:softmax:0^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp)^model_14/dense_15/BiasAdd/ReadVariableOp+^model_14/dense_15/Tensordot/ReadVariableOp)^model_14/dense_16/BiasAdd/ReadVariableOp+^model_14/dense_16/Tensordot/ReadVariableOp)^model_14/dense_17/BiasAdd/ReadVariableOp+^model_14/dense_17/Tensordot/ReadVariableOp)^model_14/dense_18/BiasAdd/ReadVariableOp+^model_14/dense_18/Tensordot/ReadVariableOp)^model_14/dense_19/BiasAdd/ReadVariableOp+^model_14/dense_19/Tensordot/ReadVariableOp)^model_14/dense_20/BiasAdd/ReadVariableOp+^model_14/dense_20/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2T
(model_14/dense_15/BiasAdd/ReadVariableOp(model_14/dense_15/BiasAdd/ReadVariableOp2X
*model_14/dense_15/Tensordot/ReadVariableOp*model_14/dense_15/Tensordot/ReadVariableOp2T
(model_14/dense_16/BiasAdd/ReadVariableOp(model_14/dense_16/BiasAdd/ReadVariableOp2X
*model_14/dense_16/Tensordot/ReadVariableOp*model_14/dense_16/Tensordot/ReadVariableOp2T
(model_14/dense_17/BiasAdd/ReadVariableOp(model_14/dense_17/BiasAdd/ReadVariableOp2X
*model_14/dense_17/Tensordot/ReadVariableOp*model_14/dense_17/Tensordot/ReadVariableOp2T
(model_14/dense_18/BiasAdd/ReadVariableOp(model_14/dense_18/BiasAdd/ReadVariableOp2X
*model_14/dense_18/Tensordot/ReadVariableOp*model_14/dense_18/Tensordot/ReadVariableOp2T
(model_14/dense_19/BiasAdd/ReadVariableOp(model_14/dense_19/BiasAdd/ReadVariableOp2X
*model_14/dense_19/Tensordot/ReadVariableOp*model_14/dense_19/Tensordot/ReadVariableOp2T
(model_14/dense_20/BiasAdd/ReadVariableOp(model_14/dense_20/BiasAdd/ReadVariableOp2X
*model_14/dense_20/Tensordot/ReadVariableOp*model_14/dense_20/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs
ð
~
)__inference_dense_15_layer_call_fn_444648

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4429752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ»::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs

Í
D__inference_model_15_layer_call_and_return_conditional_losses_443553
input_7
model_14_443500
model_14_443502
model_14_443504
model_14_443506
model_14_443508
model_14_443510
model_14_443512
model_14_443514
model_14_443516
model_14_443518
model_14_443520
model_14_443522
dense_5_443547
dense_5_443549
identity¢dense_5/StatefulPartitionedCall¢ model_14/StatefulPartitionedCallÔ
 model_14/StatefulPartitionedCallStatefulPartitionedCallinput_7model_14_443500model_14_443502model_14_443504model_14_443506model_14_443508model_14_443510model_14_443512model_14_443514model_14_443516model_14_443518model_14_443520model_14_443522*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_14_layer_call_and_return_conditional_losses_4433462"
 model_14/StatefulPartitionedCall²
dense_5/StatefulPartitionedCallStatefulPartitionedCall)model_14/StatefulPartitionedCall:output:0dense_5_443547dense_5_443549*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4435362!
dense_5/StatefulPartitionedCallÁ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0 ^dense_5/StatefulPartitionedCall!^model_14/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2D
 model_14/StatefulPartitionedCall model_14/StatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
!
_user_specified_name	input_7
ø	
Ü
C__inference_dense_5_layer_call_and_return_conditional_losses_444600

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À]*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ]::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]
 
_user_specified_nameinputs
í	
µ
)__inference_model_15_layer_call_fn_444155

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_4436242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ»::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¯
serving_default
@
input_75
serving_default_input_7:0ÿÿÿÿÿÿÿÿÿ»;
dense_50
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:
S
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
+µ&call_and_return_all_conditional_losses
¶_default_save_signature
·__call__"âP
_tf_keras_networkÆP{"class_name": "Functional", "name": "model_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_7"}, "name": "input_7", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "model_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_15", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_16", "inbound_nodes": [[["dense_15", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_17", "inbound_nodes": [[["dense_16", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_18", "inbound_nodes": [[["dense_17", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_19", "inbound_nodes": [[["dense_18", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["dense_19", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_20", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["dense_20", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["flatten_1", 0, 0]]}, "name": "model_14", "inbound_nodes": [[["input_7", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["model_14", 1, 0, {}]]]}], "input_layers": [["input_7", 0, 0]], "output_layers": [["dense_5", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 187, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_7"}, "name": "input_7", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "model_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_15", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_16", "inbound_nodes": [[["dense_15", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_17", "inbound_nodes": [[["dense_16", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_18", "inbound_nodes": [[["dense_17", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_19", "inbound_nodes": [[["dense_18", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["dense_19", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_20", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["dense_20", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["flatten_1", 0, 0]]}, "name": "model_14", "inbound_nodes": [[["input_7", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["model_14", 1, 0, {}]]]}], "input_layers": [["input_7", 0, 0]], "output_layers": [["dense_5", 0, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-08, "amsgrad": false}}}}
ó"ð
_tf_keras_input_layerÐ{"class_name": "InputLayer", "name": "input_7", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_7"}}
íA

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
layer-8
trainable_variables
regularization_losses
	variables
	keras_api
+¸&call_and_return_all_conditional_losses
¹__call__"Ë>
_tf_keras_network¯>{"class_name": "Functional", "name": "model_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_15", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_16", "inbound_nodes": [[["dense_15", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_17", "inbound_nodes": [[["dense_16", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_18", "inbound_nodes": [[["dense_17", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_19", "inbound_nodes": [[["dense_18", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["dense_19", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_20", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["dense_20", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["flatten_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 187, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_15", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_16", "inbound_nodes": [[["dense_15", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_17", "inbound_nodes": [[["dense_16", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_18", "inbound_nodes": [[["dense_17", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_19", "inbound_nodes": [[["dense_18", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["dense_19", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_20", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["dense_20", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["flatten_1", 0, 0]]}}}
ú

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+º&call_and_return_all_conditional_losses
»__call__"Ó
_tf_keras_layer¹{"class_name": "Dense", "name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11968}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11968]}}
ë
iter

beta_1

beta_2
	 decay
!learning_ratemm"m#m$m%m&m'm (m¡)m¢*m£+m¤,m¥-m¦v§v¨"v©#vª$v«%v¬&v­'v®(v¯)v°*v±+v²,v³-v´"
	optimizer

"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper

"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
12
13"
trackable_list_wrapper
Î
.non_trainable_variables
trainable_variables
regularization_losses
/metrics

0layers
1layer_metrics
2layer_regularization_losses
	variables
·__call__
¶_default_save_signature
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
-
¼serving_default"
signature_map

#3_self_saveable_object_factories"ð
_tf_keras_input_layerÐ{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 187, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}


"kernel
#bias
#4_self_saveable_object_factories
5trainable_variables
6regularization_losses
7	variables
8	keras_api
+½&call_and_return_all_conditional_losses
¾__call__"Ñ
_tf_keras_layer·{"class_name": "Dense", "name": "dense_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 187, 1]}}


$kernel
%bias
#9_self_saveable_object_factories
:trainable_variables
;regularization_losses
<	variables
=	keras_api
+¿&call_and_return_all_conditional_losses
À__call__"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "dense_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 187, 5]}}


&kernel
'bias
#>_self_saveable_object_factories
?trainable_variables
@regularization_losses
A	variables
B	keras_api
+Á&call_and_return_all_conditional_losses
Â__call__"Ó
_tf_keras_layer¹{"class_name": "Dense", "name": "dense_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_17", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 187, 64]}}
¡

(kernel
)bias
#C_self_saveable_object_factories
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
+Ã&call_and_return_all_conditional_losses
Ä__call__"Õ
_tf_keras_layer»{"class_name": "Dense", "name": "dense_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 187, 128]}}
¡

*kernel
+bias
#H_self_saveable_object_factories
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
+Å&call_and_return_all_conditional_losses
Æ__call__"Õ
_tf_keras_layer»{"class_name": "Dense", "name": "dense_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 187, 128]}}

#M_self_saveable_object_factories
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
+Ç&call_and_return_all_conditional_losses
È__call__"Ö
_tf_keras_layer¼{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
 

,kernel
-bias
#R_self_saveable_object_factories
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
+É&call_and_return_all_conditional_losses
Ê__call__"Ô
_tf_keras_layerº{"class_name": "Dense", "name": "dense_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 187, 128]}}

#W_self_saveable_object_factories
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
+Ë&call_and_return_all_conditional_losses
Ì__call__"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
v
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11"
trackable_list_wrapper
 "
trackable_list_wrapper
v
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11"
trackable_list_wrapper
°
\non_trainable_variables
trainable_variables
regularization_losses
]metrics

^layers
_layer_metrics
`layer_regularization_losses
	variables
¹__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
!:	À]2dense_5/kernel
:2dense_5/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
anon_trainable_variables
trainable_variables
regularization_losses
bmetrics

clayers
dlayer_metrics
elayer_regularization_losses
	variables
»__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
!:2dense_15/kernel
:2dense_15/bias
!:@2dense_16/kernel
:@2dense_16/bias
": 	@2dense_17/kernel
:2dense_17/bias
#:!
2dense_18/kernel
:2dense_18/bias
#:!
2dense_19/kernel
:2dense_19/bias
": 	@2dense_20/kernel
:@2dense_20/bias
 "
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
°
hnon_trainable_variables
5trainable_variables
6regularization_losses
imetrics

jlayers
klayer_metrics
llayer_regularization_losses
7	variables
¾__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
°
mnon_trainable_variables
:trainable_variables
;regularization_losses
nmetrics

olayers
player_metrics
qlayer_regularization_losses
<	variables
À__call__
+¿&call_and_return_all_conditional_losses
'¿"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
°
rnon_trainable_variables
?trainable_variables
@regularization_losses
smetrics

tlayers
ulayer_metrics
vlayer_regularization_losses
A	variables
Â__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
°
wnon_trainable_variables
Dtrainable_variables
Eregularization_losses
xmetrics

ylayers
zlayer_metrics
{layer_regularization_losses
F	variables
Ä__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
±
|non_trainable_variables
Itrainable_variables
Jregularization_losses
}metrics

~layers
layer_metrics
 layer_regularization_losses
K	variables
Æ__call__
+Å&call_and_return_all_conditional_losses
'Å"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
Ntrainable_variables
Oregularization_losses
metrics
layers
layer_metrics
 layer_regularization_losses
P	variables
È__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
µ
non_trainable_variables
Strainable_variables
Tregularization_losses
metrics
layers
layer_metrics
 layer_regularization_losses
U	variables
Ê__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
Xtrainable_variables
Yregularization_losses
metrics
layers
layer_metrics
 layer_regularization_losses
Z	variables
Ì__call__
+Ë&call_and_return_all_conditional_losses
'Ë"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
_

0
1
2
3
4
5
6
7
8"
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
¿

total

count
	variables
	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


total

count

_fn_kwargs
	variables
	keras_api"¸
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
&:$	À]2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
&:$2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
&:$@2Adam/dense_16/kernel/m
 :@2Adam/dense_16/bias/m
':%	@2Adam/dense_17/kernel/m
!:2Adam/dense_17/bias/m
(:&
2Adam/dense_18/kernel/m
!:2Adam/dense_18/bias/m
(:&
2Adam/dense_19/kernel/m
!:2Adam/dense_19/bias/m
':%	@2Adam/dense_20/kernel/m
 :@2Adam/dense_20/bias/m
&:$	À]2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
&:$2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/v
&:$@2Adam/dense_16/kernel/v
 :@2Adam/dense_16/bias/v
':%	@2Adam/dense_17/kernel/v
!:2Adam/dense_17/bias/v
(:&
2Adam/dense_18/kernel/v
!:2Adam/dense_18/bias/v
(:&
2Adam/dense_19/kernel/v
!:2Adam/dense_19/bias/v
':%	@2Adam/dense_20/kernel/v
 :@2Adam/dense_20/bias/v
Þ2Û
D__inference_model_15_layer_call_and_return_conditional_losses_443947
D__inference_model_15_layer_call_and_return_conditional_losses_443587
D__inference_model_15_layer_call_and_return_conditional_losses_444122
D__inference_model_15_layer_call_and_return_conditional_losses_443553À
·²³
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ä2á
!__inference__wrapped_model_442941»
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *+¢(
&#
input_7ÿÿÿÿÿÿÿÿÿ»
ò2ï
)__inference_model_15_layer_call_fn_444155
)__inference_model_15_layer_call_fn_443655
)__inference_model_15_layer_call_fn_443722
)__inference_model_15_layer_call_fn_444188À
·²³
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
D__inference_model_14_layer_call_and_return_conditional_losses_444363
D__inference_model_14_layer_call_and_return_conditional_losses_443307
D__inference_model_14_layer_call_and_return_conditional_losses_444531
D__inference_model_14_layer_call_and_return_conditional_losses_443271À
·²³
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
)__inference_model_14_layer_call_fn_444560
)__inference_model_14_layer_call_fn_444589
)__inference_model_14_layer_call_fn_443438
)__inference_model_14_layer_call_fn_443373À
·²³
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
í2ê
C__inference_dense_5_layer_call_and_return_conditional_losses_444600¢
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
Ò2Ï
(__inference_dense_5_layer_call_fn_444609¢
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
ËBÈ
$__inference_signature_wrapper_443765input_7"
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
î2ë
D__inference_dense_15_layer_call_and_return_conditional_losses_444639¢
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
Ó2Ð
)__inference_dense_15_layer_call_fn_444648¢
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
î2ë
D__inference_dense_16_layer_call_and_return_conditional_losses_444679¢
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
Ó2Ð
)__inference_dense_16_layer_call_fn_444688¢
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
î2ë
D__inference_dense_17_layer_call_and_return_conditional_losses_444719¢
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
Ó2Ð
)__inference_dense_17_layer_call_fn_444728¢
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
î2ë
D__inference_dense_18_layer_call_and_return_conditional_losses_444759¢
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
Ó2Ð
)__inference_dense_18_layer_call_fn_444768¢
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
î2ë
D__inference_dense_19_layer_call_and_return_conditional_losses_444799¢
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
Ó2Ð
)__inference_dense_19_layer_call_fn_444808¢
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
È2Å
E__inference_dropout_1_layer_call_and_return_conditional_losses_444825
E__inference_dropout_1_layer_call_and_return_conditional_losses_444820´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
*__inference_dropout_1_layer_call_fn_444830
*__inference_dropout_1_layer_call_fn_444835´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_dense_20_layer_call_and_return_conditional_losses_444866¢
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
Ó2Ð
)__inference_dense_20_layer_call_fn_444875¢
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
ï2ì
E__inference_flatten_1_layer_call_and_return_conditional_losses_444881¢
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
Ô2Ñ
*__inference_flatten_1_layer_call_fn_444886¢
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
 
!__inference__wrapped_model_442941z"#$%&'()*+,-5¢2
+¢(
&#
input_7ÿÿÿÿÿÿÿÿÿ»
ª "1ª.
,
dense_5!
dense_5ÿÿÿÿÿÿÿÿÿ®
D__inference_dense_15_layer_call_and_return_conditional_losses_444639f"#4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ»
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ»
 
)__inference_dense_15_layer_call_fn_444648Y"#4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ»
ª "ÿÿÿÿÿÿÿÿÿ»®
D__inference_dense_16_layer_call_and_return_conditional_losses_444679f$%4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ»
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ»@
 
)__inference_dense_16_layer_call_fn_444688Y$%4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ»
ª "ÿÿÿÿÿÿÿÿÿ»@¯
D__inference_dense_17_layer_call_and_return_conditional_losses_444719g&'4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ»@
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ»
 
)__inference_dense_17_layer_call_fn_444728Z&'4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ»@
ª "ÿÿÿÿÿÿÿÿÿ»°
D__inference_dense_18_layer_call_and_return_conditional_losses_444759h()5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ»
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ»
 
)__inference_dense_18_layer_call_fn_444768[()5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ»
ª "ÿÿÿÿÿÿÿÿÿ»°
D__inference_dense_19_layer_call_and_return_conditional_losses_444799h*+5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ»
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ»
 
)__inference_dense_19_layer_call_fn_444808[*+5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ»
ª "ÿÿÿÿÿÿÿÿÿ»¯
D__inference_dense_20_layer_call_and_return_conditional_losses_444866g,-5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ»
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ»@
 
)__inference_dense_20_layer_call_fn_444875Z,-5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ»
ª "ÿÿÿÿÿÿÿÿÿ»@¤
C__inference_dense_5_layer_call_and_return_conditional_losses_444600]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ]
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
(__inference_dense_5_layer_call_fn_444609P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ]
ª "ÿÿÿÿÿÿÿÿÿ±
E__inference_dropout_1_layer_call_and_return_conditional_losses_444820h9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ»
p
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ»
 ±
E__inference_dropout_1_layer_call_and_return_conditional_losses_444825h9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ»
p 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ»
 
*__inference_dropout_1_layer_call_fn_444830[9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ»
p
ª "ÿÿÿÿÿÿÿÿÿ»
*__inference_dropout_1_layer_call_fn_444835[9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ»
p 
ª "ÿÿÿÿÿÿÿÿÿ»§
E__inference_flatten_1_layer_call_and_return_conditional_losses_444881^4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ»@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ]
 
*__inference_flatten_1_layer_call_fn_444886Q4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ»@
ª "ÿÿÿÿÿÿÿÿÿÀ]½
D__inference_model_14_layer_call_and_return_conditional_losses_443271u"#$%&'()*+,-=¢:
3¢0
&#
input_2ÿÿÿÿÿÿÿÿÿ»
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ]
 ½
D__inference_model_14_layer_call_and_return_conditional_losses_443307u"#$%&'()*+,-=¢:
3¢0
&#
input_2ÿÿÿÿÿÿÿÿÿ»
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ]
 ¼
D__inference_model_14_layer_call_and_return_conditional_losses_444363t"#$%&'()*+,-<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ»
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ]
 ¼
D__inference_model_14_layer_call_and_return_conditional_losses_444531t"#$%&'()*+,-<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ»
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ]
 
)__inference_model_14_layer_call_fn_443373h"#$%&'()*+,-=¢:
3¢0
&#
input_2ÿÿÿÿÿÿÿÿÿ»
p

 
ª "ÿÿÿÿÿÿÿÿÿÀ]
)__inference_model_14_layer_call_fn_443438h"#$%&'()*+,-=¢:
3¢0
&#
input_2ÿÿÿÿÿÿÿÿÿ»
p 

 
ª "ÿÿÿÿÿÿÿÿÿÀ]
)__inference_model_14_layer_call_fn_444560g"#$%&'()*+,-<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ»
p

 
ª "ÿÿÿÿÿÿÿÿÿÀ]
)__inference_model_14_layer_call_fn_444589g"#$%&'()*+,-<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ»
p 

 
ª "ÿÿÿÿÿÿÿÿÿÀ]¾
D__inference_model_15_layer_call_and_return_conditional_losses_443553v"#$%&'()*+,-=¢:
3¢0
&#
input_7ÿÿÿÿÿÿÿÿÿ»
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¾
D__inference_model_15_layer_call_and_return_conditional_losses_443587v"#$%&'()*+,-=¢:
3¢0
&#
input_7ÿÿÿÿÿÿÿÿÿ»
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
D__inference_model_15_layer_call_and_return_conditional_losses_443947u"#$%&'()*+,-<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ»
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
D__inference_model_15_layer_call_and_return_conditional_losses_444122u"#$%&'()*+,-<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ»
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_model_15_layer_call_fn_443655i"#$%&'()*+,-=¢:
3¢0
&#
input_7ÿÿÿÿÿÿÿÿÿ»
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_15_layer_call_fn_443722i"#$%&'()*+,-=¢:
3¢0
&#
input_7ÿÿÿÿÿÿÿÿÿ»
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_15_layer_call_fn_444155h"#$%&'()*+,-<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ»
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_15_layer_call_fn_444188h"#$%&'()*+,-<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ»
p 

 
ª "ÿÿÿÿÿÿÿÿÿ®
$__inference_signature_wrapper_443765"#$%&'()*+,-@¢=
¢ 
6ª3
1
input_7&#
input_7ÿÿÿÿÿÿÿÿÿ»"1ª.
,
dense_5!
dense_5ÿÿÿÿÿÿÿÿÿ