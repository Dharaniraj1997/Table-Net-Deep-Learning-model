,
Ø
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

À
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
ö
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.0-dev202105252v1.12.1-57407-g4d8ac6e53fb8²#

block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel

'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0

block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel

'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0

block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock2_conv1/kernel

'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:*
dtype0

block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock2_conv2/kernel

'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:*
dtype0

block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv1/kernel

'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:*
dtype0

block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv2/kernel

'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:*
dtype0

block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv3/kernel

'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:*
dtype0

block3_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv4/kernel

'block3_conv4/kernel/Read/ReadVariableOpReadVariableOpblock3_conv4/kernel*(
_output_shapes
:*
dtype0
{
block3_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv4/bias
t
%block3_conv4/bias/Read/ReadVariableOpReadVariableOpblock3_conv4/bias*
_output_shapes	
:*
dtype0

block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv1/kernel

'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:*
dtype0

block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv2/kernel

'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:*
dtype0

block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv3/kernel

'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:*
dtype0

block4_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv4/kernel

'block4_conv4/kernel/Read/ReadVariableOpReadVariableOpblock4_conv4/kernel*(
_output_shapes
:*
dtype0
{
block4_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv4/bias
t
%block4_conv4/bias/Read/ReadVariableOpReadVariableOpblock4_conv4/bias*
_output_shapes	
:*
dtype0

block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv1/kernel

'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:*
dtype0

block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv2/kernel

'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:*
dtype0

block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv3/kernel

'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:*
dtype0

block5_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv4/kernel

'block5_conv4/kernel/Read/ReadVariableOpReadVariableOpblock5_conv4/kernel*(
_output_shapes
:*
dtype0
{
block5_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv4/bias
t
%block5_conv4/bias/Read/ReadVariableOpReadVariableOpblock5_conv4/bias*
_output_shapes	
:*
dtype0

block6_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock6_conv1/kernel

'block6_conv1/kernel/Read/ReadVariableOpReadVariableOpblock6_conv1/kernel*(
_output_shapes
:*
dtype0
{
block6_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock6_conv1/bias
t
%block6_conv1/bias/Read/ReadVariableOpReadVariableOpblock6_conv1/bias*
_output_shapes	
:*
dtype0

block6_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock6_conv2/kernel

'block6_conv2/kernel/Read/ReadVariableOpReadVariableOpblock6_conv2/kernel*(
_output_shapes
:*
dtype0
{
block6_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock6_conv2/bias
t
%block6_conv2/bias/Read/ReadVariableOpReadVariableOpblock6_conv2/bias*
_output_shapes	
:*
dtype0

table_mask/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nametable_mask/conv2d/kernel

,table_mask/conv2d/kernel/Read/ReadVariableOpReadVariableOptable_mask/conv2d/kernel*(
_output_shapes
:*
dtype0

table_mask/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nametable_mask/conv2d/bias
~
*table_mask/conv2d/bias/Read/ReadVariableOpReadVariableOptable_mask/conv2d/bias*
_output_shapes	
:*
dtype0
©
"table_mask/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"table_mask/conv2d_transpose/kernel
¢
6table_mask/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp"table_mask/conv2d_transpose/kernel*'
_output_shapes
:*
dtype0

 table_mask/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" table_mask/conv2d_transpose/bias

4table_mask/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp table_mask/conv2d_transpose/bias*
_output_shapes
:*
dtype0

col_mask/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecol_mask/conv2d_1/kernel

,col_mask/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpcol_mask/conv2d_1/kernel*(
_output_shapes
:*
dtype0

col_mask/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namecol_mask/conv2d_1/bias
~
*col_mask/conv2d_1/bias/Read/ReadVariableOpReadVariableOpcol_mask/conv2d_1/bias*
_output_shapes	
:*
dtype0

col_mask/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecol_mask/conv2d_2/kernel

,col_mask/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpcol_mask/conv2d_2/kernel*(
_output_shapes
:*
dtype0

col_mask/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namecol_mask/conv2d_2/bias
~
*col_mask/conv2d_2/bias/Read/ReadVariableOpReadVariableOpcol_mask/conv2d_2/bias*
_output_shapes	
:*
dtype0
©
"col_mask/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"col_mask/conv2d_transpose_1/kernel
¢
6col_mask/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp"col_mask/conv2d_transpose_1/kernel*'
_output_shapes
:*
dtype0

 col_mask/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" col_mask/conv2d_transpose_1/bias

4col_mask/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp col_mask/conv2d_transpose_1/bias*
_output_shapes
:*
dtype0

NoOpNoOp
ó
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*­
value¢B B

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer_with_weights-12
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
layer_with_weights-15
layer-20
layer-21
layer_with_weights-16
layer-22
layer-23
layer_with_weights-17
layer-24
layer-25
layer_with_weights-18
layer-26
layer_with_weights-19
layer-27
	optimizer
loss
	variables
 trainable_variables
!regularization_losses
"	keras_api
#
signatures
 
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
R
0	variables
1trainable_variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
h

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
R
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
h

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
h

Jkernel
Kbias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
h

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
h

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
R
\	variables
]trainable_variables
^regularization_losses
_	keras_api
h

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
h

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
h

lkernel
mbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
h

rkernel
sbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
R
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
j

|kernel
}bias
~	variables
trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
V
	variables
trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
V
	variables
trainable_variables
 regularization_losses
¡	keras_api
n
¢kernel
	£bias
¤	variables
¥trainable_variables
¦regularization_losses
§	keras_api
V
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¢
¬conv_7
­upsample_pool4
®upsample_pool3
¯upsample_final
°	variables
±trainable_variables
²regularization_losses
³	keras_api
º
´conv_7
	µdrop
¶conv_8
·upsample_pool4
¸upsample_pool3
¹upsample_final
º	variables
»trainable_variables
¼regularization_losses
½	keras_api
 
 
ú
$0
%1
*2
+3
44
55
:6
;7
D8
E9
J10
K11
P12
Q13
V14
W15
`16
a17
f18
g19
l20
m21
r22
s23
|24
}25
26
27
28
29
30
31
32
33
¢34
£35
¾36
¿37
À38
Á39
Â40
Ã41
Ä42
Å43
Æ44
Ç45
t
0
1
¢2
£3
¾4
¿5
À6
Á7
Â8
Ã9
Ä10
Å11
Æ12
Ç13
 
²
Èlayers
	variables
 trainable_variables
!regularization_losses
Émetrics
Ênon_trainable_variables
Ëlayer_metrics
 Ìlayer_regularization_losses
 
_]
VARIABLE_VALUEblock1_conv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock1_conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 
 
²
Ílayers
&	variables
'trainable_variables
(regularization_losses
Îmetrics
Ïnon_trainable_variables
Ðlayer_metrics
 Ñlayer_regularization_losses
_]
VARIABLE_VALUEblock1_conv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock1_conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 
 
²
Òlayers
,	variables
-trainable_variables
.regularization_losses
Ómetrics
Ônon_trainable_variables
Õlayer_metrics
 Ölayer_regularization_losses
 
 
 
²
×layers
0	variables
1trainable_variables
2regularization_losses
Ømetrics
Ùnon_trainable_variables
Úlayer_metrics
 Ûlayer_regularization_losses
_]
VARIABLE_VALUEblock2_conv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock2_conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51
 
 
²
Ülayers
6	variables
7trainable_variables
8regularization_losses
Ýmetrics
Þnon_trainable_variables
ßlayer_metrics
 àlayer_regularization_losses
_]
VARIABLE_VALUEblock2_conv2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock2_conv2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
 
 
²
álayers
<	variables
=trainable_variables
>regularization_losses
âmetrics
ãnon_trainable_variables
älayer_metrics
 ålayer_regularization_losses
 
 
 
²
ælayers
@	variables
Atrainable_variables
Bregularization_losses
çmetrics
ènon_trainable_variables
élayer_metrics
 êlayer_regularization_losses
_]
VARIABLE_VALUEblock3_conv1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1
 
 
²
ëlayers
F	variables
Gtrainable_variables
Hregularization_losses
ìmetrics
ínon_trainable_variables
îlayer_metrics
 ïlayer_regularization_losses
_]
VARIABLE_VALUEblock3_conv2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 
 
²
ðlayers
L	variables
Mtrainable_variables
Nregularization_losses
ñmetrics
ònon_trainable_variables
ólayer_metrics
 ôlayer_regularization_losses
_]
VARIABLE_VALUEblock3_conv3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1
 
 
²
õlayers
R	variables
Strainable_variables
Tregularization_losses
ömetrics
÷non_trainable_variables
ølayer_metrics
 ùlayer_regularization_losses
_]
VARIABLE_VALUEblock3_conv4/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv4/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

V0
W1
 
 
²
úlayers
X	variables
Ytrainable_variables
Zregularization_losses
ûmetrics
ünon_trainable_variables
ýlayer_metrics
 þlayer_regularization_losses
 
 
 
²
ÿlayers
\	variables
]trainable_variables
^regularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
_]
VARIABLE_VALUEblock4_conv1/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv1/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

`0
a1
 
 
²
layers
b	variables
ctrainable_variables
dregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
_]
VARIABLE_VALUEblock4_conv2/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv2/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

f0
g1
 
 
²
layers
h	variables
itrainable_variables
jregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
`^
VARIABLE_VALUEblock4_conv3/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock4_conv3/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

l0
m1
 
 
²
layers
n	variables
otrainable_variables
pregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
`^
VARIABLE_VALUEblock4_conv4/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock4_conv4/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

r0
s1
 
 
²
layers
t	variables
utrainable_variables
vregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
 
 
 
²
layers
x	variables
ytrainable_variables
zregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
`^
VARIABLE_VALUEblock5_conv1/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv1/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

|0
}1
 
 
³
layers
~	variables
trainable_variables
regularization_losses
metrics
non_trainable_variables
 layer_metrics
 ¡layer_regularization_losses
`^
VARIABLE_VALUEblock5_conv2/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv2/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 
µ
¢layers
	variables
trainable_variables
regularization_losses
£metrics
¤non_trainable_variables
¥layer_metrics
 ¦layer_regularization_losses
`^
VARIABLE_VALUEblock5_conv3/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv3/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 
µ
§layers
	variables
trainable_variables
regularization_losses
¨metrics
©non_trainable_variables
ªlayer_metrics
 «layer_regularization_losses
`^
VARIABLE_VALUEblock5_conv4/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv4/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 
µ
¬layers
	variables
trainable_variables
regularization_losses
­metrics
®non_trainable_variables
¯layer_metrics
 °layer_regularization_losses
 
 
 
µ
±layers
	variables
trainable_variables
regularization_losses
²metrics
³non_trainable_variables
´layer_metrics
 µlayer_regularization_losses
`^
VARIABLE_VALUEblock6_conv1/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock6_conv1/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
µ
¶layers
	variables
trainable_variables
regularization_losses
·metrics
¸non_trainable_variables
¹layer_metrics
 ºlayer_regularization_losses
 
 
 
µ
»layers
	variables
trainable_variables
 regularization_losses
¼metrics
½non_trainable_variables
¾layer_metrics
 ¿layer_regularization_losses
`^
VARIABLE_VALUEblock6_conv2/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock6_conv2/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE

¢0
£1

¢0
£1
 
µ
Àlayers
¤	variables
¥trainable_variables
¦regularization_losses
Ámetrics
Ânon_trainable_variables
Ãlayer_metrics
 Älayer_regularization_losses
 
 
 
µ
Ålayers
¨	variables
©trainable_variables
ªregularization_losses
Æmetrics
Çnon_trainable_variables
Èlayer_metrics
 Élayer_regularization_losses
n
¾kernel
	¿bias
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Í	keras_api
V
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ñ	keras_api
V
Ò	variables
Ótrainable_variables
Ôregularization_losses
Õ	keras_api
n
Àkernel
	Ábias
Ö	variables
×trainable_variables
Øregularization_losses
Ù	keras_api
 
¾0
¿1
À2
Á3
 
¾0
¿1
À2
Á3
 
µ
Úlayers
°	variables
±trainable_variables
²regularization_losses
Ûmetrics
Ünon_trainable_variables
Ýlayer_metrics
 Þlayer_regularization_losses
n
Âkernel
	Ãbias
ß	variables
àtrainable_variables
áregularization_losses
â	keras_api
V
ã	variables
ätrainable_variables
åregularization_losses
æ	keras_api
n
Äkernel
	Åbias
ç	variables
ètrainable_variables
éregularization_losses
ê	keras_api
V
ë	variables
ìtrainable_variables
íregularization_losses
î	keras_api
V
ï	variables
ðtrainable_variables
ñregularization_losses
ò	keras_api
n
Ækernel
	Çbias
ó	variables
ôtrainable_variables
õregularization_losses
ö	keras_api
0
Â0
Ã1
Ä2
Å3
Æ4
Ç5
0
Â0
Ã1
Ä2
Å3
Æ4
Ç5
 
µ
÷layers
º	variables
»trainable_variables
¼regularization_losses
ømetrics
ùnon_trainable_variables
úlayer_metrics
 ûlayer_regularization_losses
US
VARIABLE_VALUEtable_mask/conv2d/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtable_mask/conv2d/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"table_mask/conv2d_transpose/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE table_mask/conv2d_transpose/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcol_mask/conv2d_1/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEcol_mask/conv2d_1/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcol_mask/conv2d_2/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEcol_mask/conv2d_2/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"col_mask/conv2d_transpose_1/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE col_mask/conv2d_transpose_1/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE
Ö
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
 
ü
$0
%1
*2
+3
44
55
:6
;7
D8
E9
J10
K11
P12
Q13
V14
W15
`16
a17
f18
g19
l20
m21
r22
s23
|24
}25
26
27
28
29
30
31
 
 
 
 

$0
%1
 
 
 
 

*0
+1
 
 
 
 
 
 
 
 
 

40
51
 
 
 
 

:0
;1
 
 
 
 
 
 
 
 
 

D0
E1
 
 
 
 

J0
K1
 
 
 
 

P0
Q1
 
 
 
 

V0
W1
 
 
 
 
 
 
 
 
 

`0
a1
 
 
 
 

f0
g1
 
 
 
 

l0
m1
 
 
 
 

r0
s1
 
 
 
 
 
 
 
 
 

|0
}1
 
 
 
 

0
1
 
 
 
 

0
1
 
 
 
 

0
1
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

¾0
¿1

¾0
¿1
 
µ
ülayers
Ê	variables
Ëtrainable_variables
Ìregularization_losses
ýmetrics
þnon_trainable_variables
ÿlayer_metrics
 layer_regularization_losses
 
 
 
µ
layers
Î	variables
Ïtrainable_variables
Ðregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
 
 
 
µ
layers
Ò	variables
Ótrainable_variables
Ôregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses

À0
Á1

À0
Á1
 
µ
layers
Ö	variables
×trainable_variables
Øregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
 
¬0
­1
®2
¯3
 
 
 
 

Â0
Ã1

Â0
Ã1
 
µ
layers
ß	variables
àtrainable_variables
áregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
 
 
 
µ
layers
ã	variables
ätrainable_variables
åregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses

Ä0
Å1

Ä0
Å1
 
µ
layers
ç	variables
ètrainable_variables
éregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
 
 
 
µ
layers
ë	variables
ìtrainable_variables
íregularization_losses
 metrics
¡non_trainable_variables
¢layer_metrics
 £layer_regularization_losses
 
 
 
µ
¤layers
ï	variables
ðtrainable_variables
ñregularization_losses
¥metrics
¦non_trainable_variables
§layer_metrics
 ¨layer_regularization_losses

Æ0
Ç1

Æ0
Ç1
 
µ
©layers
ó	variables
ôtrainable_variables
õregularization_losses
ªmetrics
«non_trainable_variables
¬layer_metrics
 ­layer_regularization_losses
0
´0
µ1
¶2
·3
¸4
¹5
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

serving_default_input_1Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ
©
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1block1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biasblock6_conv1/kernelblock6_conv1/biasblock6_conv2/kernelblock6_conv2/biascol_mask/conv2d_1/kernelcol_mask/conv2d_1/biascol_mask/conv2d_2/kernelcol_mask/conv2d_2/bias"col_mask/conv2d_transpose_1/kernel col_mask/conv2d_transpose_1/biastable_mask/conv2d/kerneltable_mask/conv2d/bias"table_mask/conv2d_transpose/kernel table_mask/conv2d_transpose/bias*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_signature_wrapper_5236
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ô
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block3_conv4/kernel/Read/ReadVariableOp%block3_conv4/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block4_conv4/kernel/Read/ReadVariableOp%block4_conv4/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp'block5_conv4/kernel/Read/ReadVariableOp%block5_conv4/bias/Read/ReadVariableOp'block6_conv1/kernel/Read/ReadVariableOp%block6_conv1/bias/Read/ReadVariableOp'block6_conv2/kernel/Read/ReadVariableOp%block6_conv2/bias/Read/ReadVariableOp,table_mask/conv2d/kernel/Read/ReadVariableOp*table_mask/conv2d/bias/Read/ReadVariableOp6table_mask/conv2d_transpose/kernel/Read/ReadVariableOp4table_mask/conv2d_transpose/bias/Read/ReadVariableOp,col_mask/conv2d_1/kernel/Read/ReadVariableOp*col_mask/conv2d_1/bias/Read/ReadVariableOp,col_mask/conv2d_2/kernel/Read/ReadVariableOp*col_mask/conv2d_2/bias/Read/ReadVariableOp6col_mask/conv2d_transpose_1/kernel/Read/ReadVariableOp4col_mask/conv2d_transpose_1/bias/Read/ReadVariableOpConst*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *&
f!R
__inference__traced_save_6951
·

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biasblock6_conv1/kernelblock6_conv1/biasblock6_conv2/kernelblock6_conv2/biastable_mask/conv2d/kerneltable_mask/conv2d/bias"table_mask/conv2d_transpose/kernel table_mask/conv2d_transpose/biascol_mask/conv2d_1/kernelcol_mask/conv2d_1/biascol_mask/conv2d_2/kernelcol_mask/conv2d_2/bias"col_mask/conv2d_transpose_1/kernel col_mask/conv2d_transpose_1/bias*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_restore_7099!


F__inference_block4_conv3_layer_call_and_return_conditional_losses_3547

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
´
'__inference_col_mask_layer_call_fn_6544	
input	
pool3	
pool4#
unknown:
	unknown_0:	%
	unknown_1:
	unknown_2:	$
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallinputpool3pool4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_col_mask_layer_call_and_return_conditional_losses_37732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4
á
Ú
$__inference_model_layer_call_fn_5335

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	&

unknown_25:

unknown_26:	&

unknown_27:

unknown_28:	&

unknown_29:

unknown_30:	&

unknown_31:

unknown_32:	&

unknown_33:

unknown_34:	&

unknown_35:

unknown_36:	&

unknown_37:

unknown_38:	%

unknown_39:

unknown_40:&

unknown_41:

unknown_42:	%

unknown_43:

unknown_44:
identity

identity_1¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_38882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

F__inference_block5_conv3_layer_call_and_return_conditional_losses_6295

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ÚÈ
ý
?__inference_model_layer_call_and_return_conditional_losses_4601

inputs+
block1_conv1_4450:@
block1_conv1_4452:@+
block1_conv2_4455:@@
block1_conv2_4457:@,
block2_conv1_4461:@ 
block2_conv1_4463:	-
block2_conv2_4466: 
block2_conv2_4468:	-
block3_conv1_4472: 
block3_conv1_4474:	-
block3_conv2_4477: 
block3_conv2_4479:	-
block3_conv3_4482: 
block3_conv3_4484:	-
block3_conv4_4487: 
block3_conv4_4489:	-
block4_conv1_4493: 
block4_conv1_4495:	-
block4_conv2_4498: 
block4_conv2_4500:	-
block4_conv3_4503: 
block4_conv3_4505:	-
block4_conv4_4508: 
block4_conv4_4510:	-
block5_conv1_4514: 
block5_conv1_4516:	-
block5_conv2_4519: 
block5_conv2_4521:	-
block5_conv3_4524: 
block5_conv3_4526:	-
block5_conv4_4529: 
block5_conv4_4531:	-
block6_conv1_4535: 
block6_conv1_4537:	-
block6_conv2_4541: 
block6_conv2_4543:	)
col_mask_4547:
col_mask_4549:	)
col_mask_4551:
col_mask_4553:	(
col_mask_4555:
col_mask_4557:+
table_mask_4560:
table_mask_4562:	*
table_mask_4564:
table_mask_4566:
identity

identity_1¢$block1_conv1/StatefulPartitionedCall¢$block1_conv2/StatefulPartitionedCall¢$block2_conv1/StatefulPartitionedCall¢$block2_conv2/StatefulPartitionedCall¢$block3_conv1/StatefulPartitionedCall¢$block3_conv2/StatefulPartitionedCall¢$block3_conv3/StatefulPartitionedCall¢$block3_conv4/StatefulPartitionedCall¢$block4_conv1/StatefulPartitionedCall¢$block4_conv2/StatefulPartitionedCall¢$block4_conv3/StatefulPartitionedCall¢$block4_conv4/StatefulPartitionedCall¢$block5_conv1/StatefulPartitionedCall¢$block5_conv2/StatefulPartitionedCall¢$block5_conv3/StatefulPartitionedCall¢$block5_conv4/StatefulPartitionedCall¢$block6_conv1/StatefulPartitionedCall¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp¢$block6_conv2/StatefulPartitionedCall¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp¢ col_mask/StatefulPartitionedCall¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢"table_mask/StatefulPartitionedCall¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp¯
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_4450block1_conv1_4452*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_33742&
$block1_conv1/StatefulPartitionedCallÖ
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4455block1_conv2_4457*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_33912&
$block1_conv2/StatefulPartitionedCall
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_31362
block1_pool/PartitionedCallÎ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4461block2_conv1_4463*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_34092&
$block2_conv1/StatefulPartitionedCall×
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4466block2_conv2_4468*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_34262&
$block2_conv2/StatefulPartitionedCall
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_31482
block2_pool/PartitionedCallÎ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4472block3_conv1_4474*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_34442&
$block3_conv1/StatefulPartitionedCall×
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4477block3_conv2_4479*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_34612&
$block3_conv2/StatefulPartitionedCall×
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4482block3_conv3_4484*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_34782&
$block3_conv3/StatefulPartitionedCall×
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_4487block3_conv4_4489*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_34952&
$block3_conv4/StatefulPartitionedCall
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_31602
block3_pool/PartitionedCallÎ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4493block4_conv1_4495*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_35132&
$block4_conv1/StatefulPartitionedCall×
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4498block4_conv2_4500*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_35302&
$block4_conv2/StatefulPartitionedCall×
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4503block4_conv3_4505*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_35472&
$block4_conv3/StatefulPartitionedCall×
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_4508block4_conv4_4510*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_35642&
$block4_conv4/StatefulPartitionedCall
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_31722
block4_pool/PartitionedCallÌ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4514block5_conv1_4516*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_35822&
$block5_conv1/StatefulPartitionedCallÕ
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4519block5_conv2_4521*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_35992&
$block5_conv2/StatefulPartitionedCallÕ
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4524block5_conv3_4526*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_36162&
$block5_conv3/StatefulPartitionedCallÕ
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_4529block5_conv4_4531*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_36332&
$block5_conv4/StatefulPartitionedCall
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_31842
block5_pool/PartitionedCallÌ
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall$block5_pool/PartitionedCall:output:0block6_conv1_4535block6_conv1_4537*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_36572&
$block6_conv1/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_41732!
dropout/StatefulPartitionedCallÐ
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0block6_conv2_4541block6_conv2_4543*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_36872&
$block6_conv2/StatefulPartitionedCallÂ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_41402#
!dropout_1/StatefulPartitionedCallÑ
 col_mask/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0$block3_pool/PartitionedCall:output:0$block4_pool/PartitionedCall:output:0col_mask_4547col_mask_4549col_mask_4551col_mask_4553col_mask_4555col_mask_4557*
Tin
2	*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_col_mask_layer_call_and_return_conditional_losses_41052"
 col_mask/StatefulPartitionedCall½
"table_mask/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0$block3_pool/PartitionedCall:output:0$block4_pool/PartitionedCall:output:0table_mask_4560table_mask_4562table_mask_4564table_mask_4566*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_table_mask_layer_call_and_return_conditional_losses_38462$
"table_mask/StatefulPartitionedCallÊ
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock6_conv1_4535*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulÊ
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock6_conv2_4541*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/mulÒ
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOptable_mask_4560*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/mulÐ
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcol_mask_4547*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulÐ
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcol_mask_4551*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity+table_mask/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity)col_mask/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Á	
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp%^block6_conv2/StatefulPartitionedCall6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp!^col_mask/StatefulPartitionedCall;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall#^table_mask/StatefulPartitionedCall;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp2D
 col_mask/StatefulPartitionedCall col_mask/StatefulPartitionedCall2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2H
"table_mask/StatefulPartitionedCall"table_mask/StatefulPartitionedCall2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
Ú
$__inference_model_layer_call_fn_5434

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	&

unknown_25:

unknown_26:	&

unknown_27:

unknown_28:	&

unknown_29:

unknown_30:	&

unknown_31:

unknown_32:	&

unknown_33:

unknown_34:	&

unknown_35:

unknown_36:	&

unknown_37:

unknown_38:	%

unknown_39:

unknown_40:&

unknown_41:

unknown_42:	%

unknown_43:

unknown_44:
identity

identity_1¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_46012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_4140

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape½
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2
dropout/GreaterEqual/yÇ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¥
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_3184

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


F__inference_block4_conv3_layer_call_and_return_conditional_losses_6215

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
`
A__inference_dropout_layer_call_and_return_conditional_losses_4173

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape½
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2
dropout/GreaterEqual/yÇ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
°
£
+__inference_block4_conv4_layer_call_fn_6224

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_35642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
F
*__inference_block4_pool_layer_call_fn_3178

inputs
identityé
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_31722
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
£
+__inference_block4_conv3_layer_call_fn_6204

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_35472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÝÈ
þ
?__inference_model_layer_call_and_return_conditional_losses_5105
input_1+
block1_conv1_4954:@
block1_conv1_4956:@+
block1_conv2_4959:@@
block1_conv2_4961:@,
block2_conv1_4965:@ 
block2_conv1_4967:	-
block2_conv2_4970: 
block2_conv2_4972:	-
block3_conv1_4976: 
block3_conv1_4978:	-
block3_conv2_4981: 
block3_conv2_4983:	-
block3_conv3_4986: 
block3_conv3_4988:	-
block3_conv4_4991: 
block3_conv4_4993:	-
block4_conv1_4997: 
block4_conv1_4999:	-
block4_conv2_5002: 
block4_conv2_5004:	-
block4_conv3_5007: 
block4_conv3_5009:	-
block4_conv4_5012: 
block4_conv4_5014:	-
block5_conv1_5018: 
block5_conv1_5020:	-
block5_conv2_5023: 
block5_conv2_5025:	-
block5_conv3_5028: 
block5_conv3_5030:	-
block5_conv4_5033: 
block5_conv4_5035:	-
block6_conv1_5039: 
block6_conv1_5041:	-
block6_conv2_5045: 
block6_conv2_5047:	)
col_mask_5051:
col_mask_5053:	)
col_mask_5055:
col_mask_5057:	(
col_mask_5059:
col_mask_5061:+
table_mask_5064:
table_mask_5066:	*
table_mask_5068:
table_mask_5070:
identity

identity_1¢$block1_conv1/StatefulPartitionedCall¢$block1_conv2/StatefulPartitionedCall¢$block2_conv1/StatefulPartitionedCall¢$block2_conv2/StatefulPartitionedCall¢$block3_conv1/StatefulPartitionedCall¢$block3_conv2/StatefulPartitionedCall¢$block3_conv3/StatefulPartitionedCall¢$block3_conv4/StatefulPartitionedCall¢$block4_conv1/StatefulPartitionedCall¢$block4_conv2/StatefulPartitionedCall¢$block4_conv3/StatefulPartitionedCall¢$block4_conv4/StatefulPartitionedCall¢$block5_conv1/StatefulPartitionedCall¢$block5_conv2/StatefulPartitionedCall¢$block5_conv3/StatefulPartitionedCall¢$block5_conv4/StatefulPartitionedCall¢$block6_conv1/StatefulPartitionedCall¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp¢$block6_conv2/StatefulPartitionedCall¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp¢ col_mask/StatefulPartitionedCall¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢"table_mask/StatefulPartitionedCall¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp°
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_4954block1_conv1_4956*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_33742&
$block1_conv1/StatefulPartitionedCallÖ
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4959block1_conv2_4961*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_33912&
$block1_conv2/StatefulPartitionedCall
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_31362
block1_pool/PartitionedCallÎ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4965block2_conv1_4967*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_34092&
$block2_conv1/StatefulPartitionedCall×
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4970block2_conv2_4972*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_34262&
$block2_conv2/StatefulPartitionedCall
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_31482
block2_pool/PartitionedCallÎ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4976block3_conv1_4978*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_34442&
$block3_conv1/StatefulPartitionedCall×
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4981block3_conv2_4983*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_34612&
$block3_conv2/StatefulPartitionedCall×
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4986block3_conv3_4988*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_34782&
$block3_conv3/StatefulPartitionedCall×
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_4991block3_conv4_4993*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_34952&
$block3_conv4/StatefulPartitionedCall
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_31602
block3_pool/PartitionedCallÎ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4997block4_conv1_4999*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_35132&
$block4_conv1/StatefulPartitionedCall×
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_5002block4_conv2_5004*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_35302&
$block4_conv2/StatefulPartitionedCall×
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_5007block4_conv3_5009*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_35472&
$block4_conv3/StatefulPartitionedCall×
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_5012block4_conv4_5014*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_35642&
$block4_conv4/StatefulPartitionedCall
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_31722
block4_pool/PartitionedCallÌ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_5018block5_conv1_5020*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_35822&
$block5_conv1/StatefulPartitionedCallÕ
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_5023block5_conv2_5025*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_35992&
$block5_conv2/StatefulPartitionedCallÕ
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_5028block5_conv3_5030*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_36162&
$block5_conv3/StatefulPartitionedCallÕ
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_5033block5_conv4_5035*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_36332&
$block5_conv4/StatefulPartitionedCall
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_31842
block5_pool/PartitionedCallÌ
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall$block5_pool/PartitionedCall:output:0block6_conv1_5039block6_conv1_5041*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_36572&
$block6_conv1/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_41732!
dropout/StatefulPartitionedCallÐ
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0block6_conv2_5045block6_conv2_5047*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_36872&
$block6_conv2/StatefulPartitionedCallÂ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_41402#
!dropout_1/StatefulPartitionedCallÑ
 col_mask/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0$block3_pool/PartitionedCall:output:0$block4_pool/PartitionedCall:output:0col_mask_5051col_mask_5053col_mask_5055col_mask_5057col_mask_5059col_mask_5061*
Tin
2	*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_col_mask_layer_call_and_return_conditional_losses_41052"
 col_mask/StatefulPartitionedCall½
"table_mask/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0$block3_pool/PartitionedCall:output:0$block4_pool/PartitionedCall:output:0table_mask_5064table_mask_5066table_mask_5068table_mask_5070*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_table_mask_layer_call_and_return_conditional_losses_38462$
"table_mask/StatefulPartitionedCallÊ
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock6_conv1_5039*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulÊ
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock6_conv2_5045*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/mulÒ
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOptable_mask_5064*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/mulÐ
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcol_mask_5051*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulÐ
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcol_mask_5055*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity+table_mask/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity)col_mask/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Á	
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp%^block6_conv2/StatefulPartitionedCall6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp!^col_mask/StatefulPartitionedCall;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall#^table_mask/StatefulPartitionedCall;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp2D
 col_mask/StatefulPartitionedCall col_mask/StatefulPartitionedCall2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2H
"table_mask/StatefulPartitionedCall"table_mask/StatefulPartitionedCall2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ó
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_6433

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape½
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2
dropout/GreaterEqual/yÇ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ø

F__inference_block5_conv1_layer_call_and_return_conditional_losses_6255

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


F__inference_block2_conv2_layer_call_and_return_conditional_losses_3426

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Îm
í
B__inference_col_mask_layer_call_and_return_conditional_losses_6636	
input	
pool3	
pool4C
'conv2d_1_conv2d_readvariableop_resource:7
(conv2d_1_biasadd_readvariableop_resource:	C
'conv2d_2_conv2d_readvariableop_resource:7
(conv2d_2_biasadd_readvariableop_resource:	V
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@
2conv2d_transpose_1_biasadd_readvariableop_resource:
identity¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢)conv2d_transpose_1/BiasAdd/ReadVariableOp¢2conv2d_transpose_1/conv2d_transpose/ReadVariableOp²
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp¿
conv2d_1/Conv2DConv2Dinput&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d_1/Conv2D¨
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp­
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_1/Relu
dropout_2/IdentityIdentityconv2d_1/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_2/Identity²
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpÕ
conv2d_2/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d_2/Conv2D¨
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp­
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/Relu
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_2/Const
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mulë
%up_sampling2d_2/resize/ResizeBilinearResizeBilinearconv2d_2/Relu:activations:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2'
%up_sampling2d_2/resize/ResizeBilineart
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisÙ
concatenate/concatConcatV26up_sampling2d_2/resize/ResizeBilinear:resized_images:0pool4 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
concatenate/concat
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_3/Const
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mulí
%up_sampling2d_3/resize/ResizeBilinearResizeBilinearconcatenate/concat:output:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2'
%up_sampling2d_3/resize/ResizeBilinearx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisá
concatenate_1/concatConcatV26up_sampling2d_3/resize/ResizeBilinear:resized_images:0pool3"concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
concatenate_1/concat{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulþ
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul¢
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor¡
conv2d_transpose_1/ShapeShape=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2Ô
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slice{
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_1/stack/1{
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_1/stack/2z
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/3
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack¢
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1¢
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2Þ
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1í
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpã
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transposeÅ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOpà
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose_1/BiasAdd¤
conv2d_transpose_1/SoftmaxSoftmax#conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose_1/Softmaxê
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulê
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity$conv2d_transpose_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¯
NoOpNoOp;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4


F__inference_block2_conv2_layer_call_and_return_conditional_losses_6075

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
£
+__inference_block6_conv1_layer_call_fn_6330

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_36572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¨
£
+__inference_block6_conv2_layer_call_fn_6389

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_36872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ö
J
.__inference_up_sampling2d_3_layer_call_fn_3311

inputs
identityí
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_33052
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
¢
+__inference_block2_conv1_layer_call_fn_6044

inputs"
unknown:@
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_34092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¥
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_3148

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

_
A__inference_dropout_layer_call_and_return_conditional_losses_3668

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ø

F__inference_block5_conv3_layer_call_and_return_conditional_losses_3616

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
Îm
í
B__inference_col_mask_layer_call_and_return_conditional_losses_3773	
input	
pool3	
pool4C
'conv2d_1_conv2d_readvariableop_resource:7
(conv2d_1_biasadd_readvariableop_resource:	C
'conv2d_2_conv2d_readvariableop_resource:7
(conv2d_2_biasadd_readvariableop_resource:	V
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@
2conv2d_transpose_1_biasadd_readvariableop_resource:
identity¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢)conv2d_transpose_1/BiasAdd/ReadVariableOp¢2conv2d_transpose_1/conv2d_transpose/ReadVariableOp²
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp¿
conv2d_1/Conv2DConv2Dinput&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d_1/Conv2D¨
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp­
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_1/Relu
dropout_2/IdentityIdentityconv2d_1/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_2/Identity²
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpÕ
conv2d_2/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d_2/Conv2D¨
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp­
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/Relu
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_2/Const
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mulë
%up_sampling2d_2/resize/ResizeBilinearResizeBilinearconv2d_2/Relu:activations:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2'
%up_sampling2d_2/resize/ResizeBilineart
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisÙ
concatenate/concatConcatV26up_sampling2d_2/resize/ResizeBilinear:resized_images:0pool4 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
concatenate/concat
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_3/Const
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mulí
%up_sampling2d_3/resize/ResizeBilinearResizeBilinearconcatenate/concat:output:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2'
%up_sampling2d_3/resize/ResizeBilinearx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisá
concatenate_1/concatConcatV26up_sampling2d_3/resize/ResizeBilinear:resized_images:0pool3"concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
concatenate_1/concat{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulþ
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul¢
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor¡
conv2d_transpose_1/ShapeShape=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2Ô
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slice{
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_1/stack/1{
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_1/stack/2z
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/3
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack¢
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1¢
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2Þ
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1í
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpã
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transposeÅ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOpà
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose_1/BiasAdd¤
conv2d_transpose_1/SoftmaxSoftmax#conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose_1/Softmaxê
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulê
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity$conv2d_transpose_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¯
NoOpNoOp;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4
ç
º
F__inference_block6_conv1_layer_call_and_return_conditional_losses_6347

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Relu×
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity·
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
õÃ
ÿ
 __inference__traced_restore_7099
file_prefix>
$assignvariableop_block1_conv1_kernel:@2
$assignvariableop_1_block1_conv1_bias:@@
&assignvariableop_2_block1_conv2_kernel:@@2
$assignvariableop_3_block1_conv2_bias:@A
&assignvariableop_4_block2_conv1_kernel:@3
$assignvariableop_5_block2_conv1_bias:	B
&assignvariableop_6_block2_conv2_kernel:3
$assignvariableop_7_block2_conv2_bias:	B
&assignvariableop_8_block3_conv1_kernel:3
$assignvariableop_9_block3_conv1_bias:	C
'assignvariableop_10_block3_conv2_kernel:4
%assignvariableop_11_block3_conv2_bias:	C
'assignvariableop_12_block3_conv3_kernel:4
%assignvariableop_13_block3_conv3_bias:	C
'assignvariableop_14_block3_conv4_kernel:4
%assignvariableop_15_block3_conv4_bias:	C
'assignvariableop_16_block4_conv1_kernel:4
%assignvariableop_17_block4_conv1_bias:	C
'assignvariableop_18_block4_conv2_kernel:4
%assignvariableop_19_block4_conv2_bias:	C
'assignvariableop_20_block4_conv3_kernel:4
%assignvariableop_21_block4_conv3_bias:	C
'assignvariableop_22_block4_conv4_kernel:4
%assignvariableop_23_block4_conv4_bias:	C
'assignvariableop_24_block5_conv1_kernel:4
%assignvariableop_25_block5_conv1_bias:	C
'assignvariableop_26_block5_conv2_kernel:4
%assignvariableop_27_block5_conv2_bias:	C
'assignvariableop_28_block5_conv3_kernel:4
%assignvariableop_29_block5_conv3_bias:	C
'assignvariableop_30_block5_conv4_kernel:4
%assignvariableop_31_block5_conv4_bias:	C
'assignvariableop_32_block6_conv1_kernel:4
%assignvariableop_33_block6_conv1_bias:	C
'assignvariableop_34_block6_conv2_kernel:4
%assignvariableop_35_block6_conv2_bias:	H
,assignvariableop_36_table_mask_conv2d_kernel:9
*assignvariableop_37_table_mask_conv2d_bias:	Q
6assignvariableop_38_table_mask_conv2d_transpose_kernel:B
4assignvariableop_39_table_mask_conv2d_transpose_bias:H
,assignvariableop_40_col_mask_conv2d_1_kernel:9
*assignvariableop_41_col_mask_conv2d_1_bias:	H
,assignvariableop_42_col_mask_conv2d_2_kernel:9
*assignvariableop_43_col_mask_conv2d_2_bias:	Q
6assignvariableop_44_col_mask_conv2d_transpose_1_kernel:B
4assignvariableop_45_col_mask_conv2d_transpose_1_bias:
identity_47¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*
valueB/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesì
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ò
_output_shapes¿
¼:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity£
AssignVariableOpAssignVariableOp$assignvariableop_block1_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1©
AssignVariableOp_1AssignVariableOp$assignvariableop_1_block1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2«
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block1_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3©
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block1_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4«
AssignVariableOp_4AssignVariableOp&assignvariableop_4_block2_conv1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5©
AssignVariableOp_5AssignVariableOp$assignvariableop_5_block2_conv1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6«
AssignVariableOp_6AssignVariableOp&assignvariableop_6_block2_conv2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7©
AssignVariableOp_7AssignVariableOp$assignvariableop_7_block2_conv2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8«
AssignVariableOp_8AssignVariableOp&assignvariableop_8_block3_conv1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9©
AssignVariableOp_9AssignVariableOp$assignvariableop_9_block3_conv1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¯
AssignVariableOp_10AssignVariableOp'assignvariableop_10_block3_conv2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11­
AssignVariableOp_11AssignVariableOp%assignvariableop_11_block3_conv2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¯
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block3_conv3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13­
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block3_conv3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¯
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block3_conv4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15­
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block3_conv4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¯
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block4_conv1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17­
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block4_conv1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¯
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block4_conv2_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19­
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block4_conv2_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¯
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block4_conv3_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21­
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block4_conv3_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¯
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block4_conv4_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23­
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block4_conv4_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¯
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block5_conv1_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25­
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block5_conv1_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¯
AssignVariableOp_26AssignVariableOp'assignvariableop_26_block5_conv2_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27­
AssignVariableOp_27AssignVariableOp%assignvariableop_27_block5_conv2_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¯
AssignVariableOp_28AssignVariableOp'assignvariableop_28_block5_conv3_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29­
AssignVariableOp_29AssignVariableOp%assignvariableop_29_block5_conv3_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¯
AssignVariableOp_30AssignVariableOp'assignvariableop_30_block5_conv4_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31­
AssignVariableOp_31AssignVariableOp%assignvariableop_31_block5_conv4_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¯
AssignVariableOp_32AssignVariableOp'assignvariableop_32_block6_conv1_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33­
AssignVariableOp_33AssignVariableOp%assignvariableop_33_block6_conv1_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¯
AssignVariableOp_34AssignVariableOp'assignvariableop_34_block6_conv2_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35­
AssignVariableOp_35AssignVariableOp%assignvariableop_35_block6_conv2_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36´
AssignVariableOp_36AssignVariableOp,assignvariableop_36_table_mask_conv2d_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_table_mask_conv2d_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38¾
AssignVariableOp_38AssignVariableOp6assignvariableop_38_table_mask_conv2d_transpose_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39¼
AssignVariableOp_39AssignVariableOp4assignvariableop_39_table_mask_conv2d_transpose_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40´
AssignVariableOp_40AssignVariableOp,assignvariableop_40_col_mask_conv2d_1_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41²
AssignVariableOp_41AssignVariableOp*assignvariableop_41_col_mask_conv2d_1_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42´
AssignVariableOp_42AssignVariableOp,assignvariableop_42_col_mask_conv2d_2_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43²
AssignVariableOp_43AssignVariableOp*assignvariableop_43_col_mask_conv2d_2_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44¾
AssignVariableOp_44AssignVariableOp6assignvariableop_44_col_mask_conv2d_transpose_1_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¼
AssignVariableOp_45AssignVariableOp4assignvariableop_45_col_mask_conv2d_transpose_1_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_459
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÒ
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_46f
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_47º
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_47Identity_47:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_45AssignVariableOp_452(
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
ø
ÿ
F__inference_block1_conv2_layer_call_and_return_conditional_losses_6035

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ø

F__inference_block5_conv2_layer_call_and_return_conditional_losses_6275

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


F__inference_block4_conv2_layer_call_and_return_conditional_losses_6195

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
D
(__inference_dropout_1_layer_call_fn_6411

inputs
identityÍ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_36982
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Î
F
*__inference_block3_pool_layer_call_fn_3166

inputs
identityé
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_31602
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
º
F__inference_block6_conv2_layer_call_and_return_conditional_losses_6406

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Relu×
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/mulv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity·
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ä
Û
$__inference_model_layer_call_fn_4797
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	&

unknown_25:

unknown_26:	&

unknown_27:

unknown_28:	&

unknown_29:

unknown_30:	&

unknown_31:

unknown_32:	&

unknown_33:

unknown_34:	&

unknown_35:

unknown_36:	&

unknown_37:

unknown_38:	%

unknown_39:

unknown_40:&

unknown_41:

unknown_42:	%

unknown_43:

unknown_44:
identity

identity_1¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_46012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
©
 
+__inference_block1_conv1_layer_call_fn_6004

inputs!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_33742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_3286

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Î
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulÀ
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2
resize/ResizeBilinear
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
Á
__inference_loss_fn_1_6738Z
>block6_conv2_kernel_regularizer_square_readvariableop_resource:
identity¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp÷
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp>block6_conv2_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/mulq
IdentityIdentity'block6_conv2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp
Î
F
*__inference_block5_pool_layer_call_fn_3190

inputs
identityé
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_31842
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
£
+__inference_block4_conv1_layer_call_fn_6164

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_35132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
ÿ
F__inference_block1_conv2_layer_call_and_return_conditional_losses_3391

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ì¹
­*
?__inference_model_layer_call_and_return_conditional_losses_5704

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@;
,block2_conv1_biasadd_readvariableop_resource:	G
+block2_conv2_conv2d_readvariableop_resource:;
,block2_conv2_biasadd_readvariableop_resource:	G
+block3_conv1_conv2d_readvariableop_resource:;
,block3_conv1_biasadd_readvariableop_resource:	G
+block3_conv2_conv2d_readvariableop_resource:;
,block3_conv2_biasadd_readvariableop_resource:	G
+block3_conv3_conv2d_readvariableop_resource:;
,block3_conv3_biasadd_readvariableop_resource:	G
+block3_conv4_conv2d_readvariableop_resource:;
,block3_conv4_biasadd_readvariableop_resource:	G
+block4_conv1_conv2d_readvariableop_resource:;
,block4_conv1_biasadd_readvariableop_resource:	G
+block4_conv2_conv2d_readvariableop_resource:;
,block4_conv2_biasadd_readvariableop_resource:	G
+block4_conv3_conv2d_readvariableop_resource:;
,block4_conv3_biasadd_readvariableop_resource:	G
+block4_conv4_conv2d_readvariableop_resource:;
,block4_conv4_biasadd_readvariableop_resource:	G
+block5_conv1_conv2d_readvariableop_resource:;
,block5_conv1_biasadd_readvariableop_resource:	G
+block5_conv2_conv2d_readvariableop_resource:;
,block5_conv2_biasadd_readvariableop_resource:	G
+block5_conv3_conv2d_readvariableop_resource:;
,block5_conv3_biasadd_readvariableop_resource:	G
+block5_conv4_conv2d_readvariableop_resource:;
,block5_conv4_biasadd_readvariableop_resource:	G
+block6_conv1_conv2d_readvariableop_resource:;
,block6_conv1_biasadd_readvariableop_resource:	G
+block6_conv2_conv2d_readvariableop_resource:;
,block6_conv2_biasadd_readvariableop_resource:	L
0col_mask_conv2d_1_conv2d_readvariableop_resource:@
1col_mask_conv2d_1_biasadd_readvariableop_resource:	L
0col_mask_conv2d_2_conv2d_readvariableop_resource:@
1col_mask_conv2d_2_biasadd_readvariableop_resource:	_
Dcol_mask_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:I
;col_mask_conv2d_transpose_1_biasadd_readvariableop_resource:L
0table_mask_conv2d_conv2d_readvariableop_resource:@
1table_mask_conv2d_biasadd_readvariableop_resource:	_
Dtable_mask_conv2d_transpose_conv2d_transpose_readvariableop_resource:I
;table_mask_conv2d_transpose_biasadd_readvariableop_resource:
identity

identity_1¢#block1_conv1/BiasAdd/ReadVariableOp¢"block1_conv1/Conv2D/ReadVariableOp¢#block1_conv2/BiasAdd/ReadVariableOp¢"block1_conv2/Conv2D/ReadVariableOp¢#block2_conv1/BiasAdd/ReadVariableOp¢"block2_conv1/Conv2D/ReadVariableOp¢#block2_conv2/BiasAdd/ReadVariableOp¢"block2_conv2/Conv2D/ReadVariableOp¢#block3_conv1/BiasAdd/ReadVariableOp¢"block3_conv1/Conv2D/ReadVariableOp¢#block3_conv2/BiasAdd/ReadVariableOp¢"block3_conv2/Conv2D/ReadVariableOp¢#block3_conv3/BiasAdd/ReadVariableOp¢"block3_conv3/Conv2D/ReadVariableOp¢#block3_conv4/BiasAdd/ReadVariableOp¢"block3_conv4/Conv2D/ReadVariableOp¢#block4_conv1/BiasAdd/ReadVariableOp¢"block4_conv1/Conv2D/ReadVariableOp¢#block4_conv2/BiasAdd/ReadVariableOp¢"block4_conv2/Conv2D/ReadVariableOp¢#block4_conv3/BiasAdd/ReadVariableOp¢"block4_conv3/Conv2D/ReadVariableOp¢#block4_conv4/BiasAdd/ReadVariableOp¢"block4_conv4/Conv2D/ReadVariableOp¢#block5_conv1/BiasAdd/ReadVariableOp¢"block5_conv1/Conv2D/ReadVariableOp¢#block5_conv2/BiasAdd/ReadVariableOp¢"block5_conv2/Conv2D/ReadVariableOp¢#block5_conv3/BiasAdd/ReadVariableOp¢"block5_conv3/Conv2D/ReadVariableOp¢#block5_conv4/BiasAdd/ReadVariableOp¢"block5_conv4/Conv2D/ReadVariableOp¢#block6_conv1/BiasAdd/ReadVariableOp¢"block6_conv1/Conv2D/ReadVariableOp¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp¢#block6_conv2/BiasAdd/ReadVariableOp¢"block6_conv2/Conv2D/ReadVariableOp¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp¢(col_mask/conv2d_1/BiasAdd/ReadVariableOp¢'col_mask/conv2d_1/Conv2D/ReadVariableOp¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢(col_mask/conv2d_2/BiasAdd/ReadVariableOp¢'col_mask/conv2d_2/Conv2D/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp¢;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢(table_mask/conv2d/BiasAdd/ReadVariableOp¢'table_mask/conv2d/Conv2D/ReadVariableOp¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp¢2table_mask/conv2d_transpose/BiasAdd/ReadVariableOp¢;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp¼
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOpÌ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
block1_conv1/Conv2D³
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp¾
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
block1_conv1/BiasAdd
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
block1_conv1/Relu¼
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpå
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
block1_conv2/Conv2D³
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp¾
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
block1_conv2/BiasAdd
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
block1_conv2/ReluÅ
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool½
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpã
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block2_conv1/Conv2D´
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp¿
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block2_conv1/BiasAdd
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block2_conv1/Relu¾
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpæ
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block2_conv2/Conv2D´
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp¿
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block2_conv2/BiasAdd
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block2_conv2/ReluÆ
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool¾
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpã
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block3_conv1/Conv2D´
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp¿
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv1/BiasAdd
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv1/Relu¾
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpæ
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block3_conv2/Conv2D´
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp¿
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv2/BiasAdd
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv2/Relu¾
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpæ
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block3_conv3/Conv2D´
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp¿
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv3/BiasAdd
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv3/Relu¾
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block3_conv4/Conv2D/ReadVariableOpæ
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block3_conv4/Conv2D´
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block3_conv4/BiasAdd/ReadVariableOp¿
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv4/BiasAdd
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv4/ReluÆ
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool¾
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpã
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block4_conv1/Conv2D´
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp¿
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv1/BiasAdd
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv1/Relu¾
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpæ
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block4_conv2/Conv2D´
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp¿
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv2/BiasAdd
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv2/Relu¾
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpæ
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block4_conv3/Conv2D´
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp¿
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv3/BiasAdd
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv3/Relu¾
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block4_conv4/Conv2D/ReadVariableOpæ
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block4_conv4/Conv2D´
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block4_conv4/BiasAdd/ReadVariableOp¿
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv4/BiasAdd
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv4/ReluÄ
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool¾
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpá
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
block5_conv1/Conv2D´
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp½
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv1/BiasAdd
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv1/Relu¾
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpä
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
block5_conv2/Conv2D´
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp½
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv2/BiasAdd
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv2/Relu¾
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpä
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
block5_conv3/Conv2D´
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp½
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv3/BiasAdd
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv3/Relu¾
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block5_conv4/Conv2D/ReadVariableOpä
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
block5_conv4/Conv2D´
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block5_conv4/BiasAdd/ReadVariableOp½
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv4/BiasAdd
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv4/ReluÄ
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool¾
"block6_conv1/Conv2D/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block6_conv1/Conv2D/ReadVariableOpâ
block6_conv1/Conv2DConv2Dblock5_pool/MaxPool:output:0*block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
block6_conv1/Conv2D´
#block6_conv1/BiasAdd/ReadVariableOpReadVariableOp,block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block6_conv1/BiasAdd/ReadVariableOp½
block6_conv1/BiasAddBiasAddblock6_conv1/Conv2D:output:0+block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
block6_conv1/BiasAdd
block6_conv1/ReluRelublock6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
block6_conv1/Relu
dropout/IdentityIdentityblock6_conv1/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Identity¾
"block6_conv2/Conv2D/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block6_conv2/Conv2D/ReadVariableOpß
block6_conv2/Conv2DConv2Ddropout/Identity:output:0*block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
block6_conv2/Conv2D´
#block6_conv2/BiasAdd/ReadVariableOpReadVariableOp,block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block6_conv2/BiasAdd/ReadVariableOp½
block6_conv2/BiasAddBiasAddblock6_conv2/Conv2D:output:0+block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
block6_conv2/BiasAdd
block6_conv2/ReluRelublock6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
block6_conv2/Relu
dropout_1/IdentityIdentityblock6_conv2/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_1/IdentityÍ
'col_mask/conv2d_1/Conv2D/ReadVariableOpReadVariableOp0col_mask_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'col_mask/conv2d_1/Conv2D/ReadVariableOpð
col_mask/conv2d_1/Conv2DConv2Ddropout_1/Identity:output:0/col_mask/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
col_mask/conv2d_1/Conv2DÃ
(col_mask/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp1col_mask_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(col_mask/conv2d_1/BiasAdd/ReadVariableOpÑ
col_mask/conv2d_1/BiasAddBiasAdd!col_mask/conv2d_1/Conv2D:output:00col_mask/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/conv2d_1/BiasAdd
col_mask/conv2d_1/ReluRelu"col_mask/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/conv2d_1/Relu§
col_mask/dropout_2/IdentityIdentity$col_mask/conv2d_1/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/dropout_2/IdentityÍ
'col_mask/conv2d_2/Conv2D/ReadVariableOpReadVariableOp0col_mask_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'col_mask/conv2d_2/Conv2D/ReadVariableOpù
col_mask/conv2d_2/Conv2DConv2D$col_mask/dropout_2/Identity:output:0/col_mask/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
col_mask/conv2d_2/Conv2DÃ
(col_mask/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp1col_mask_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(col_mask/conv2d_2/BiasAdd/ReadVariableOpÑ
col_mask/conv2d_2/BiasAddBiasAdd!col_mask/conv2d_2/Conv2D:output:00col_mask/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/conv2d_2/BiasAdd
col_mask/conv2d_2/ReluRelu"col_mask/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/conv2d_2/Relu
col_mask/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2 
col_mask/up_sampling2d_2/Const
 col_mask/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 col_mask/up_sampling2d_2/Const_1¼
col_mask/up_sampling2d_2/mulMul'col_mask/up_sampling2d_2/Const:output:0)col_mask/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
col_mask/up_sampling2d_2/mul
.col_mask/up_sampling2d_2/resize/ResizeBilinearResizeBilinear$col_mask/conv2d_2/Relu:activations:0 col_mask/up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(20
.col_mask/up_sampling2d_2/resize/ResizeBilinear
 col_mask/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 col_mask/concatenate/concat/axis
col_mask/concatenate/concatConcatV2?col_mask/up_sampling2d_2/resize/ResizeBilinear:resized_images:0block4_pool/MaxPool:output:0)col_mask/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
col_mask/concatenate/concat
col_mask/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
col_mask/up_sampling2d_3/Const
 col_mask/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 col_mask/up_sampling2d_3/Const_1¼
col_mask/up_sampling2d_3/mulMul'col_mask/up_sampling2d_3/Const:output:0)col_mask/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
col_mask/up_sampling2d_3/mul
.col_mask/up_sampling2d_3/resize/ResizeBilinearResizeBilinear$col_mask/concatenate/concat:output:0 col_mask/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(20
.col_mask/up_sampling2d_3/resize/ResizeBilinear
"col_mask/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"col_mask/concatenate_1/concat/axis
col_mask/concatenate_1/concatConcatV2?col_mask/up_sampling2d_3/resize/ResizeBilinear:resized_images:0block3_pool/MaxPool:output:0+col_mask/concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
col_mask/concatenate_1/concat
col_mask/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
col_mask/up_sampling2d/Const
col_mask/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2 
col_mask/up_sampling2d/Const_1´
col_mask/up_sampling2d/mulMul%col_mask/up_sampling2d/Const:output:0'col_mask/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
col_mask/up_sampling2d/mul¢
3col_mask/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor&col_mask/concatenate_1/concat:output:0col_mask/up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(25
3col_mask/up_sampling2d/resize/ResizeNearestNeighbor
col_mask/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
col_mask/up_sampling2d_1/Const
 col_mask/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 col_mask/up_sampling2d_1/Const_1¼
col_mask/up_sampling2d_1/mulMul'col_mask/up_sampling2d_1/Const:output:0)col_mask/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
col_mask/up_sampling2d_1/mulÆ
5col_mask/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborDcol_mask/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0 col_mask/up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(27
5col_mask/up_sampling2d_1/resize/ResizeNearestNeighbor¼
!col_mask/conv2d_transpose_1/ShapeShapeFcol_mask/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2#
!col_mask/conv2d_transpose_1/Shape¬
/col_mask/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/col_mask/conv2d_transpose_1/strided_slice/stack°
1col_mask/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1col_mask/conv2d_transpose_1/strided_slice/stack_1°
1col_mask/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1col_mask/conv2d_transpose_1/strided_slice/stack_2
)col_mask/conv2d_transpose_1/strided_sliceStridedSlice*col_mask/conv2d_transpose_1/Shape:output:08col_mask/conv2d_transpose_1/strided_slice/stack:output:0:col_mask/conv2d_transpose_1/strided_slice/stack_1:output:0:col_mask/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)col_mask/conv2d_transpose_1/strided_slice
#col_mask/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2%
#col_mask/conv2d_transpose_1/stack/1
#col_mask/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2%
#col_mask/conv2d_transpose_1/stack/2
#col_mask/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#col_mask/conv2d_transpose_1/stack/3º
!col_mask/conv2d_transpose_1/stackPack2col_mask/conv2d_transpose_1/strided_slice:output:0,col_mask/conv2d_transpose_1/stack/1:output:0,col_mask/conv2d_transpose_1/stack/2:output:0,col_mask/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!col_mask/conv2d_transpose_1/stack°
1col_mask/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1col_mask/conv2d_transpose_1/strided_slice_1/stack´
3col_mask/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3col_mask/conv2d_transpose_1/strided_slice_1/stack_1´
3col_mask/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3col_mask/conv2d_transpose_1/strided_slice_1/stack_2
+col_mask/conv2d_transpose_1/strided_slice_1StridedSlice*col_mask/conv2d_transpose_1/stack:output:0:col_mask/conv2d_transpose_1/strided_slice_1/stack:output:0<col_mask/conv2d_transpose_1/strided_slice_1/stack_1:output:0<col_mask/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+col_mask/conv2d_transpose_1/strided_slice_1
;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpDcol_mask_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype02=
;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
,col_mask/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput*col_mask/conv2d_transpose_1/stack:output:0Ccol_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Fcol_mask/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2.
,col_mask/conv2d_transpose_1/conv2d_transposeà
2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp;col_mask_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp
#col_mask/conv2d_transpose_1/BiasAddBiasAdd5col_mask/conv2d_transpose_1/conv2d_transpose:output:0:col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#col_mask/conv2d_transpose_1/BiasAdd¿
#col_mask/conv2d_transpose_1/SoftmaxSoftmax,col_mask/conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#col_mask/conv2d_transpose_1/SoftmaxÍ
'table_mask/conv2d/Conv2D/ReadVariableOpReadVariableOp0table_mask_conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'table_mask/conv2d/Conv2D/ReadVariableOpð
table_mask/conv2d/Conv2DConv2Ddropout_1/Identity:output:0/table_mask/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
table_mask/conv2d/Conv2DÃ
(table_mask/conv2d/BiasAdd/ReadVariableOpReadVariableOp1table_mask_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(table_mask/conv2d/BiasAdd/ReadVariableOpÑ
table_mask/conv2d/BiasAddBiasAdd!table_mask/conv2d/Conv2D:output:00table_mask/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
table_mask/conv2d/BiasAdd
table_mask/conv2d/ReluRelu"table_mask/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
table_mask/conv2d/Relu
table_mask/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2 
table_mask/up_sampling2d/Const
 table_mask/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 table_mask/up_sampling2d/Const_1¼
table_mask/up_sampling2d/mulMul'table_mask/up_sampling2d/Const:output:0)table_mask/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
table_mask/up_sampling2d/mul
.table_mask/up_sampling2d/resize/ResizeBilinearResizeBilinear$table_mask/conv2d/Relu:activations:0 table_mask/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(20
.table_mask/up_sampling2d/resize/ResizeBilinear
$table_mask/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$table_mask/concatenate_2/concat/axis 
table_mask/concatenate_2/concatConcatV2?table_mask/up_sampling2d/resize/ResizeBilinear:resized_images:0block4_pool/MaxPool:output:0-table_mask/concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2!
table_mask/concatenate_2/concat
 table_mask/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2"
 table_mask/up_sampling2d_1/Const
"table_mask/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"table_mask/up_sampling2d_1/Const_1Ä
table_mask/up_sampling2d_1/mulMul)table_mask/up_sampling2d_1/Const:output:0+table_mask/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2 
table_mask/up_sampling2d_1/mul
0table_mask/up_sampling2d_1/resize/ResizeBilinearResizeBilinear(table_mask/concatenate_2/concat:output:0"table_mask/up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(22
0table_mask/up_sampling2d_1/resize/ResizeBilinear
$table_mask/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$table_mask/concatenate_3/concat/axis¤
table_mask/concatenate_3/concatConcatV2Atable_mask/up_sampling2d_1/resize/ResizeBilinear:resized_images:0block3_pool/MaxPool:output:0-table_mask/concatenate_3/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2!
table_mask/concatenate_3/concat
 table_mask/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 table_mask/up_sampling2d_2/Const
"table_mask/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"table_mask/up_sampling2d_2/Const_1Ä
table_mask/up_sampling2d_2/mulMul)table_mask/up_sampling2d_2/Const:output:0+table_mask/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2 
table_mask/up_sampling2d_2/mul°
7table_mask/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor(table_mask/concatenate_3/concat:output:0"table_mask/up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(29
7table_mask/up_sampling2d_2/resize/ResizeNearestNeighbor
 table_mask/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 table_mask/up_sampling2d_3/Const
"table_mask/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"table_mask/up_sampling2d_3/Const_1Ä
table_mask/up_sampling2d_3/mulMul)table_mask/up_sampling2d_3/Const:output:0+table_mask/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2 
table_mask/up_sampling2d_3/mulÐ
7table_mask/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborHtable_mask/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0"table_mask/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(29
7table_mask/up_sampling2d_3/resize/ResizeNearestNeighbor¾
!table_mask/conv2d_transpose/ShapeShapeHtable_mask/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2#
!table_mask/conv2d_transpose/Shape¬
/table_mask/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/table_mask/conv2d_transpose/strided_slice/stack°
1table_mask/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1table_mask/conv2d_transpose/strided_slice/stack_1°
1table_mask/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1table_mask/conv2d_transpose/strided_slice/stack_2
)table_mask/conv2d_transpose/strided_sliceStridedSlice*table_mask/conv2d_transpose/Shape:output:08table_mask/conv2d_transpose/strided_slice/stack:output:0:table_mask/conv2d_transpose/strided_slice/stack_1:output:0:table_mask/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)table_mask/conv2d_transpose/strided_slice
#table_mask/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2%
#table_mask/conv2d_transpose/stack/1
#table_mask/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2%
#table_mask/conv2d_transpose/stack/2
#table_mask/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#table_mask/conv2d_transpose/stack/3º
!table_mask/conv2d_transpose/stackPack2table_mask/conv2d_transpose/strided_slice:output:0,table_mask/conv2d_transpose/stack/1:output:0,table_mask/conv2d_transpose/stack/2:output:0,table_mask/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!table_mask/conv2d_transpose/stack°
1table_mask/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1table_mask/conv2d_transpose/strided_slice_1/stack´
3table_mask/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3table_mask/conv2d_transpose/strided_slice_1/stack_1´
3table_mask/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3table_mask/conv2d_transpose/strided_slice_1/stack_2
+table_mask/conv2d_transpose/strided_slice_1StridedSlice*table_mask/conv2d_transpose/stack:output:0:table_mask/conv2d_transpose/strided_slice_1/stack:output:0<table_mask/conv2d_transpose/strided_slice_1/stack_1:output:0<table_mask/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+table_mask/conv2d_transpose/strided_slice_1
;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpDtable_mask_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype02=
;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp
,table_mask/conv2d_transpose/conv2d_transposeConv2DBackpropInput*table_mask/conv2d_transpose/stack:output:0Ctable_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0Htable_mask/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2.
,table_mask/conv2d_transpose/conv2d_transposeà
2table_mask/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp;table_mask_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2table_mask/conv2d_transpose/BiasAdd/ReadVariableOp
#table_mask/conv2d_transpose/BiasAddBiasAdd5table_mask/conv2d_transpose/conv2d_transpose:output:0:table_mask/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#table_mask/conv2d_transpose/BiasAdd¿
#table_mask/conv2d_transpose/SoftmaxSoftmax,table_mask/conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#table_mask/conv2d_transpose/Softmaxä
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulä
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/muló
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0table_mask_conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/muló
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0col_mask_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/muló
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0col_mask_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity-table_mask/conv2d_transpose/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity-col_mask/conv2d_transpose_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1 
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp)^col_mask/conv2d_1/BiasAdd/ReadVariableOp(^col_mask/conv2d_1/Conv2D/ReadVariableOp;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp)^col_mask/conv2d_2/BiasAdd/ReadVariableOp(^col_mask/conv2d_2/Conv2D/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp3^col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp<^col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp)^table_mask/conv2d/BiasAdd/ReadVariableOp(^table_mask/conv2d/Conv2D/ReadVariableOp;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp3^table_mask/conv2d_transpose/BiasAdd/ReadVariableOp<^table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp2J
#block6_conv1/BiasAdd/ReadVariableOp#block6_conv1/BiasAdd/ReadVariableOp2H
"block6_conv1/Conv2D/ReadVariableOp"block6_conv1/Conv2D/ReadVariableOp2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp2J
#block6_conv2/BiasAdd/ReadVariableOp#block6_conv2/BiasAdd/ReadVariableOp2H
"block6_conv2/Conv2D/ReadVariableOp"block6_conv2/Conv2D/ReadVariableOp2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp2T
(col_mask/conv2d_1/BiasAdd/ReadVariableOp(col_mask/conv2d_1/BiasAdd/ReadVariableOp2R
'col_mask/conv2d_1/Conv2D/ReadVariableOp'col_mask/conv2d_1/Conv2D/ReadVariableOp2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2T
(col_mask/conv2d_2/BiasAdd/ReadVariableOp(col_mask/conv2d_2/BiasAdd/ReadVariableOp2R
'col_mask/conv2d_2/Conv2D/ReadVariableOp'col_mask/conv2d_2/Conv2D/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2h
2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp2z
;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2T
(table_mask/conv2d/BiasAdd/ReadVariableOp(table_mask/conv2d/BiasAdd/ReadVariableOp2R
'table_mask/conv2d/Conv2D/ReadVariableOp'table_mask/conv2d/Conv2D/ReadVariableOp2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp2h
2table_mask/conv2d_transpose/BiasAdd/ReadVariableOp2table_mask/conv2d_transpose/BiasAdd/ReadVariableOp2z
;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

F__inference_block5_conv1_layer_call_and_return_conditional_losses_3582

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
°
£
+__inference_block3_conv2_layer_call_fn_6104

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_34612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
B
&__inference_dropout_layer_call_fn_6352

inputs
identityË
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_36682
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs


F__inference_block4_conv4_layer_call_and_return_conditional_losses_6235

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
´
'__inference_col_mask_layer_call_fn_6563	
input	
pool3	
pool4#
unknown:
	unknown_0:	%
	unknown_1:
	unknown_2:	$
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallinputpool3pool4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_col_mask_layer_call_and_return_conditional_losses_41052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4
¨
£
+__inference_block5_conv1_layer_call_fn_6244

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_35822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
¨
£
+__inference_block5_conv2_layer_call_fn_6264

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_35992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
Ä
a
(__inference_dropout_1_layer_call_fn_6416

inputs
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_41402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs


F__inference_block2_conv1_layer_call_and_return_conditional_losses_3409

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç
º
F__inference_block6_conv1_layer_call_and_return_conditional_losses_3657

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Relu×
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity·
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs


F__inference_block3_conv3_layer_call_and_return_conditional_losses_6135

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
£
+__inference_block3_conv1_layer_call_fn_6084

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_34442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3222

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Î
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulÀ
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2
resize/ResizeBilinear
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö
J
.__inference_up_sampling2d_1_layer_call_fn_3228

inputs
identityí
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_32222
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Ë
__inference_loss_fn_4_6789_
Ccol_mask_conv2d_2_kernel_regularizer_square_readvariableop_resource:
identity¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCcol_mask_conv2d_2_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mulv
IdentityIdentity,col_mask/conv2d_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp


F__inference_block3_conv4_layer_call_and_return_conditional_losses_3495

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÀU
á
D__inference_table_mask_layer_call_and_return_conditional_losses_3846	
input	
pool3	
pool4A
%conv2d_conv2d_readvariableop_resource:5
&conv2d_biasadd_readvariableop_resource:	T
9conv2d_transpose_conv2d_transpose_readvariableop_resource:>
0conv2d_transpose_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢'conv2d_transpose/BiasAdd/ReadVariableOp¢0conv2d_transpose/conv2d_transpose/ReadVariableOp¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp¬
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp¹
conv2d/Conv2DConv2Dinput$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d/Conv2D¢
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
conv2d/BiasAdd/ReadVariableOp¥
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d/BiasAddv
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d/Relu{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulã
#up_sampling2d/resize/ResizeBilinearResizeBilinearconv2d/Relu:activations:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2%
#up_sampling2d/resize/ResizeBilineart
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis×
concatenate/concatConcatV24up_sampling2d/resize/ResizeBilinear:resized_images:0pool4 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
concatenate/concat
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_1/Const
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mulí
%up_sampling2d_1/resize/ResizeBilinearResizeBilinearconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2'
%up_sampling2d_1/resize/ResizeBilinearx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisá
concatenate_1/concatConcatV26up_sampling2d_1/resize/ResizeBilinear:resized_images:0pool3"concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
concatenate_1/concat
up_sampling2d/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_2
up_sampling2d/Const_3Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_3
up_sampling2d/mul_1Mulup_sampling2d/Const_2:output:0up_sampling2d/Const_3:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul_1
,up_sampling2d/resize_1/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d/mul_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2.
,up_sampling2d/resize_1/ResizeNearestNeighbor
up_sampling2d_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_2
up_sampling2d_1/Const_3Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_3
up_sampling2d_1/mul_1Mul up_sampling2d_1/Const_2:output:0 up_sampling2d_1/Const_3:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul_1ª
.up_sampling2d_1/resize_1/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d/resize_1/ResizeNearestNeighbor:resized_images:0up_sampling2d_1/mul_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(20
.up_sampling2d_1/resize_1/ResizeNearestNeighbor
conv2d_transpose/ShapeShape?up_sampling2d_1/resize_1/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose/Shape
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stack
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2È
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
conv2d_transpose/strided_slicew
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose/stack/1w
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose/stack/2v
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/3ø
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stack
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stack
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2Ò
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1ç
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOpÝ
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0?up_sampling2d_1/resize_1/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transpose¿
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOpØ
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose/BiasAdd
conv2d_transpose/SoftmaxSoftmax!conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose/Softmaxè
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/mul
IdentityIdentity"conv2d_transpose/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity§
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4
Ò
H
,__inference_up_sampling2d_layer_call_fn_3209

inputs
identityë
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_32032
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


F__inference_block3_conv4_layer_call_and_return_conditional_losses_6155

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


F__inference_block3_conv2_layer_call_and_return_conditional_losses_6115

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_3172

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
ÿ
F__inference_block1_conv1_layer_call_and_return_conditional_losses_3374

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
£
+__inference_block2_conv2_layer_call_fn_6064

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_34262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

F__inference_block5_conv4_layer_call_and_return_conditional_losses_6315

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
µ
Ë
__inference_loss_fn_2_6755_
Ctable_mask_conv2d_kernel_regularizer_square_readvariableop_resource:
identity¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCtable_mask_conv2d_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/mulv
IdentityIdentity,table_mask/conv2d/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp
½
Á
__inference_loss_fn_0_6727Z
>block6_conv1_kernel_regularizer_square_readvariableop_resource:
identity¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp÷
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp>block6_conv1_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulq
IdentityIdentity'block6_conv1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp
ØÅ
·
?__inference_model_layer_call_and_return_conditional_losses_3888

inputs+
block1_conv1_3375:@
block1_conv1_3377:@+
block1_conv2_3392:@@
block1_conv2_3394:@,
block2_conv1_3410:@ 
block2_conv1_3412:	-
block2_conv2_3427: 
block2_conv2_3429:	-
block3_conv1_3445: 
block3_conv1_3447:	-
block3_conv2_3462: 
block3_conv2_3464:	-
block3_conv3_3479: 
block3_conv3_3481:	-
block3_conv4_3496: 
block3_conv4_3498:	-
block4_conv1_3514: 
block4_conv1_3516:	-
block4_conv2_3531: 
block4_conv2_3533:	-
block4_conv3_3548: 
block4_conv3_3550:	-
block4_conv4_3565: 
block4_conv4_3567:	-
block5_conv1_3583: 
block5_conv1_3585:	-
block5_conv2_3600: 
block5_conv2_3602:	-
block5_conv3_3617: 
block5_conv3_3619:	-
block5_conv4_3634: 
block5_conv4_3636:	-
block6_conv1_3658: 
block6_conv1_3660:	-
block6_conv2_3688: 
block6_conv2_3690:	)
col_mask_3774:
col_mask_3776:	)
col_mask_3778:
col_mask_3780:	(
col_mask_3782:
col_mask_3784:+
table_mask_3847:
table_mask_3849:	*
table_mask_3851:
table_mask_3853:
identity

identity_1¢$block1_conv1/StatefulPartitionedCall¢$block1_conv2/StatefulPartitionedCall¢$block2_conv1/StatefulPartitionedCall¢$block2_conv2/StatefulPartitionedCall¢$block3_conv1/StatefulPartitionedCall¢$block3_conv2/StatefulPartitionedCall¢$block3_conv3/StatefulPartitionedCall¢$block3_conv4/StatefulPartitionedCall¢$block4_conv1/StatefulPartitionedCall¢$block4_conv2/StatefulPartitionedCall¢$block4_conv3/StatefulPartitionedCall¢$block4_conv4/StatefulPartitionedCall¢$block5_conv1/StatefulPartitionedCall¢$block5_conv2/StatefulPartitionedCall¢$block5_conv3/StatefulPartitionedCall¢$block5_conv4/StatefulPartitionedCall¢$block6_conv1/StatefulPartitionedCall¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp¢$block6_conv2/StatefulPartitionedCall¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp¢ col_mask/StatefulPartitionedCall¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢"table_mask/StatefulPartitionedCall¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp¯
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_3375block1_conv1_3377*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_33742&
$block1_conv1/StatefulPartitionedCallÖ
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_3392block1_conv2_3394*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_33912&
$block1_conv2/StatefulPartitionedCall
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_31362
block1_pool/PartitionedCallÎ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_3410block2_conv1_3412*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_34092&
$block2_conv1/StatefulPartitionedCall×
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_3427block2_conv2_3429*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_34262&
$block2_conv2/StatefulPartitionedCall
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_31482
block2_pool/PartitionedCallÎ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_3445block3_conv1_3447*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_34442&
$block3_conv1/StatefulPartitionedCall×
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_3462block3_conv2_3464*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_34612&
$block3_conv2/StatefulPartitionedCall×
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_3479block3_conv3_3481*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_34782&
$block3_conv3/StatefulPartitionedCall×
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_3496block3_conv4_3498*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_34952&
$block3_conv4/StatefulPartitionedCall
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_31602
block3_pool/PartitionedCallÎ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_3514block4_conv1_3516*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_35132&
$block4_conv1/StatefulPartitionedCall×
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_3531block4_conv2_3533*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_35302&
$block4_conv2/StatefulPartitionedCall×
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_3548block4_conv3_3550*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_35472&
$block4_conv3/StatefulPartitionedCall×
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_3565block4_conv4_3567*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_35642&
$block4_conv4/StatefulPartitionedCall
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_31722
block4_pool/PartitionedCallÌ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_3583block5_conv1_3585*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_35822&
$block5_conv1/StatefulPartitionedCallÕ
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_3600block5_conv2_3602*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_35992&
$block5_conv2/StatefulPartitionedCallÕ
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_3617block5_conv3_3619*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_36162&
$block5_conv3/StatefulPartitionedCallÕ
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_3634block5_conv4_3636*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_36332&
$block5_conv4/StatefulPartitionedCall
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_31842
block5_pool/PartitionedCallÌ
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall$block5_pool/PartitionedCall:output:0block6_conv1_3658block6_conv1_3660*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_36572&
$block6_conv1/StatefulPartitionedCall
dropout/PartitionedCallPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_36682
dropout/PartitionedCallÈ
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0block6_conv2_3688block6_conv2_3690*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_36872&
$block6_conv2/StatefulPartitionedCall
dropout_1/PartitionedCallPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_36982
dropout_1/PartitionedCallÉ
 col_mask/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0$block3_pool/PartitionedCall:output:0$block4_pool/PartitionedCall:output:0col_mask_3774col_mask_3776col_mask_3778col_mask_3780col_mask_3782col_mask_3784*
Tin
2	*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_col_mask_layer_call_and_return_conditional_losses_37732"
 col_mask/StatefulPartitionedCallµ
"table_mask/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0$block3_pool/PartitionedCall:output:0$block4_pool/PartitionedCall:output:0table_mask_3847table_mask_3849table_mask_3851table_mask_3853*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_table_mask_layer_call_and_return_conditional_losses_38462$
"table_mask/StatefulPartitionedCallÊ
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock6_conv1_3658*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulÊ
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock6_conv2_3688*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/mulÒ
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOptable_mask_3847*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/mulÐ
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcol_mask_3774*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulÐ
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcol_mask_3778*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity+table_mask/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity)col_mask/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1û
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp%^block6_conv2/StatefulPartitionedCall6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp!^col_mask/StatefulPartitionedCall;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp#^table_mask/StatefulPartitionedCall;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp2D
 col_mask/StatefulPartitionedCall col_mask/StatefulPartitionedCall2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2H
"table_mask/StatefulPartitionedCall"table_mask/StatefulPartitionedCall2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý×
­*
?__inference_model_layer_call_and_return_conditional_losses_5995

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@;
,block2_conv1_biasadd_readvariableop_resource:	G
+block2_conv2_conv2d_readvariableop_resource:;
,block2_conv2_biasadd_readvariableop_resource:	G
+block3_conv1_conv2d_readvariableop_resource:;
,block3_conv1_biasadd_readvariableop_resource:	G
+block3_conv2_conv2d_readvariableop_resource:;
,block3_conv2_biasadd_readvariableop_resource:	G
+block3_conv3_conv2d_readvariableop_resource:;
,block3_conv3_biasadd_readvariableop_resource:	G
+block3_conv4_conv2d_readvariableop_resource:;
,block3_conv4_biasadd_readvariableop_resource:	G
+block4_conv1_conv2d_readvariableop_resource:;
,block4_conv1_biasadd_readvariableop_resource:	G
+block4_conv2_conv2d_readvariableop_resource:;
,block4_conv2_biasadd_readvariableop_resource:	G
+block4_conv3_conv2d_readvariableop_resource:;
,block4_conv3_biasadd_readvariableop_resource:	G
+block4_conv4_conv2d_readvariableop_resource:;
,block4_conv4_biasadd_readvariableop_resource:	G
+block5_conv1_conv2d_readvariableop_resource:;
,block5_conv1_biasadd_readvariableop_resource:	G
+block5_conv2_conv2d_readvariableop_resource:;
,block5_conv2_biasadd_readvariableop_resource:	G
+block5_conv3_conv2d_readvariableop_resource:;
,block5_conv3_biasadd_readvariableop_resource:	G
+block5_conv4_conv2d_readvariableop_resource:;
,block5_conv4_biasadd_readvariableop_resource:	G
+block6_conv1_conv2d_readvariableop_resource:;
,block6_conv1_biasadd_readvariableop_resource:	G
+block6_conv2_conv2d_readvariableop_resource:;
,block6_conv2_biasadd_readvariableop_resource:	L
0col_mask_conv2d_1_conv2d_readvariableop_resource:@
1col_mask_conv2d_1_biasadd_readvariableop_resource:	L
0col_mask_conv2d_2_conv2d_readvariableop_resource:@
1col_mask_conv2d_2_biasadd_readvariableop_resource:	_
Dcol_mask_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:I
;col_mask_conv2d_transpose_1_biasadd_readvariableop_resource:L
0table_mask_conv2d_conv2d_readvariableop_resource:@
1table_mask_conv2d_biasadd_readvariableop_resource:	_
Dtable_mask_conv2d_transpose_conv2d_transpose_readvariableop_resource:I
;table_mask_conv2d_transpose_biasadd_readvariableop_resource:
identity

identity_1¢#block1_conv1/BiasAdd/ReadVariableOp¢"block1_conv1/Conv2D/ReadVariableOp¢#block1_conv2/BiasAdd/ReadVariableOp¢"block1_conv2/Conv2D/ReadVariableOp¢#block2_conv1/BiasAdd/ReadVariableOp¢"block2_conv1/Conv2D/ReadVariableOp¢#block2_conv2/BiasAdd/ReadVariableOp¢"block2_conv2/Conv2D/ReadVariableOp¢#block3_conv1/BiasAdd/ReadVariableOp¢"block3_conv1/Conv2D/ReadVariableOp¢#block3_conv2/BiasAdd/ReadVariableOp¢"block3_conv2/Conv2D/ReadVariableOp¢#block3_conv3/BiasAdd/ReadVariableOp¢"block3_conv3/Conv2D/ReadVariableOp¢#block3_conv4/BiasAdd/ReadVariableOp¢"block3_conv4/Conv2D/ReadVariableOp¢#block4_conv1/BiasAdd/ReadVariableOp¢"block4_conv1/Conv2D/ReadVariableOp¢#block4_conv2/BiasAdd/ReadVariableOp¢"block4_conv2/Conv2D/ReadVariableOp¢#block4_conv3/BiasAdd/ReadVariableOp¢"block4_conv3/Conv2D/ReadVariableOp¢#block4_conv4/BiasAdd/ReadVariableOp¢"block4_conv4/Conv2D/ReadVariableOp¢#block5_conv1/BiasAdd/ReadVariableOp¢"block5_conv1/Conv2D/ReadVariableOp¢#block5_conv2/BiasAdd/ReadVariableOp¢"block5_conv2/Conv2D/ReadVariableOp¢#block5_conv3/BiasAdd/ReadVariableOp¢"block5_conv3/Conv2D/ReadVariableOp¢#block5_conv4/BiasAdd/ReadVariableOp¢"block5_conv4/Conv2D/ReadVariableOp¢#block6_conv1/BiasAdd/ReadVariableOp¢"block6_conv1/Conv2D/ReadVariableOp¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp¢#block6_conv2/BiasAdd/ReadVariableOp¢"block6_conv2/Conv2D/ReadVariableOp¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp¢(col_mask/conv2d_1/BiasAdd/ReadVariableOp¢'col_mask/conv2d_1/Conv2D/ReadVariableOp¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢(col_mask/conv2d_2/BiasAdd/ReadVariableOp¢'col_mask/conv2d_2/Conv2D/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp¢;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢(table_mask/conv2d/BiasAdd/ReadVariableOp¢'table_mask/conv2d/Conv2D/ReadVariableOp¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp¢2table_mask/conv2d_transpose/BiasAdd/ReadVariableOp¢;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp¼
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOpÌ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
block1_conv1/Conv2D³
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp¾
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
block1_conv1/BiasAdd
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
block1_conv1/Relu¼
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpå
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
block1_conv2/Conv2D³
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp¾
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
block1_conv2/BiasAdd
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
block1_conv2/ReluÅ
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool½
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpã
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block2_conv1/Conv2D´
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp¿
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block2_conv1/BiasAdd
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block2_conv1/Relu¾
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpæ
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block2_conv2/Conv2D´
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp¿
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block2_conv2/BiasAdd
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block2_conv2/ReluÆ
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool¾
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpã
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block3_conv1/Conv2D´
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp¿
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv1/BiasAdd
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv1/Relu¾
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpæ
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block3_conv2/Conv2D´
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp¿
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv2/BiasAdd
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv2/Relu¾
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpæ
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block3_conv3/Conv2D´
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp¿
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv3/BiasAdd
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv3/Relu¾
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block3_conv4/Conv2D/ReadVariableOpæ
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block3_conv4/Conv2D´
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block3_conv4/BiasAdd/ReadVariableOp¿
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv4/BiasAdd
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block3_conv4/ReluÆ
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool¾
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpã
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block4_conv1/Conv2D´
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp¿
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv1/BiasAdd
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv1/Relu¾
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpæ
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block4_conv2/Conv2D´
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp¿
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv2/BiasAdd
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv2/Relu¾
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpæ
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block4_conv3/Conv2D´
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp¿
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv3/BiasAdd
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv3/Relu¾
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block4_conv4/Conv2D/ReadVariableOpæ
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
block4_conv4/Conv2D´
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block4_conv4/BiasAdd/ReadVariableOp¿
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv4/BiasAdd
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
block4_conv4/ReluÄ
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool¾
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpá
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
block5_conv1/Conv2D´
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp½
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv1/BiasAdd
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv1/Relu¾
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpä
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
block5_conv2/Conv2D´
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp½
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv2/BiasAdd
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv2/Relu¾
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpä
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
block5_conv3/Conv2D´
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp½
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv3/BiasAdd
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv3/Relu¾
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block5_conv4/Conv2D/ReadVariableOpä
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
block5_conv4/Conv2D´
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block5_conv4/BiasAdd/ReadVariableOp½
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv4/BiasAdd
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
block5_conv4/ReluÄ
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool¾
"block6_conv1/Conv2D/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block6_conv1/Conv2D/ReadVariableOpâ
block6_conv1/Conv2DConv2Dblock5_pool/MaxPool:output:0*block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
block6_conv1/Conv2D´
#block6_conv1/BiasAdd/ReadVariableOpReadVariableOp,block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block6_conv1/BiasAdd/ReadVariableOp½
block6_conv1/BiasAddBiasAddblock6_conv1/Conv2D:output:0+block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
block6_conv1/BiasAdd
block6_conv1/ReluRelublock6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
block6_conv1/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const­
dropout/dropout/MulMulblock6_conv1/Relu:activations:0dropout/dropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/dropout/Mul}
dropout/dropout/ShapeShapeblock6_conv1/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/ShapeÕ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2 
dropout/dropout/GreaterEqual/yç
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/dropout/GreaterEqual 
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/dropout/Cast£
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/dropout/Mul_1¾
"block6_conv2/Conv2D/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02$
"block6_conv2/Conv2D/ReadVariableOpß
block6_conv2/Conv2DConv2Ddropout/dropout/Mul_1:z:0*block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
block6_conv2/Conv2D´
#block6_conv2/BiasAdd/ReadVariableOpReadVariableOp,block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#block6_conv2/BiasAdd/ReadVariableOp½
block6_conv2/BiasAddBiasAddblock6_conv2/Conv2D:output:0+block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
block6_conv2/BiasAdd
block6_conv2/ReluRelublock6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
block6_conv2/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const³
dropout_1/dropout/MulMulblock6_conv2/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_1/dropout/Mul
dropout_1/dropout/ShapeShapeblock6_conv2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/ShapeÛ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2"
 dropout_1/dropout/GreaterEqual/yï
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2 
dropout_1/dropout/GreaterEqual¦
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_1/dropout/Cast«
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_1/dropout/Mul_1Í
'col_mask/conv2d_1/Conv2D/ReadVariableOpReadVariableOp0col_mask_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'col_mask/conv2d_1/Conv2D/ReadVariableOpð
col_mask/conv2d_1/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0/col_mask/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
col_mask/conv2d_1/Conv2DÃ
(col_mask/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp1col_mask_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(col_mask/conv2d_1/BiasAdd/ReadVariableOpÑ
col_mask/conv2d_1/BiasAddBiasAdd!col_mask/conv2d_1/Conv2D:output:00col_mask/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/conv2d_1/BiasAdd
col_mask/conv2d_1/ReluRelu"col_mask/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/conv2d_1/Relu
 col_mask/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 col_mask/dropout_2/dropout/ConstÓ
col_mask/dropout_2/dropout/MulMul$col_mask/conv2d_1/Relu:activations:0)col_mask/dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2 
col_mask/dropout_2/dropout/Mul
 col_mask/dropout_2/dropout/ShapeShape$col_mask/conv2d_1/Relu:activations:0*
T0*
_output_shapes
:2"
 col_mask/dropout_2/dropout/Shapeö
7col_mask/dropout_2/dropout/random_uniform/RandomUniformRandomUniform)col_mask/dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype029
7col_mask/dropout_2/dropout/random_uniform/RandomUniform
)col_mask/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2+
)col_mask/dropout_2/dropout/GreaterEqual/y
'col_mask/dropout_2/dropout/GreaterEqualGreaterEqual@col_mask/dropout_2/dropout/random_uniform/RandomUniform:output:02col_mask/dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2)
'col_mask/dropout_2/dropout/GreaterEqualÁ
col_mask/dropout_2/dropout/CastCast+col_mask/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
col_mask/dropout_2/dropout/CastÏ
 col_mask/dropout_2/dropout/Mul_1Mul"col_mask/dropout_2/dropout/Mul:z:0#col_mask/dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2"
 col_mask/dropout_2/dropout/Mul_1Í
'col_mask/conv2d_2/Conv2D/ReadVariableOpReadVariableOp0col_mask_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'col_mask/conv2d_2/Conv2D/ReadVariableOpù
col_mask/conv2d_2/Conv2DConv2D$col_mask/dropout_2/dropout/Mul_1:z:0/col_mask/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
col_mask/conv2d_2/Conv2DÃ
(col_mask/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp1col_mask_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(col_mask/conv2d_2/BiasAdd/ReadVariableOpÑ
col_mask/conv2d_2/BiasAddBiasAdd!col_mask/conv2d_2/Conv2D:output:00col_mask/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/conv2d_2/BiasAdd
col_mask/conv2d_2/ReluRelu"col_mask/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
col_mask/conv2d_2/Relu
col_mask/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2 
col_mask/up_sampling2d_2/Const
 col_mask/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 col_mask/up_sampling2d_2/Const_1¼
col_mask/up_sampling2d_2/mulMul'col_mask/up_sampling2d_2/Const:output:0)col_mask/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
col_mask/up_sampling2d_2/mul
.col_mask/up_sampling2d_2/resize/ResizeBilinearResizeBilinear$col_mask/conv2d_2/Relu:activations:0 col_mask/up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(20
.col_mask/up_sampling2d_2/resize/ResizeBilinear
 col_mask/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 col_mask/concatenate/concat/axis
col_mask/concatenate/concatConcatV2?col_mask/up_sampling2d_2/resize/ResizeBilinear:resized_images:0block4_pool/MaxPool:output:0)col_mask/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
col_mask/concatenate/concat
col_mask/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
col_mask/up_sampling2d_3/Const
 col_mask/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 col_mask/up_sampling2d_3/Const_1¼
col_mask/up_sampling2d_3/mulMul'col_mask/up_sampling2d_3/Const:output:0)col_mask/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
col_mask/up_sampling2d_3/mul
.col_mask/up_sampling2d_3/resize/ResizeBilinearResizeBilinear$col_mask/concatenate/concat:output:0 col_mask/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(20
.col_mask/up_sampling2d_3/resize/ResizeBilinear
"col_mask/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"col_mask/concatenate_1/concat/axis
col_mask/concatenate_1/concatConcatV2?col_mask/up_sampling2d_3/resize/ResizeBilinear:resized_images:0block3_pool/MaxPool:output:0+col_mask/concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
col_mask/concatenate_1/concat
col_mask/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
col_mask/up_sampling2d/Const
col_mask/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2 
col_mask/up_sampling2d/Const_1´
col_mask/up_sampling2d/mulMul%col_mask/up_sampling2d/Const:output:0'col_mask/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
col_mask/up_sampling2d/mul¢
3col_mask/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor&col_mask/concatenate_1/concat:output:0col_mask/up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(25
3col_mask/up_sampling2d/resize/ResizeNearestNeighbor
col_mask/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
col_mask/up_sampling2d_1/Const
 col_mask/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 col_mask/up_sampling2d_1/Const_1¼
col_mask/up_sampling2d_1/mulMul'col_mask/up_sampling2d_1/Const:output:0)col_mask/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
col_mask/up_sampling2d_1/mulÆ
5col_mask/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborDcol_mask/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0 col_mask/up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(27
5col_mask/up_sampling2d_1/resize/ResizeNearestNeighbor¼
!col_mask/conv2d_transpose_1/ShapeShapeFcol_mask/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2#
!col_mask/conv2d_transpose_1/Shape¬
/col_mask/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/col_mask/conv2d_transpose_1/strided_slice/stack°
1col_mask/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1col_mask/conv2d_transpose_1/strided_slice/stack_1°
1col_mask/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1col_mask/conv2d_transpose_1/strided_slice/stack_2
)col_mask/conv2d_transpose_1/strided_sliceStridedSlice*col_mask/conv2d_transpose_1/Shape:output:08col_mask/conv2d_transpose_1/strided_slice/stack:output:0:col_mask/conv2d_transpose_1/strided_slice/stack_1:output:0:col_mask/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)col_mask/conv2d_transpose_1/strided_slice
#col_mask/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2%
#col_mask/conv2d_transpose_1/stack/1
#col_mask/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2%
#col_mask/conv2d_transpose_1/stack/2
#col_mask/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#col_mask/conv2d_transpose_1/stack/3º
!col_mask/conv2d_transpose_1/stackPack2col_mask/conv2d_transpose_1/strided_slice:output:0,col_mask/conv2d_transpose_1/stack/1:output:0,col_mask/conv2d_transpose_1/stack/2:output:0,col_mask/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!col_mask/conv2d_transpose_1/stack°
1col_mask/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1col_mask/conv2d_transpose_1/strided_slice_1/stack´
3col_mask/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3col_mask/conv2d_transpose_1/strided_slice_1/stack_1´
3col_mask/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3col_mask/conv2d_transpose_1/strided_slice_1/stack_2
+col_mask/conv2d_transpose_1/strided_slice_1StridedSlice*col_mask/conv2d_transpose_1/stack:output:0:col_mask/conv2d_transpose_1/strided_slice_1/stack:output:0<col_mask/conv2d_transpose_1/strided_slice_1/stack_1:output:0<col_mask/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+col_mask/conv2d_transpose_1/strided_slice_1
;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpDcol_mask_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype02=
;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
,col_mask/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput*col_mask/conv2d_transpose_1/stack:output:0Ccol_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Fcol_mask/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2.
,col_mask/conv2d_transpose_1/conv2d_transposeà
2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp;col_mask_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp
#col_mask/conv2d_transpose_1/BiasAddBiasAdd5col_mask/conv2d_transpose_1/conv2d_transpose:output:0:col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#col_mask/conv2d_transpose_1/BiasAdd¿
#col_mask/conv2d_transpose_1/SoftmaxSoftmax,col_mask/conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#col_mask/conv2d_transpose_1/SoftmaxÍ
'table_mask/conv2d/Conv2D/ReadVariableOpReadVariableOp0table_mask_conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'table_mask/conv2d/Conv2D/ReadVariableOpð
table_mask/conv2d/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0/table_mask/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
table_mask/conv2d/Conv2DÃ
(table_mask/conv2d/BiasAdd/ReadVariableOpReadVariableOp1table_mask_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(table_mask/conv2d/BiasAdd/ReadVariableOpÑ
table_mask/conv2d/BiasAddBiasAdd!table_mask/conv2d/Conv2D:output:00table_mask/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
table_mask/conv2d/BiasAdd
table_mask/conv2d/ReluRelu"table_mask/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
table_mask/conv2d/Relu
table_mask/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2 
table_mask/up_sampling2d/Const
 table_mask/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 table_mask/up_sampling2d/Const_1¼
table_mask/up_sampling2d/mulMul'table_mask/up_sampling2d/Const:output:0)table_mask/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
table_mask/up_sampling2d/mul
.table_mask/up_sampling2d/resize/ResizeBilinearResizeBilinear$table_mask/conv2d/Relu:activations:0 table_mask/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(20
.table_mask/up_sampling2d/resize/ResizeBilinear
$table_mask/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$table_mask/concatenate_2/concat/axis 
table_mask/concatenate_2/concatConcatV2?table_mask/up_sampling2d/resize/ResizeBilinear:resized_images:0block4_pool/MaxPool:output:0-table_mask/concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2!
table_mask/concatenate_2/concat
 table_mask/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2"
 table_mask/up_sampling2d_1/Const
"table_mask/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"table_mask/up_sampling2d_1/Const_1Ä
table_mask/up_sampling2d_1/mulMul)table_mask/up_sampling2d_1/Const:output:0+table_mask/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2 
table_mask/up_sampling2d_1/mul
0table_mask/up_sampling2d_1/resize/ResizeBilinearResizeBilinear(table_mask/concatenate_2/concat:output:0"table_mask/up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(22
0table_mask/up_sampling2d_1/resize/ResizeBilinear
$table_mask/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$table_mask/concatenate_3/concat/axis¤
table_mask/concatenate_3/concatConcatV2Atable_mask/up_sampling2d_1/resize/ResizeBilinear:resized_images:0block3_pool/MaxPool:output:0-table_mask/concatenate_3/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2!
table_mask/concatenate_3/concat
 table_mask/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 table_mask/up_sampling2d_2/Const
"table_mask/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"table_mask/up_sampling2d_2/Const_1Ä
table_mask/up_sampling2d_2/mulMul)table_mask/up_sampling2d_2/Const:output:0+table_mask/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2 
table_mask/up_sampling2d_2/mul°
7table_mask/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor(table_mask/concatenate_3/concat:output:0"table_mask/up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(29
7table_mask/up_sampling2d_2/resize/ResizeNearestNeighbor
 table_mask/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 table_mask/up_sampling2d_3/Const
"table_mask/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"table_mask/up_sampling2d_3/Const_1Ä
table_mask/up_sampling2d_3/mulMul)table_mask/up_sampling2d_3/Const:output:0+table_mask/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2 
table_mask/up_sampling2d_3/mulÐ
7table_mask/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborHtable_mask/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0"table_mask/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(29
7table_mask/up_sampling2d_3/resize/ResizeNearestNeighbor¾
!table_mask/conv2d_transpose/ShapeShapeHtable_mask/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2#
!table_mask/conv2d_transpose/Shape¬
/table_mask/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/table_mask/conv2d_transpose/strided_slice/stack°
1table_mask/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1table_mask/conv2d_transpose/strided_slice/stack_1°
1table_mask/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1table_mask/conv2d_transpose/strided_slice/stack_2
)table_mask/conv2d_transpose/strided_sliceStridedSlice*table_mask/conv2d_transpose/Shape:output:08table_mask/conv2d_transpose/strided_slice/stack:output:0:table_mask/conv2d_transpose/strided_slice/stack_1:output:0:table_mask/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)table_mask/conv2d_transpose/strided_slice
#table_mask/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2%
#table_mask/conv2d_transpose/stack/1
#table_mask/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2%
#table_mask/conv2d_transpose/stack/2
#table_mask/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#table_mask/conv2d_transpose/stack/3º
!table_mask/conv2d_transpose/stackPack2table_mask/conv2d_transpose/strided_slice:output:0,table_mask/conv2d_transpose/stack/1:output:0,table_mask/conv2d_transpose/stack/2:output:0,table_mask/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!table_mask/conv2d_transpose/stack°
1table_mask/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1table_mask/conv2d_transpose/strided_slice_1/stack´
3table_mask/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3table_mask/conv2d_transpose/strided_slice_1/stack_1´
3table_mask/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3table_mask/conv2d_transpose/strided_slice_1/stack_2
+table_mask/conv2d_transpose/strided_slice_1StridedSlice*table_mask/conv2d_transpose/stack:output:0:table_mask/conv2d_transpose/strided_slice_1/stack:output:0<table_mask/conv2d_transpose/strided_slice_1/stack_1:output:0<table_mask/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+table_mask/conv2d_transpose/strided_slice_1
;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpDtable_mask_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype02=
;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp
,table_mask/conv2d_transpose/conv2d_transposeConv2DBackpropInput*table_mask/conv2d_transpose/stack:output:0Ctable_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0Htable_mask/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2.
,table_mask/conv2d_transpose/conv2d_transposeà
2table_mask/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp;table_mask_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2table_mask/conv2d_transpose/BiasAdd/ReadVariableOp
#table_mask/conv2d_transpose/BiasAddBiasAdd5table_mask/conv2d_transpose/conv2d_transpose:output:0:table_mask/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#table_mask/conv2d_transpose/BiasAdd¿
#table_mask/conv2d_transpose/SoftmaxSoftmax,table_mask/conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#table_mask/conv2d_transpose/Softmaxä
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulä
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/muló
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0table_mask_conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/muló
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0col_mask_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/muló
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0col_mask_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity-table_mask/conv2d_transpose/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity-col_mask/conv2d_transpose_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1 
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp)^col_mask/conv2d_1/BiasAdd/ReadVariableOp(^col_mask/conv2d_1/Conv2D/ReadVariableOp;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp)^col_mask/conv2d_2/BiasAdd/ReadVariableOp(^col_mask/conv2d_2/Conv2D/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp3^col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp<^col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp)^table_mask/conv2d/BiasAdd/ReadVariableOp(^table_mask/conv2d/Conv2D/ReadVariableOp;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp3^table_mask/conv2d_transpose/BiasAdd/ReadVariableOp<^table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp2J
#block6_conv1/BiasAdd/ReadVariableOp#block6_conv1/BiasAdd/ReadVariableOp2H
"block6_conv1/Conv2D/ReadVariableOp"block6_conv1/Conv2D/ReadVariableOp2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp2J
#block6_conv2/BiasAdd/ReadVariableOp#block6_conv2/BiasAdd/ReadVariableOp2H
"block6_conv2/Conv2D/ReadVariableOp"block6_conv2/Conv2D/ReadVariableOp2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp2T
(col_mask/conv2d_1/BiasAdd/ReadVariableOp(col_mask/conv2d_1/BiasAdd/ReadVariableOp2R
'col_mask/conv2d_1/Conv2D/ReadVariableOp'col_mask/conv2d_1/Conv2D/ReadVariableOp2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2T
(col_mask/conv2d_2/BiasAdd/ReadVariableOp(col_mask/conv2d_2/BiasAdd/ReadVariableOp2R
'col_mask/conv2d_2/Conv2D/ReadVariableOp'col_mask/conv2d_2/Conv2D/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2h
2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp2col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp2z
;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp;col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2T
(table_mask/conv2d/BiasAdd/ReadVariableOp(table_mask/conv2d/BiasAdd/ReadVariableOp2R
'table_mask/conv2d/Conv2D/ReadVariableOp'table_mask/conv2d/Conv2D/ReadVariableOp2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp2h
2table_mask/conv2d_transpose/BiasAdd/ReadVariableOp2table_mask/conv2d_transpose/BiasAdd/ReadVariableOp2z
;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp;table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
ÿ
F__inference_block1_conv1_layer_call_and_return_conditional_losses_6015

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

a
C__inference_dropout_1_layer_call_and_return_conditional_losses_6421

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Â
Ù
"__inference_signature_wrapper_5236
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	&

unknown_25:

unknown_26:	&

unknown_27:

unknown_28:	&

unknown_29:

unknown_30:	&

unknown_31:

unknown_32:	&

unknown_33:

unknown_34:	&

unknown_35:

unknown_36:	&

unknown_37:

unknown_38:	%

unknown_39:

unknown_40:&

unknown_41:

unknown_42:	%

unknown_43:

unknown_44:
identity

identity_1¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__wrapped_model_31302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

e
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_3305

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Î
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulÀ
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2
resize/ResizeBilinear
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&

L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_3346

inputsC
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3´
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdd{
SoftmaxSoftmaxBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_3136

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ§
,
__inference__wrapped_model_3130
input_1K
1model_block1_conv1_conv2d_readvariableop_resource:@@
2model_block1_conv1_biasadd_readvariableop_resource:@K
1model_block1_conv2_conv2d_readvariableop_resource:@@@
2model_block1_conv2_biasadd_readvariableop_resource:@L
1model_block2_conv1_conv2d_readvariableop_resource:@A
2model_block2_conv1_biasadd_readvariableop_resource:	M
1model_block2_conv2_conv2d_readvariableop_resource:A
2model_block2_conv2_biasadd_readvariableop_resource:	M
1model_block3_conv1_conv2d_readvariableop_resource:A
2model_block3_conv1_biasadd_readvariableop_resource:	M
1model_block3_conv2_conv2d_readvariableop_resource:A
2model_block3_conv2_biasadd_readvariableop_resource:	M
1model_block3_conv3_conv2d_readvariableop_resource:A
2model_block3_conv3_biasadd_readvariableop_resource:	M
1model_block3_conv4_conv2d_readvariableop_resource:A
2model_block3_conv4_biasadd_readvariableop_resource:	M
1model_block4_conv1_conv2d_readvariableop_resource:A
2model_block4_conv1_biasadd_readvariableop_resource:	M
1model_block4_conv2_conv2d_readvariableop_resource:A
2model_block4_conv2_biasadd_readvariableop_resource:	M
1model_block4_conv3_conv2d_readvariableop_resource:A
2model_block4_conv3_biasadd_readvariableop_resource:	M
1model_block4_conv4_conv2d_readvariableop_resource:A
2model_block4_conv4_biasadd_readvariableop_resource:	M
1model_block5_conv1_conv2d_readvariableop_resource:A
2model_block5_conv1_biasadd_readvariableop_resource:	M
1model_block5_conv2_conv2d_readvariableop_resource:A
2model_block5_conv2_biasadd_readvariableop_resource:	M
1model_block5_conv3_conv2d_readvariableop_resource:A
2model_block5_conv3_biasadd_readvariableop_resource:	M
1model_block5_conv4_conv2d_readvariableop_resource:A
2model_block5_conv4_biasadd_readvariableop_resource:	M
1model_block6_conv1_conv2d_readvariableop_resource:A
2model_block6_conv1_biasadd_readvariableop_resource:	M
1model_block6_conv2_conv2d_readvariableop_resource:A
2model_block6_conv2_biasadd_readvariableop_resource:	R
6model_col_mask_conv2d_1_conv2d_readvariableop_resource:F
7model_col_mask_conv2d_1_biasadd_readvariableop_resource:	R
6model_col_mask_conv2d_2_conv2d_readvariableop_resource:F
7model_col_mask_conv2d_2_biasadd_readvariableop_resource:	e
Jmodel_col_mask_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:O
Amodel_col_mask_conv2d_transpose_1_biasadd_readvariableop_resource:R
6model_table_mask_conv2d_conv2d_readvariableop_resource:F
7model_table_mask_conv2d_biasadd_readvariableop_resource:	e
Jmodel_table_mask_conv2d_transpose_conv2d_transpose_readvariableop_resource:O
Amodel_table_mask_conv2d_transpose_biasadd_readvariableop_resource:
identity

identity_1¢)model/block1_conv1/BiasAdd/ReadVariableOp¢(model/block1_conv1/Conv2D/ReadVariableOp¢)model/block1_conv2/BiasAdd/ReadVariableOp¢(model/block1_conv2/Conv2D/ReadVariableOp¢)model/block2_conv1/BiasAdd/ReadVariableOp¢(model/block2_conv1/Conv2D/ReadVariableOp¢)model/block2_conv2/BiasAdd/ReadVariableOp¢(model/block2_conv2/Conv2D/ReadVariableOp¢)model/block3_conv1/BiasAdd/ReadVariableOp¢(model/block3_conv1/Conv2D/ReadVariableOp¢)model/block3_conv2/BiasAdd/ReadVariableOp¢(model/block3_conv2/Conv2D/ReadVariableOp¢)model/block3_conv3/BiasAdd/ReadVariableOp¢(model/block3_conv3/Conv2D/ReadVariableOp¢)model/block3_conv4/BiasAdd/ReadVariableOp¢(model/block3_conv4/Conv2D/ReadVariableOp¢)model/block4_conv1/BiasAdd/ReadVariableOp¢(model/block4_conv1/Conv2D/ReadVariableOp¢)model/block4_conv2/BiasAdd/ReadVariableOp¢(model/block4_conv2/Conv2D/ReadVariableOp¢)model/block4_conv3/BiasAdd/ReadVariableOp¢(model/block4_conv3/Conv2D/ReadVariableOp¢)model/block4_conv4/BiasAdd/ReadVariableOp¢(model/block4_conv4/Conv2D/ReadVariableOp¢)model/block5_conv1/BiasAdd/ReadVariableOp¢(model/block5_conv1/Conv2D/ReadVariableOp¢)model/block5_conv2/BiasAdd/ReadVariableOp¢(model/block5_conv2/Conv2D/ReadVariableOp¢)model/block5_conv3/BiasAdd/ReadVariableOp¢(model/block5_conv3/Conv2D/ReadVariableOp¢)model/block5_conv4/BiasAdd/ReadVariableOp¢(model/block5_conv4/Conv2D/ReadVariableOp¢)model/block6_conv1/BiasAdd/ReadVariableOp¢(model/block6_conv1/Conv2D/ReadVariableOp¢)model/block6_conv2/BiasAdd/ReadVariableOp¢(model/block6_conv2/Conv2D/ReadVariableOp¢.model/col_mask/conv2d_1/BiasAdd/ReadVariableOp¢-model/col_mask/conv2d_1/Conv2D/ReadVariableOp¢.model/col_mask/conv2d_2/BiasAdd/ReadVariableOp¢-model/col_mask/conv2d_2/Conv2D/ReadVariableOp¢8model/col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp¢Amodel/col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢.model/table_mask/conv2d/BiasAdd/ReadVariableOp¢-model/table_mask/conv2d/Conv2D/ReadVariableOp¢8model/table_mask/conv2d_transpose/BiasAdd/ReadVariableOp¢Amodel/table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOpÎ
(model/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1model_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(model/block1_conv1/Conv2D/ReadVariableOpß
model/block1_conv1/Conv2DConv2Dinput_10model/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
model/block1_conv1/Conv2DÅ
)model/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2model_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)model/block1_conv1/BiasAdd/ReadVariableOpÖ
model/block1_conv1/BiasAddBiasAdd"model/block1_conv1/Conv2D:output:01model/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/block1_conv1/BiasAdd
model/block1_conv1/ReluRelu#model/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/block1_conv1/ReluÎ
(model/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1model_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(model/block1_conv2/Conv2D/ReadVariableOpý
model/block1_conv2/Conv2DConv2D%model/block1_conv1/Relu:activations:00model/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
model/block1_conv2/Conv2DÅ
)model/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2model_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)model/block1_conv2/BiasAdd/ReadVariableOpÖ
model/block1_conv2/BiasAddBiasAdd"model/block1_conv2/Conv2D:output:01model/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/block1_conv2/BiasAdd
model/block1_conv2/ReluRelu#model/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/block1_conv2/Relu×
model/block1_pool/MaxPoolMaxPool%model/block1_conv2/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
model/block1_pool/MaxPoolÏ
(model/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1model_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02*
(model/block2_conv1/Conv2D/ReadVariableOpû
model/block2_conv1/Conv2DConv2D"model/block1_pool/MaxPool:output:00model/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block2_conv1/Conv2DÆ
)model/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2model_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block2_conv1/BiasAdd/ReadVariableOp×
model/block2_conv1/BiasAddBiasAdd"model/block2_conv1/Conv2D:output:01model/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block2_conv1/BiasAdd
model/block2_conv1/ReluRelu#model/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block2_conv1/ReluÐ
(model/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1model_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block2_conv2/Conv2D/ReadVariableOpþ
model/block2_conv2/Conv2DConv2D%model/block2_conv1/Relu:activations:00model/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block2_conv2/Conv2DÆ
)model/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2model_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block2_conv2/BiasAdd/ReadVariableOp×
model/block2_conv2/BiasAddBiasAdd"model/block2_conv2/Conv2D:output:01model/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block2_conv2/BiasAdd
model/block2_conv2/ReluRelu#model/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block2_conv2/ReluØ
model/block2_pool/MaxPoolMaxPool%model/block2_conv2/Relu:activations:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
model/block2_pool/MaxPoolÐ
(model/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1model_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block3_conv1/Conv2D/ReadVariableOpû
model/block3_conv1/Conv2DConv2D"model/block2_pool/MaxPool:output:00model/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block3_conv1/Conv2DÆ
)model/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2model_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block3_conv1/BiasAdd/ReadVariableOp×
model/block3_conv1/BiasAddBiasAdd"model/block3_conv1/Conv2D:output:01model/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block3_conv1/BiasAdd
model/block3_conv1/ReluRelu#model/block3_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block3_conv1/ReluÐ
(model/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1model_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block3_conv2/Conv2D/ReadVariableOpþ
model/block3_conv2/Conv2DConv2D%model/block3_conv1/Relu:activations:00model/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block3_conv2/Conv2DÆ
)model/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2model_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block3_conv2/BiasAdd/ReadVariableOp×
model/block3_conv2/BiasAddBiasAdd"model/block3_conv2/Conv2D:output:01model/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block3_conv2/BiasAdd
model/block3_conv2/ReluRelu#model/block3_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block3_conv2/ReluÐ
(model/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1model_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block3_conv3/Conv2D/ReadVariableOpþ
model/block3_conv3/Conv2DConv2D%model/block3_conv2/Relu:activations:00model/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block3_conv3/Conv2DÆ
)model/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2model_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block3_conv3/BiasAdd/ReadVariableOp×
model/block3_conv3/BiasAddBiasAdd"model/block3_conv3/Conv2D:output:01model/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block3_conv3/BiasAdd
model/block3_conv3/ReluRelu#model/block3_conv3/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block3_conv3/ReluÐ
(model/block3_conv4/Conv2D/ReadVariableOpReadVariableOp1model_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block3_conv4/Conv2D/ReadVariableOpþ
model/block3_conv4/Conv2DConv2D%model/block3_conv3/Relu:activations:00model/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block3_conv4/Conv2DÆ
)model/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp2model_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block3_conv4/BiasAdd/ReadVariableOp×
model/block3_conv4/BiasAddBiasAdd"model/block3_conv4/Conv2D:output:01model/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block3_conv4/BiasAdd
model/block3_conv4/ReluRelu#model/block3_conv4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block3_conv4/ReluØ
model/block3_pool/MaxPoolMaxPool%model/block3_conv4/Relu:activations:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
model/block3_pool/MaxPoolÐ
(model/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1model_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block4_conv1/Conv2D/ReadVariableOpû
model/block4_conv1/Conv2DConv2D"model/block3_pool/MaxPool:output:00model/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block4_conv1/Conv2DÆ
)model/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2model_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block4_conv1/BiasAdd/ReadVariableOp×
model/block4_conv1/BiasAddBiasAdd"model/block4_conv1/Conv2D:output:01model/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block4_conv1/BiasAdd
model/block4_conv1/ReluRelu#model/block4_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block4_conv1/ReluÐ
(model/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1model_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block4_conv2/Conv2D/ReadVariableOpþ
model/block4_conv2/Conv2DConv2D%model/block4_conv1/Relu:activations:00model/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block4_conv2/Conv2DÆ
)model/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2model_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block4_conv2/BiasAdd/ReadVariableOp×
model/block4_conv2/BiasAddBiasAdd"model/block4_conv2/Conv2D:output:01model/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block4_conv2/BiasAdd
model/block4_conv2/ReluRelu#model/block4_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block4_conv2/ReluÐ
(model/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1model_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block4_conv3/Conv2D/ReadVariableOpþ
model/block4_conv3/Conv2DConv2D%model/block4_conv2/Relu:activations:00model/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block4_conv3/Conv2DÆ
)model/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2model_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block4_conv3/BiasAdd/ReadVariableOp×
model/block4_conv3/BiasAddBiasAdd"model/block4_conv3/Conv2D:output:01model/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block4_conv3/BiasAdd
model/block4_conv3/ReluRelu#model/block4_conv3/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block4_conv3/ReluÐ
(model/block4_conv4/Conv2D/ReadVariableOpReadVariableOp1model_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block4_conv4/Conv2D/ReadVariableOpþ
model/block4_conv4/Conv2DConv2D%model/block4_conv3/Relu:activations:00model/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/block4_conv4/Conv2DÆ
)model/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp2model_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block4_conv4/BiasAdd/ReadVariableOp×
model/block4_conv4/BiasAddBiasAdd"model/block4_conv4/Conv2D:output:01model/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block4_conv4/BiasAdd
model/block4_conv4/ReluRelu#model/block4_conv4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
model/block4_conv4/ReluÖ
model/block4_pool/MaxPoolMaxPool%model/block4_conv4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides
2
model/block4_pool/MaxPoolÐ
(model/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1model_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block5_conv1/Conv2D/ReadVariableOpù
model/block5_conv1/Conv2DConv2D"model/block4_pool/MaxPool:output:00model/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
model/block5_conv1/Conv2DÆ
)model/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2model_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block5_conv1/BiasAdd/ReadVariableOpÕ
model/block5_conv1/BiasAddBiasAdd"model/block5_conv1/Conv2D:output:01model/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
model/block5_conv1/BiasAdd
model/block5_conv1/ReluRelu#model/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
model/block5_conv1/ReluÐ
(model/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1model_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block5_conv2/Conv2D/ReadVariableOpü
model/block5_conv2/Conv2DConv2D%model/block5_conv1/Relu:activations:00model/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
model/block5_conv2/Conv2DÆ
)model/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2model_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block5_conv2/BiasAdd/ReadVariableOpÕ
model/block5_conv2/BiasAddBiasAdd"model/block5_conv2/Conv2D:output:01model/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
model/block5_conv2/BiasAdd
model/block5_conv2/ReluRelu#model/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
model/block5_conv2/ReluÐ
(model/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1model_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block5_conv3/Conv2D/ReadVariableOpü
model/block5_conv3/Conv2DConv2D%model/block5_conv2/Relu:activations:00model/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
model/block5_conv3/Conv2DÆ
)model/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2model_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block5_conv3/BiasAdd/ReadVariableOpÕ
model/block5_conv3/BiasAddBiasAdd"model/block5_conv3/Conv2D:output:01model/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
model/block5_conv3/BiasAdd
model/block5_conv3/ReluRelu#model/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
model/block5_conv3/ReluÐ
(model/block5_conv4/Conv2D/ReadVariableOpReadVariableOp1model_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block5_conv4/Conv2D/ReadVariableOpü
model/block5_conv4/Conv2DConv2D%model/block5_conv3/Relu:activations:00model/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
model/block5_conv4/Conv2DÆ
)model/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp2model_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block5_conv4/BiasAdd/ReadVariableOpÕ
model/block5_conv4/BiasAddBiasAdd"model/block5_conv4/Conv2D:output:01model/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
model/block5_conv4/BiasAdd
model/block5_conv4/ReluRelu#model/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
model/block5_conv4/ReluÖ
model/block5_pool/MaxPoolMaxPool%model/block5_conv4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
2
model/block5_pool/MaxPoolÐ
(model/block6_conv1/Conv2D/ReadVariableOpReadVariableOp1model_block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block6_conv1/Conv2D/ReadVariableOpú
model/block6_conv1/Conv2DConv2D"model/block5_pool/MaxPool:output:00model/block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
model/block6_conv1/Conv2DÆ
)model/block6_conv1/BiasAdd/ReadVariableOpReadVariableOp2model_block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block6_conv1/BiasAdd/ReadVariableOpÕ
model/block6_conv1/BiasAddBiasAdd"model/block6_conv1/Conv2D:output:01model/block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/block6_conv1/BiasAdd
model/block6_conv1/ReluRelu#model/block6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/block6_conv1/Relu
model/dropout/IdentityIdentity%model/block6_conv1/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/dropout/IdentityÐ
(model/block6_conv2/Conv2D/ReadVariableOpReadVariableOp1model_block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02*
(model/block6_conv2/Conv2D/ReadVariableOp÷
model/block6_conv2/Conv2DConv2Dmodel/dropout/Identity:output:00model/block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
model/block6_conv2/Conv2DÆ
)model/block6_conv2/BiasAdd/ReadVariableOpReadVariableOp2model_block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)model/block6_conv2/BiasAdd/ReadVariableOpÕ
model/block6_conv2/BiasAddBiasAdd"model/block6_conv2/Conv2D:output:01model/block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/block6_conv2/BiasAdd
model/block6_conv2/ReluRelu#model/block6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/block6_conv2/Relu¢
model/dropout_1/IdentityIdentity%model/block6_conv2/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/dropout_1/Identityß
-model/col_mask/conv2d_1/Conv2D/ReadVariableOpReadVariableOp6model_col_mask_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-model/col_mask/conv2d_1/Conv2D/ReadVariableOp
model/col_mask/conv2d_1/Conv2DConv2D!model/dropout_1/Identity:output:05model/col_mask/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2 
model/col_mask/conv2d_1/Conv2DÕ
.model/col_mask/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp7model_col_mask_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.model/col_mask/conv2d_1/BiasAdd/ReadVariableOpé
model/col_mask/conv2d_1/BiasAddBiasAdd'model/col_mask/conv2d_1/Conv2D:output:06model/col_mask/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
model/col_mask/conv2d_1/BiasAdd©
model/col_mask/conv2d_1/ReluRelu(model/col_mask/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/col_mask/conv2d_1/Relu¹
!model/col_mask/dropout_2/IdentityIdentity*model/col_mask/conv2d_1/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2#
!model/col_mask/dropout_2/Identityß
-model/col_mask/conv2d_2/Conv2D/ReadVariableOpReadVariableOp6model_col_mask_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-model/col_mask/conv2d_2/Conv2D/ReadVariableOp
model/col_mask/conv2d_2/Conv2DConv2D*model/col_mask/dropout_2/Identity:output:05model/col_mask/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2 
model/col_mask/conv2d_2/Conv2DÕ
.model/col_mask/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp7model_col_mask_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.model/col_mask/conv2d_2/BiasAdd/ReadVariableOpé
model/col_mask/conv2d_2/BiasAddBiasAdd'model/col_mask/conv2d_2/Conv2D:output:06model/col_mask/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
model/col_mask/conv2d_2/BiasAdd©
model/col_mask/conv2d_2/ReluRelu(model/col_mask/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/col_mask/conv2d_2/Relu
$model/col_mask/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2&
$model/col_mask/up_sampling2d_2/Const¡
&model/col_mask/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&model/col_mask/up_sampling2d_2/Const_1Ô
"model/col_mask/up_sampling2d_2/mulMul-model/col_mask/up_sampling2d_2/Const:output:0/model/col_mask/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2$
"model/col_mask/up_sampling2d_2/mul§
4model/col_mask/up_sampling2d_2/resize/ResizeBilinearResizeBilinear*model/col_mask/conv2d_2/Relu:activations:0&model/col_mask/up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(26
4model/col_mask/up_sampling2d_2/resize/ResizeBilinear
&model/col_mask/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&model/col_mask/concatenate/concat/axis²
!model/col_mask/concatenate/concatConcatV2Emodel/col_mask/up_sampling2d_2/resize/ResizeBilinear:resized_images:0"model/block4_pool/MaxPool:output:0/model/col_mask/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2#
!model/col_mask/concatenate/concat
$model/col_mask/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2&
$model/col_mask/up_sampling2d_3/Const¡
&model/col_mask/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&model/col_mask/up_sampling2d_3/Const_1Ô
"model/col_mask/up_sampling2d_3/mulMul-model/col_mask/up_sampling2d_3/Const:output:0/model/col_mask/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2$
"model/col_mask/up_sampling2d_3/mul©
4model/col_mask/up_sampling2d_3/resize/ResizeBilinearResizeBilinear*model/col_mask/concatenate/concat:output:0&model/col_mask/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(26
4model/col_mask/up_sampling2d_3/resize/ResizeBilinear
(model/col_mask/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(model/col_mask/concatenate_1/concat/axisº
#model/col_mask/concatenate_1/concatConcatV2Emodel/col_mask/up_sampling2d_3/resize/ResizeBilinear:resized_images:0"model/block3_pool/MaxPool:output:01model/col_mask/concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2%
#model/col_mask/concatenate_1/concat
"model/col_mask/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2$
"model/col_mask/up_sampling2d/Const
$model/col_mask/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2&
$model/col_mask/up_sampling2d/Const_1Ì
 model/col_mask/up_sampling2d/mulMul+model/col_mask/up_sampling2d/Const:output:0-model/col_mask/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2"
 model/col_mask/up_sampling2d/mulº
9model/col_mask/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor,model/col_mask/concatenate_1/concat:output:0$model/col_mask/up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2;
9model/col_mask/up_sampling2d/resize/ResizeNearestNeighbor
$model/col_mask/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$model/col_mask/up_sampling2d_1/Const¡
&model/col_mask/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&model/col_mask/up_sampling2d_1/Const_1Ô
"model/col_mask/up_sampling2d_1/mulMul-model/col_mask/up_sampling2d_1/Const:output:0/model/col_mask/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2$
"model/col_mask/up_sampling2d_1/mulÞ
;model/col_mask/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborJmodel/col_mask/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0&model/col_mask/up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2=
;model/col_mask/up_sampling2d_1/resize/ResizeNearestNeighborÎ
'model/col_mask/conv2d_transpose_1/ShapeShapeLmodel/col_mask/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2)
'model/col_mask/conv2d_transpose_1/Shape¸
5model/col_mask/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5model/col_mask/conv2d_transpose_1/strided_slice/stack¼
7model/col_mask/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7model/col_mask/conv2d_transpose_1/strided_slice/stack_1¼
7model/col_mask/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model/col_mask/conv2d_transpose_1/strided_slice/stack_2®
/model/col_mask/conv2d_transpose_1/strided_sliceStridedSlice0model/col_mask/conv2d_transpose_1/Shape:output:0>model/col_mask/conv2d_transpose_1/strided_slice/stack:output:0@model/col_mask/conv2d_transpose_1/strided_slice/stack_1:output:0@model/col_mask/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/model/col_mask/conv2d_transpose_1/strided_slice
)model/col_mask/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2+
)model/col_mask/conv2d_transpose_1/stack/1
)model/col_mask/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2+
)model/col_mask/conv2d_transpose_1/stack/2
)model/col_mask/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)model/col_mask/conv2d_transpose_1/stack/3Þ
'model/col_mask/conv2d_transpose_1/stackPack8model/col_mask/conv2d_transpose_1/strided_slice:output:02model/col_mask/conv2d_transpose_1/stack/1:output:02model/col_mask/conv2d_transpose_1/stack/2:output:02model/col_mask/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'model/col_mask/conv2d_transpose_1/stack¼
7model/col_mask/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model/col_mask/conv2d_transpose_1/strided_slice_1/stackÀ
9model/col_mask/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model/col_mask/conv2d_transpose_1/strided_slice_1/stack_1À
9model/col_mask/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model/col_mask/conv2d_transpose_1/strided_slice_1/stack_2¸
1model/col_mask/conv2d_transpose_1/strided_slice_1StridedSlice0model/col_mask/conv2d_transpose_1/stack:output:0@model/col_mask/conv2d_transpose_1/strided_slice_1/stack:output:0Bmodel/col_mask/conv2d_transpose_1/strided_slice_1/stack_1:output:0Bmodel/col_mask/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1model/col_mask/conv2d_transpose_1/strided_slice_1
Amodel/col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpJmodel_col_mask_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype02C
Amodel/col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp®
2model/col_mask/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput0model/col_mask/conv2d_transpose_1/stack:output:0Imodel/col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Lmodel/col_mask/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
24
2model/col_mask/conv2d_transpose_1/conv2d_transposeò
8model/col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpAmodel_col_mask_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8model/col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp
)model/col_mask/conv2d_transpose_1/BiasAddBiasAdd;model/col_mask/conv2d_transpose_1/conv2d_transpose:output:0@model/col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)model/col_mask/conv2d_transpose_1/BiasAddÑ
)model/col_mask/conv2d_transpose_1/SoftmaxSoftmax2model/col_mask/conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)model/col_mask/conv2d_transpose_1/Softmaxß
-model/table_mask/conv2d/Conv2D/ReadVariableOpReadVariableOp6model_table_mask_conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-model/table_mask/conv2d/Conv2D/ReadVariableOp
model/table_mask/conv2d/Conv2DConv2D!model/dropout_1/Identity:output:05model/table_mask/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2 
model/table_mask/conv2d/Conv2DÕ
.model/table_mask/conv2d/BiasAdd/ReadVariableOpReadVariableOp7model_table_mask_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.model/table_mask/conv2d/BiasAdd/ReadVariableOpé
model/table_mask/conv2d/BiasAddBiasAdd'model/table_mask/conv2d/Conv2D:output:06model/table_mask/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
model/table_mask/conv2d/BiasAdd©
model/table_mask/conv2d/ReluRelu(model/table_mask/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
model/table_mask/conv2d/Relu
$model/table_mask/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2&
$model/table_mask/up_sampling2d/Const¡
&model/table_mask/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&model/table_mask/up_sampling2d/Const_1Ô
"model/table_mask/up_sampling2d/mulMul-model/table_mask/up_sampling2d/Const:output:0/model/table_mask/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2$
"model/table_mask/up_sampling2d/mul§
4model/table_mask/up_sampling2d/resize/ResizeBilinearResizeBilinear*model/table_mask/conv2d/Relu:activations:0&model/table_mask/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(26
4model/table_mask/up_sampling2d/resize/ResizeBilinear
*model/table_mask/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*model/table_mask/concatenate_2/concat/axis¾
%model/table_mask/concatenate_2/concatConcatV2Emodel/table_mask/up_sampling2d/resize/ResizeBilinear:resized_images:0"model/block4_pool/MaxPool:output:03model/table_mask/concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2'
%model/table_mask/concatenate_2/concat¡
&model/table_mask/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2(
&model/table_mask/up_sampling2d_1/Const¥
(model/table_mask/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(model/table_mask/up_sampling2d_1/Const_1Ü
$model/table_mask/up_sampling2d_1/mulMul/model/table_mask/up_sampling2d_1/Const:output:01model/table_mask/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2&
$model/table_mask/up_sampling2d_1/mul³
6model/table_mask/up_sampling2d_1/resize/ResizeBilinearResizeBilinear.model/table_mask/concatenate_2/concat:output:0(model/table_mask/up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(28
6model/table_mask/up_sampling2d_1/resize/ResizeBilinear
*model/table_mask/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*model/table_mask/concatenate_3/concat/axisÂ
%model/table_mask/concatenate_3/concatConcatV2Gmodel/table_mask/up_sampling2d_1/resize/ResizeBilinear:resized_images:0"model/block3_pool/MaxPool:output:03model/table_mask/concatenate_3/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2'
%model/table_mask/concatenate_3/concat¡
&model/table_mask/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2(
&model/table_mask/up_sampling2d_2/Const¥
(model/table_mask/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(model/table_mask/up_sampling2d_2/Const_1Ü
$model/table_mask/up_sampling2d_2/mulMul/model/table_mask/up_sampling2d_2/Const:output:01model/table_mask/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2&
$model/table_mask/up_sampling2d_2/mulÈ
=model/table_mask/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor.model/table_mask/concatenate_3/concat:output:0(model/table_mask/up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2?
=model/table_mask/up_sampling2d_2/resize/ResizeNearestNeighbor¡
&model/table_mask/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2(
&model/table_mask/up_sampling2d_3/Const¥
(model/table_mask/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(model/table_mask/up_sampling2d_3/Const_1Ü
$model/table_mask/up_sampling2d_3/mulMul/model/table_mask/up_sampling2d_3/Const:output:01model/table_mask/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2&
$model/table_mask/up_sampling2d_3/mulè
=model/table_mask/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborNmodel/table_mask/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0(model/table_mask/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2?
=model/table_mask/up_sampling2d_3/resize/ResizeNearestNeighborÐ
'model/table_mask/conv2d_transpose/ShapeShapeNmodel/table_mask/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2)
'model/table_mask/conv2d_transpose/Shape¸
5model/table_mask/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5model/table_mask/conv2d_transpose/strided_slice/stack¼
7model/table_mask/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7model/table_mask/conv2d_transpose/strided_slice/stack_1¼
7model/table_mask/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model/table_mask/conv2d_transpose/strided_slice/stack_2®
/model/table_mask/conv2d_transpose/strided_sliceStridedSlice0model/table_mask/conv2d_transpose/Shape:output:0>model/table_mask/conv2d_transpose/strided_slice/stack:output:0@model/table_mask/conv2d_transpose/strided_slice/stack_1:output:0@model/table_mask/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/model/table_mask/conv2d_transpose/strided_slice
)model/table_mask/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2+
)model/table_mask/conv2d_transpose/stack/1
)model/table_mask/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2+
)model/table_mask/conv2d_transpose/stack/2
)model/table_mask/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)model/table_mask/conv2d_transpose/stack/3Þ
'model/table_mask/conv2d_transpose/stackPack8model/table_mask/conv2d_transpose/strided_slice:output:02model/table_mask/conv2d_transpose/stack/1:output:02model/table_mask/conv2d_transpose/stack/2:output:02model/table_mask/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'model/table_mask/conv2d_transpose/stack¼
7model/table_mask/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model/table_mask/conv2d_transpose/strided_slice_1/stackÀ
9model/table_mask/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model/table_mask/conv2d_transpose/strided_slice_1/stack_1À
9model/table_mask/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model/table_mask/conv2d_transpose/strided_slice_1/stack_2¸
1model/table_mask/conv2d_transpose/strided_slice_1StridedSlice0model/table_mask/conv2d_transpose/stack:output:0@model/table_mask/conv2d_transpose/strided_slice_1/stack:output:0Bmodel/table_mask/conv2d_transpose/strided_slice_1/stack_1:output:0Bmodel/table_mask/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1model/table_mask/conv2d_transpose/strided_slice_1
Amodel/table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpJmodel_table_mask_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype02C
Amodel/table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp°
2model/table_mask/conv2d_transpose/conv2d_transposeConv2DBackpropInput0model/table_mask/conv2d_transpose/stack:output:0Imodel/table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0Nmodel/table_mask/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
24
2model/table_mask/conv2d_transpose/conv2d_transposeò
8model/table_mask/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpAmodel_table_mask_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8model/table_mask/conv2d_transpose/BiasAdd/ReadVariableOp
)model/table_mask/conv2d_transpose/BiasAddBiasAdd;model/table_mask/conv2d_transpose/conv2d_transpose:output:0@model/table_mask/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)model/table_mask/conv2d_transpose/BiasAddÑ
)model/table_mask/conv2d_transpose/SoftmaxSoftmax2model/table_mask/conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)model/table_mask/conv2d_transpose/Softmax
IdentityIdentity3model/col_mask/conv2d_transpose_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity3model/table_mask/conv2d_transpose/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp*^model/block1_conv1/BiasAdd/ReadVariableOp)^model/block1_conv1/Conv2D/ReadVariableOp*^model/block1_conv2/BiasAdd/ReadVariableOp)^model/block1_conv2/Conv2D/ReadVariableOp*^model/block2_conv1/BiasAdd/ReadVariableOp)^model/block2_conv1/Conv2D/ReadVariableOp*^model/block2_conv2/BiasAdd/ReadVariableOp)^model/block2_conv2/Conv2D/ReadVariableOp*^model/block3_conv1/BiasAdd/ReadVariableOp)^model/block3_conv1/Conv2D/ReadVariableOp*^model/block3_conv2/BiasAdd/ReadVariableOp)^model/block3_conv2/Conv2D/ReadVariableOp*^model/block3_conv3/BiasAdd/ReadVariableOp)^model/block3_conv3/Conv2D/ReadVariableOp*^model/block3_conv4/BiasAdd/ReadVariableOp)^model/block3_conv4/Conv2D/ReadVariableOp*^model/block4_conv1/BiasAdd/ReadVariableOp)^model/block4_conv1/Conv2D/ReadVariableOp*^model/block4_conv2/BiasAdd/ReadVariableOp)^model/block4_conv2/Conv2D/ReadVariableOp*^model/block4_conv3/BiasAdd/ReadVariableOp)^model/block4_conv3/Conv2D/ReadVariableOp*^model/block4_conv4/BiasAdd/ReadVariableOp)^model/block4_conv4/Conv2D/ReadVariableOp*^model/block5_conv1/BiasAdd/ReadVariableOp)^model/block5_conv1/Conv2D/ReadVariableOp*^model/block5_conv2/BiasAdd/ReadVariableOp)^model/block5_conv2/Conv2D/ReadVariableOp*^model/block5_conv3/BiasAdd/ReadVariableOp)^model/block5_conv3/Conv2D/ReadVariableOp*^model/block5_conv4/BiasAdd/ReadVariableOp)^model/block5_conv4/Conv2D/ReadVariableOp*^model/block6_conv1/BiasAdd/ReadVariableOp)^model/block6_conv1/Conv2D/ReadVariableOp*^model/block6_conv2/BiasAdd/ReadVariableOp)^model/block6_conv2/Conv2D/ReadVariableOp/^model/col_mask/conv2d_1/BiasAdd/ReadVariableOp.^model/col_mask/conv2d_1/Conv2D/ReadVariableOp/^model/col_mask/conv2d_2/BiasAdd/ReadVariableOp.^model/col_mask/conv2d_2/Conv2D/ReadVariableOp9^model/col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOpB^model/col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp/^model/table_mask/conv2d/BiasAdd/ReadVariableOp.^model/table_mask/conv2d/Conv2D/ReadVariableOp9^model/table_mask/conv2d_transpose/BiasAdd/ReadVariableOpB^model/table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)model/block1_conv1/BiasAdd/ReadVariableOp)model/block1_conv1/BiasAdd/ReadVariableOp2T
(model/block1_conv1/Conv2D/ReadVariableOp(model/block1_conv1/Conv2D/ReadVariableOp2V
)model/block1_conv2/BiasAdd/ReadVariableOp)model/block1_conv2/BiasAdd/ReadVariableOp2T
(model/block1_conv2/Conv2D/ReadVariableOp(model/block1_conv2/Conv2D/ReadVariableOp2V
)model/block2_conv1/BiasAdd/ReadVariableOp)model/block2_conv1/BiasAdd/ReadVariableOp2T
(model/block2_conv1/Conv2D/ReadVariableOp(model/block2_conv1/Conv2D/ReadVariableOp2V
)model/block2_conv2/BiasAdd/ReadVariableOp)model/block2_conv2/BiasAdd/ReadVariableOp2T
(model/block2_conv2/Conv2D/ReadVariableOp(model/block2_conv2/Conv2D/ReadVariableOp2V
)model/block3_conv1/BiasAdd/ReadVariableOp)model/block3_conv1/BiasAdd/ReadVariableOp2T
(model/block3_conv1/Conv2D/ReadVariableOp(model/block3_conv1/Conv2D/ReadVariableOp2V
)model/block3_conv2/BiasAdd/ReadVariableOp)model/block3_conv2/BiasAdd/ReadVariableOp2T
(model/block3_conv2/Conv2D/ReadVariableOp(model/block3_conv2/Conv2D/ReadVariableOp2V
)model/block3_conv3/BiasAdd/ReadVariableOp)model/block3_conv3/BiasAdd/ReadVariableOp2T
(model/block3_conv3/Conv2D/ReadVariableOp(model/block3_conv3/Conv2D/ReadVariableOp2V
)model/block3_conv4/BiasAdd/ReadVariableOp)model/block3_conv4/BiasAdd/ReadVariableOp2T
(model/block3_conv4/Conv2D/ReadVariableOp(model/block3_conv4/Conv2D/ReadVariableOp2V
)model/block4_conv1/BiasAdd/ReadVariableOp)model/block4_conv1/BiasAdd/ReadVariableOp2T
(model/block4_conv1/Conv2D/ReadVariableOp(model/block4_conv1/Conv2D/ReadVariableOp2V
)model/block4_conv2/BiasAdd/ReadVariableOp)model/block4_conv2/BiasAdd/ReadVariableOp2T
(model/block4_conv2/Conv2D/ReadVariableOp(model/block4_conv2/Conv2D/ReadVariableOp2V
)model/block4_conv3/BiasAdd/ReadVariableOp)model/block4_conv3/BiasAdd/ReadVariableOp2T
(model/block4_conv3/Conv2D/ReadVariableOp(model/block4_conv3/Conv2D/ReadVariableOp2V
)model/block4_conv4/BiasAdd/ReadVariableOp)model/block4_conv4/BiasAdd/ReadVariableOp2T
(model/block4_conv4/Conv2D/ReadVariableOp(model/block4_conv4/Conv2D/ReadVariableOp2V
)model/block5_conv1/BiasAdd/ReadVariableOp)model/block5_conv1/BiasAdd/ReadVariableOp2T
(model/block5_conv1/Conv2D/ReadVariableOp(model/block5_conv1/Conv2D/ReadVariableOp2V
)model/block5_conv2/BiasAdd/ReadVariableOp)model/block5_conv2/BiasAdd/ReadVariableOp2T
(model/block5_conv2/Conv2D/ReadVariableOp(model/block5_conv2/Conv2D/ReadVariableOp2V
)model/block5_conv3/BiasAdd/ReadVariableOp)model/block5_conv3/BiasAdd/ReadVariableOp2T
(model/block5_conv3/Conv2D/ReadVariableOp(model/block5_conv3/Conv2D/ReadVariableOp2V
)model/block5_conv4/BiasAdd/ReadVariableOp)model/block5_conv4/BiasAdd/ReadVariableOp2T
(model/block5_conv4/Conv2D/ReadVariableOp(model/block5_conv4/Conv2D/ReadVariableOp2V
)model/block6_conv1/BiasAdd/ReadVariableOp)model/block6_conv1/BiasAdd/ReadVariableOp2T
(model/block6_conv1/Conv2D/ReadVariableOp(model/block6_conv1/Conv2D/ReadVariableOp2V
)model/block6_conv2/BiasAdd/ReadVariableOp)model/block6_conv2/BiasAdd/ReadVariableOp2T
(model/block6_conv2/Conv2D/ReadVariableOp(model/block6_conv2/Conv2D/ReadVariableOp2`
.model/col_mask/conv2d_1/BiasAdd/ReadVariableOp.model/col_mask/conv2d_1/BiasAdd/ReadVariableOp2^
-model/col_mask/conv2d_1/Conv2D/ReadVariableOp-model/col_mask/conv2d_1/Conv2D/ReadVariableOp2`
.model/col_mask/conv2d_2/BiasAdd/ReadVariableOp.model/col_mask/conv2d_2/BiasAdd/ReadVariableOp2^
-model/col_mask/conv2d_2/Conv2D/ReadVariableOp-model/col_mask/conv2d_2/Conv2D/ReadVariableOp2t
8model/col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp8model/col_mask/conv2d_transpose_1/BiasAdd/ReadVariableOp2
Amodel/col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOpAmodel/col_mask/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2`
.model/table_mask/conv2d/BiasAdd/ReadVariableOp.model/table_mask/conv2d/BiasAdd/ReadVariableOp2^
-model/table_mask/conv2d/Conv2D/ReadVariableOp-model/table_mask/conv2d/Conv2D/ReadVariableOp2t
8model/table_mask/conv2d_transpose/BiasAdd/ReadVariableOp8model/table_mask/conv2d_transpose/BiasAdd/ReadVariableOp2
Amodel/table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOpAmodel/table_mask/conv2d_transpose/conv2d_transpose/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1


F__inference_block4_conv1_layer_call_and_return_conditional_losses_3513

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
£
+__inference_block5_conv4_layer_call_fn_6304

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_36332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
°
£
+__inference_block3_conv4_layer_call_fn_6144

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_34952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


F__inference_block4_conv1_layer_call_and_return_conditional_losses_6175

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
w
í
B__inference_col_mask_layer_call_and_return_conditional_losses_6716	
input	
pool3	
pool4C
'conv2d_1_conv2d_readvariableop_resource:7
(conv2d_1_biasadd_readvariableop_resource:	C
'conv2d_2_conv2d_readvariableop_resource:7
(conv2d_2_biasadd_readvariableop_resource:	V
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@
2conv2d_transpose_1_biasadd_readvariableop_resource:
identity¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢)conv2d_transpose_1/BiasAdd/ReadVariableOp¢2conv2d_transpose_1/conv2d_transpose/ReadVariableOp²
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp¿
conv2d_1/Conv2DConv2Dinput&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d_1/Conv2D¨
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp­
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_1/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const¯
dropout_2/dropout/MulMulconv2d_1/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_2/dropout/Mul}
dropout_2/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/ShapeÛ
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2"
 dropout_2/dropout/GreaterEqual/yï
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2 
dropout_2/dropout/GreaterEqual¦
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_2/dropout/Cast«
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_2/dropout/Mul_1²
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpÕ
conv2d_2/Conv2DConv2Ddropout_2/dropout/Mul_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d_2/Conv2D¨
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp­
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/Relu
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_2/Const
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mulë
%up_sampling2d_2/resize/ResizeBilinearResizeBilinearconv2d_2/Relu:activations:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2'
%up_sampling2d_2/resize/ResizeBilineart
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisÙ
concatenate/concatConcatV26up_sampling2d_2/resize/ResizeBilinear:resized_images:0pool4 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
concatenate/concat
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_3/Const
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mulí
%up_sampling2d_3/resize/ResizeBilinearResizeBilinearconcatenate/concat:output:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2'
%up_sampling2d_3/resize/ResizeBilinearx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisá
concatenate_1/concatConcatV26up_sampling2d_3/resize/ResizeBilinear:resized_images:0pool3"concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
concatenate_1/concat{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulþ
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul¢
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor¡
conv2d_transpose_1/ShapeShape=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2Ô
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slice{
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_1/stack/1{
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_1/stack/2z
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/3
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack¢
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1¢
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2Þ
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1í
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpã
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transposeÅ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOpà
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose_1/BiasAdd¤
conv2d_transpose_1/SoftmaxSoftmax#conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose_1/Softmaxê
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulê
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity$conv2d_transpose_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¯
NoOpNoOp;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4


F__inference_block3_conv1_layer_call_and_return_conditional_losses_3444

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
w
í
B__inference_col_mask_layer_call_and_return_conditional_losses_4105	
input	
pool3	
pool4C
'conv2d_1_conv2d_readvariableop_resource:7
(conv2d_1_biasadd_readvariableop_resource:	C
'conv2d_2_conv2d_readvariableop_resource:7
(conv2d_2_biasadd_readvariableop_resource:	V
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@
2conv2d_transpose_1_biasadd_readvariableop_resource:
identity¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢)conv2d_transpose_1/BiasAdd/ReadVariableOp¢2conv2d_transpose_1/conv2d_transpose/ReadVariableOp²
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp¿
conv2d_1/Conv2DConv2Dinput&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d_1/Conv2D¨
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp­
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_1/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const¯
dropout_2/dropout/MulMulconv2d_1/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_2/dropout/Mul}
dropout_2/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/ShapeÛ
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2"
 dropout_2/dropout/GreaterEqual/yï
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2 
dropout_2/dropout/GreaterEqual¦
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_2/dropout/Cast«
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout_2/dropout/Mul_1²
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpÕ
conv2d_2/Conv2DConv2Ddropout_2/dropout/Mul_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d_2/Conv2D¨
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp­
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/Relu
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_2/Const
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mulë
%up_sampling2d_2/resize/ResizeBilinearResizeBilinearconv2d_2/Relu:activations:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2'
%up_sampling2d_2/resize/ResizeBilineart
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisÙ
concatenate/concatConcatV26up_sampling2d_2/resize/ResizeBilinear:resized_images:0pool4 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
concatenate/concat
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_3/Const
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mulí
%up_sampling2d_3/resize/ResizeBilinearResizeBilinearconcatenate/concat:output:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2'
%up_sampling2d_3/resize/ResizeBilinearx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisá
concatenate_1/concatConcatV26up_sampling2d_3/resize/ResizeBilinear:resized_images:0pool3"concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
concatenate_1/concat{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulþ
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul¢
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor¡
conv2d_transpose_1/ShapeShape=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2Ô
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slice{
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_1/stack/1{
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_1/stack/2z
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/3
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack¢
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1¢
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2Þ
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1í
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpã
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transposeÅ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOpà
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose_1/BiasAdd¤
conv2d_transpose_1/SoftmaxSoftmax#conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose_1/Softmaxê
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulê
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity$conv2d_transpose_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¯
NoOpNoOp;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4
Î
F
*__inference_block2_pool_layer_call_fn_3154

inputs
identityé
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_31482
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
£
+__inference_block3_conv3_layer_call_fn_6124

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_34782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÀU
á
D__inference_table_mask_layer_call_and_return_conditional_losses_6513	
input	
pool3	
pool4A
%conv2d_conv2d_readvariableop_resource:5
&conv2d_biasadd_readvariableop_resource:	T
9conv2d_transpose_conv2d_transpose_readvariableop_resource:>
0conv2d_transpose_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢'conv2d_transpose/BiasAdd/ReadVariableOp¢0conv2d_transpose/conv2d_transpose/ReadVariableOp¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp¬
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp¹
conv2d/Conv2DConv2Dinput$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
conv2d/Conv2D¢
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
conv2d/BiasAdd/ReadVariableOp¥
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d/BiasAddv
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d/Relu{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulã
#up_sampling2d/resize/ResizeBilinearResizeBilinearconv2d/Relu:activations:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2%
#up_sampling2d/resize/ResizeBilineart
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis×
concatenate/concatConcatV24up_sampling2d/resize/ResizeBilinear:resized_images:0pool4 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
concatenate/concat
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_1/Const
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mulí
%up_sampling2d_1/resize/ResizeBilinearResizeBilinearconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2'
%up_sampling2d_1/resize/ResizeBilinearx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisá
concatenate_1/concatConcatV26up_sampling2d_1/resize/ResizeBilinear:resized_images:0pool3"concatenate_1/concat/axis:output:0*
N*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
concatenate_1/concat
up_sampling2d/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_2
up_sampling2d/Const_3Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_3
up_sampling2d/mul_1Mulup_sampling2d/Const_2:output:0up_sampling2d/Const_3:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul_1
,up_sampling2d/resize_1/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d/mul_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2.
,up_sampling2d/resize_1/ResizeNearestNeighbor
up_sampling2d_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_2
up_sampling2d_1/Const_3Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_3
up_sampling2d_1/mul_1Mul up_sampling2d_1/Const_2:output:0 up_sampling2d_1/Const_3:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul_1ª
.up_sampling2d_1/resize_1/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d/resize_1/ResizeNearestNeighbor:resized_images:0up_sampling2d_1/mul_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(20
.up_sampling2d_1/resize_1/ResizeNearestNeighbor
conv2d_transpose/ShapeShape?up_sampling2d_1/resize_1/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose/Shape
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stack
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2È
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
conv2d_transpose/strided_slicew
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose/stack/1w
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose/stack/2v
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/3ø
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stack
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stack
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2Ò
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1ç
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOpÝ
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0?up_sampling2d_1/resize_1/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transpose¿
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOpØ
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose/BiasAdd
conv2d_transpose/SoftmaxSoftmax!conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_transpose/Softmaxè
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/mul
IdentityIdentity"conv2d_transpose/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity§
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4
ç
º
F__inference_block6_conv2_layer_call_and_return_conditional_losses_3687

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Relu×
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/mulv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity·
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ö
J
.__inference_up_sampling2d_2_layer_call_fn_3292

inputs
identityí
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_32862
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

F__inference_block5_conv2_layer_call_and_return_conditional_losses_3599

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
©
 
+__inference_block1_conv2_layer_call_fn_6024

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_33912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

_
A__inference_dropout_layer_call_and_return_conditional_losses_6362

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
°
£
+__inference_block4_conv2_layer_call_fn_6184

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_35302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
_
&__inference_dropout_layer_call_fn_6357

inputs
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_41732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs


F__inference_block3_conv1_layer_call_and_return_conditional_losses_6095

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
£
+__inference_block5_conv3_layer_call_fn_6284

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_36162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
½_
î
__inference__traced_save_6951
file_prefix2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block3_conv4_kernel_read_readvariableop0
,savev2_block3_conv4_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block4_conv4_kernel_read_readvariableop0
,savev2_block4_conv4_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop2
.savev2_block5_conv4_kernel_read_readvariableop0
,savev2_block5_conv4_bias_read_readvariableop2
.savev2_block6_conv1_kernel_read_readvariableop0
,savev2_block6_conv1_bias_read_readvariableop2
.savev2_block6_conv2_kernel_read_readvariableop0
,savev2_block6_conv2_bias_read_readvariableop7
3savev2_table_mask_conv2d_kernel_read_readvariableop5
1savev2_table_mask_conv2d_bias_read_readvariableopA
=savev2_table_mask_conv2d_transpose_kernel_read_readvariableop?
;savev2_table_mask_conv2d_transpose_bias_read_readvariableop7
3savev2_col_mask_conv2d_1_kernel_read_readvariableop5
1savev2_col_mask_conv2d_1_bias_read_readvariableop7
3savev2_col_mask_conv2d_2_kernel_read_readvariableop5
1savev2_col_mask_conv2d_2_bias_read_readvariableopA
=savev2_col_mask_conv2d_transpose_1_kernel_read_readvariableop?
;savev2_col_mask_conv2d_transpose_1_bias_read_readvariableop
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
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*
valueB/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesæ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices´
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block3_conv4_kernel_read_readvariableop,savev2_block3_conv4_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block4_conv4_kernel_read_readvariableop,savev2_block4_conv4_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop.savev2_block5_conv4_kernel_read_readvariableop,savev2_block5_conv4_bias_read_readvariableop.savev2_block6_conv1_kernel_read_readvariableop,savev2_block6_conv1_bias_read_readvariableop.savev2_block6_conv2_kernel_read_readvariableop,savev2_block6_conv2_bias_read_readvariableop3savev2_table_mask_conv2d_kernel_read_readvariableop1savev2_table_mask_conv2d_bias_read_readvariableop=savev2_table_mask_conv2d_transpose_kernel_read_readvariableop;savev2_table_mask_conv2d_transpose_bias_read_readvariableop3savev2_col_mask_conv2d_1_kernel_read_readvariableop1savev2_col_mask_conv2d_1_bias_read_readvariableop3savev2_col_mask_conv2d_2_kernel_read_readvariableop1savev2_col_mask_conv2d_2_bias_read_readvariableop=savev2_col_mask_conv2d_transpose_1_kernel_read_readvariableop;savev2_col_mask_conv2d_transpose_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/2
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*û
_input_shapesé
æ: :@:@:@@:@:@:::::::::::::::::::::::::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.	*
(
_output_shapes
::!


_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::! 

_output_shapes	
::.!*
(
_output_shapes
::!"

_output_shapes	
::.#*
(
_output_shapes
::!$

_output_shapes	
::.%*
(
_output_shapes
::!&

_output_shapes	
::-')
'
_output_shapes
:: (

_output_shapes
::.)*
(
_output_shapes
::!*

_output_shapes	
::.+*
(
_output_shapes
::!,

_output_shapes	
::--)
'
_output_shapes
:: .

_output_shapes
::/

_output_shapes
: 
ø
§
1__inference_conv2d_transpose_1_layer_call_fn_3356

inputs"
unknown:
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_33462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

õ
)__inference_table_mask_layer_call_fn_6454	
input	
pool3	
pool4#
unknown:
	unknown_0:	$
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputpool3pool4unknown	unknown_0	unknown_1	unknown_2*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_table_mask_layer_call_and_return_conditional_losses_38462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:ÿÿÿÿÿÿÿÿÿ  :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameinput:YU
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepool3:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namepool4
ä
Û
$__inference_model_layer_call_fn_3985
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	&

unknown_25:

unknown_26:	&

unknown_27:

unknown_28:	&

unknown_29:

unknown_30:	&

unknown_31:

unknown_32:	&

unknown_33:

unknown_34:	&

unknown_35:

unknown_36:	&

unknown_37:

unknown_38:	%

unknown_39:

unknown_40:&

unknown_41:

unknown_42:	%

unknown_43:

unknown_44:
identity

identity_1¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_38882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Î
F
*__inference_block1_pool_layer_call_fn_3142

inputs
identityé
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_31362
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
`
A__inference_dropout_layer_call_and_return_conditional_losses_6374

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape½
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2
dropout/GreaterEqual/yÇ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
&

J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_3263

inputsC
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3´
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdd{
SoftmaxSoftmaxBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


F__inference_block4_conv2_layer_call_and_return_conditional_losses_3530

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

F__inference_block5_conv4_layer_call_and_return_conditional_losses_3633

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


F__inference_block3_conv2_layer_call_and_return_conditional_losses_3461

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÛÅ
¸
?__inference_model_layer_call_and_return_conditional_losses_4951
input_1+
block1_conv1_4800:@
block1_conv1_4802:@+
block1_conv2_4805:@@
block1_conv2_4807:@,
block2_conv1_4811:@ 
block2_conv1_4813:	-
block2_conv2_4816: 
block2_conv2_4818:	-
block3_conv1_4822: 
block3_conv1_4824:	-
block3_conv2_4827: 
block3_conv2_4829:	-
block3_conv3_4832: 
block3_conv3_4834:	-
block3_conv4_4837: 
block3_conv4_4839:	-
block4_conv1_4843: 
block4_conv1_4845:	-
block4_conv2_4848: 
block4_conv2_4850:	-
block4_conv3_4853: 
block4_conv3_4855:	-
block4_conv4_4858: 
block4_conv4_4860:	-
block5_conv1_4864: 
block5_conv1_4866:	-
block5_conv2_4869: 
block5_conv2_4871:	-
block5_conv3_4874: 
block5_conv3_4876:	-
block5_conv4_4879: 
block5_conv4_4881:	-
block6_conv1_4885: 
block6_conv1_4887:	-
block6_conv2_4891: 
block6_conv2_4893:	)
col_mask_4897:
col_mask_4899:	)
col_mask_4901:
col_mask_4903:	(
col_mask_4905:
col_mask_4907:+
table_mask_4910:
table_mask_4912:	*
table_mask_4914:
table_mask_4916:
identity

identity_1¢$block1_conv1/StatefulPartitionedCall¢$block1_conv2/StatefulPartitionedCall¢$block2_conv1/StatefulPartitionedCall¢$block2_conv2/StatefulPartitionedCall¢$block3_conv1/StatefulPartitionedCall¢$block3_conv2/StatefulPartitionedCall¢$block3_conv3/StatefulPartitionedCall¢$block3_conv4/StatefulPartitionedCall¢$block4_conv1/StatefulPartitionedCall¢$block4_conv2/StatefulPartitionedCall¢$block4_conv3/StatefulPartitionedCall¢$block4_conv4/StatefulPartitionedCall¢$block5_conv1/StatefulPartitionedCall¢$block5_conv2/StatefulPartitionedCall¢$block5_conv3/StatefulPartitionedCall¢$block5_conv4/StatefulPartitionedCall¢$block6_conv1/StatefulPartitionedCall¢5block6_conv1/kernel/Regularizer/Square/ReadVariableOp¢$block6_conv2/StatefulPartitionedCall¢5block6_conv2/kernel/Regularizer/Square/ReadVariableOp¢ col_mask/StatefulPartitionedCall¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp¢:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp¢"table_mask/StatefulPartitionedCall¢:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp°
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_4800block1_conv1_4802*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_33742&
$block1_conv1/StatefulPartitionedCallÖ
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4805block1_conv2_4807*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_33912&
$block1_conv2/StatefulPartitionedCall
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_31362
block1_pool/PartitionedCallÎ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4811block2_conv1_4813*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_34092&
$block2_conv1/StatefulPartitionedCall×
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4816block2_conv2_4818*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_34262&
$block2_conv2/StatefulPartitionedCall
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_31482
block2_pool/PartitionedCallÎ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4822block3_conv1_4824*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_34442&
$block3_conv1/StatefulPartitionedCall×
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4827block3_conv2_4829*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_34612&
$block3_conv2/StatefulPartitionedCall×
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4832block3_conv3_4834*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_34782&
$block3_conv3/StatefulPartitionedCall×
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_4837block3_conv4_4839*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block3_conv4_layer_call_and_return_conditional_losses_34952&
$block3_conv4/StatefulPartitionedCall
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_31602
block3_pool/PartitionedCallÎ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4843block4_conv1_4845*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_35132&
$block4_conv1/StatefulPartitionedCall×
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4848block4_conv2_4850*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_35302&
$block4_conv2/StatefulPartitionedCall×
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4853block4_conv3_4855*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_35472&
$block4_conv3/StatefulPartitionedCall×
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_4858block4_conv4_4860*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block4_conv4_layer_call_and_return_conditional_losses_35642&
$block4_conv4/StatefulPartitionedCall
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_31722
block4_pool/PartitionedCallÌ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4864block5_conv1_4866*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_35822&
$block5_conv1/StatefulPartitionedCallÕ
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4869block5_conv2_4871*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_35992&
$block5_conv2/StatefulPartitionedCallÕ
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4874block5_conv3_4876*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_36162&
$block5_conv3/StatefulPartitionedCallÕ
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_4879block5_conv4_4881*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block5_conv4_layer_call_and_return_conditional_losses_36332&
$block5_conv4/StatefulPartitionedCall
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_31842
block5_pool/PartitionedCallÌ
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall$block5_pool/PartitionedCall:output:0block6_conv1_4885block6_conv1_4887*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv1_layer_call_and_return_conditional_losses_36572&
$block6_conv1/StatefulPartitionedCall
dropout/PartitionedCallPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_36682
dropout/PartitionedCallÈ
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0block6_conv2_4891block6_conv2_4893*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block6_conv2_layer_call_and_return_conditional_losses_36872&
$block6_conv2/StatefulPartitionedCall
dropout_1/PartitionedCallPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_36982
dropout_1/PartitionedCallÉ
 col_mask/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0$block3_pool/PartitionedCall:output:0$block4_pool/PartitionedCall:output:0col_mask_4897col_mask_4899col_mask_4901col_mask_4903col_mask_4905col_mask_4907*
Tin
2	*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_col_mask_layer_call_and_return_conditional_losses_37732"
 col_mask/StatefulPartitionedCallµ
"table_mask/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0$block3_pool/PartitionedCall:output:0$block4_pool/PartitionedCall:output:0table_mask_4910table_mask_4912table_mask_4914table_mask_4916*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_table_mask_layer_call_and_return_conditional_losses_38462$
"table_mask/StatefulPartitionedCallÊ
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock6_conv1_4885*(
_output_shapes
:*
dtype027
5block6_conv1/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv1/kernel/Regularizer/SquareSquare=block6_conv1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv1/kernel/Regularizer/Square§
%block6_conv1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv1/kernel/Regularizer/ConstÎ
#block6_conv1/kernel/Regularizer/SumSum*block6_conv1/kernel/Regularizer/Square:y:0.block6_conv1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/Sum
%block6_conv1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv1/kernel/Regularizer/mul/xÐ
#block6_conv1/kernel/Regularizer/mulMul.block6_conv1/kernel/Regularizer/mul/x:output:0,block6_conv1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv1/kernel/Regularizer/mulÊ
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock6_conv2_4891*(
_output_shapes
:*
dtype027
5block6_conv2/kernel/Regularizer/Square/ReadVariableOpÌ
&block6_conv2/kernel/Regularizer/SquareSquare=block6_conv2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2(
&block6_conv2/kernel/Regularizer/Square§
%block6_conv2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%block6_conv2/kernel/Regularizer/ConstÎ
#block6_conv2/kernel/Regularizer/SumSum*block6_conv2/kernel/Regularizer/Square:y:0.block6_conv2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/Sum
%block6_conv2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%block6_conv2/kernel/Regularizer/mul/xÐ
#block6_conv2/kernel/Regularizer/mulMul.block6_conv2/kernel/Regularizer/mul/x:output:0,block6_conv2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#block6_conv2/kernel/Regularizer/mulÒ
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOptable_mask_4910*(
_output_shapes
:*
dtype02<
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOpÛ
+table_mask/conv2d/kernel/Regularizer/SquareSquareBtable_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+table_mask/conv2d/kernel/Regularizer/Square±
*table_mask/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*table_mask/conv2d/kernel/Regularizer/Constâ
(table_mask/conv2d/kernel/Regularizer/SumSum/table_mask/conv2d/kernel/Regularizer/Square:y:03table_mask/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/Sum
*table_mask/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*table_mask/conv2d/kernel/Regularizer/mul/xä
(table_mask/conv2d/kernel/Regularizer/mulMul3table_mask/conv2d/kernel/Regularizer/mul/x:output:01table_mask/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(table_mask/conv2d/kernel/Regularizer/mulÐ
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcol_mask_4897*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulÐ
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcol_mask_4901*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_2/kernel/Regularizer/SquareSquareBcol_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_2/kernel/Regularizer/Square±
*col_mask/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_2/kernel/Regularizer/Constâ
(col_mask/conv2d_2/kernel/Regularizer/SumSum/col_mask/conv2d_2/kernel/Regularizer/Square:y:03col_mask/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/Sum
*col_mask/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_2/kernel/Regularizer/mul/xä
(col_mask/conv2d_2/kernel/Regularizer/mulMul3col_mask/conv2d_2/kernel/Regularizer/mul/x:output:01col_mask/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_2/kernel/Regularizer/mul
IdentityIdentity+table_mask/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity)col_mask/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1û
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall6^block6_conv1/kernel/Regularizer/Square/ReadVariableOp%^block6_conv2/StatefulPartitionedCall6^block6_conv2/kernel/Regularizer/Square/ReadVariableOp!^col_mask/StatefulPartitionedCall;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp;^col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp#^table_mask/StatefulPartitionedCall;^table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2n
5block6_conv1/kernel/Regularizer/Square/ReadVariableOp5block6_conv1/kernel/Regularizer/Square/ReadVariableOp2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2n
5block6_conv2/kernel/Regularizer/Square/ReadVariableOp5block6_conv2/kernel/Regularizer/Square/ReadVariableOp2D
 col_mask/StatefulPartitionedCall col_mask/StatefulPartitionedCall2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2x
:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2H
"table_mask/StatefulPartitionedCall"table_mask/StatefulPartitionedCall2x
:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:table_mask/conv2d/kernel/Regularizer/Square/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1


F__inference_block4_conv4_layer_call_and_return_conditional_losses_3564

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

a
C__inference_dropout_1_layer_call_and_return_conditional_losses_3698

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

c
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_3203

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Î
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulÀ
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2
resize/ResizeBilinear
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


F__inference_block2_conv1_layer_call_and_return_conditional_losses_6055

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¥
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_3160

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
¥
/__inference_conv2d_transpose_layer_call_fn_3273

inputs"
unknown:
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_32632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Ë
__inference_loss_fn_3_6778_
Ccol_mask_conv2d_1_kernel_regularizer_square_readvariableop_resource:
identity¢:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCcol_mask_conv2d_1_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:*
dtype02<
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOpÛ
+col_mask/conv2d_1/kernel/Regularizer/SquareSquareBcol_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2-
+col_mask/conv2d_1/kernel/Regularizer/Square±
*col_mask/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*col_mask/conv2d_1/kernel/Regularizer/Constâ
(col_mask/conv2d_1/kernel/Regularizer/SumSum/col_mask/conv2d_1/kernel/Regularizer/Square:y:03col_mask/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/Sum
*col_mask/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2,
*col_mask/conv2d_1/kernel/Regularizer/mul/xä
(col_mask/conv2d_1/kernel/Regularizer/mulMul3col_mask/conv2d_1/kernel/Regularizer/mul/x:output:01col_mask/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(col_mask/conv2d_1/kernel/Regularizer/mulv
IdentityIdentity,col_mask/conv2d_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp;^col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:col_mask/conv2d_1/kernel/Regularizer/Square/ReadVariableOp


F__inference_block3_conv3_layer_call_and_return_conditional_losses_3478

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2
Relux
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultõ
E
input_1:
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿF
col_mask:
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿH

table_mask:
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:º¾
©
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer_with_weights-12
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
layer_with_weights-15
layer-20
layer-21
layer_with_weights-16
layer-22
layer-23
layer_with_weights-17
layer-24
layer-25
layer_with_weights-18
layer-26
layer_with_weights-19
layer-27
	optimizer
loss
	variables
 trainable_variables
!regularization_losses
"	keras_api
#
signatures
®__call__
+¯&call_and_return_all_conditional_losses
°_default_save_signature"À
_tf_keras_network£{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1024, 1024, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block6_conv1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004000000189989805}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block6_conv1", "inbound_nodes": [[["block5_pool", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["block6_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block6_conv2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004000000189989805}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block6_conv2", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["block6_conv2", 0, 0, {}]]]}, {"class_name": "table_mask", "config": {"name": "table_mask", "trainable": true, "dtype": "float32"}, "name": "table_mask", "inbound_nodes": [[["dropout_1", 0, 0, {"pool3": ["block3_pool", 0, 0], "pool4": ["block4_pool", 0, 0]}]]]}, {"class_name": "col_mask", "config": {"name": "col_mask", "trainable": true, "dtype": "float32"}, "name": "col_mask", "inbound_nodes": [[["dropout_1", 0, 0, {"pool3": ["block3_pool", 0, 0], "pool4": ["block4_pool", 0, 0]}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["table_mask", 0, 0], ["col_mask", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1024, 1024, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024, 1024, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1024, 1024, 3]}, "float32", "input_1"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1024, 1024, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block6_conv1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004000000189989805}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block6_conv1", "inbound_nodes": [[["block5_pool", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["block6_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block6_conv2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004000000189989805}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block6_conv2", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["block6_conv2", 0, 0, {}]]]}, {"class_name": "table_mask", "config": {"name": "table_mask", "trainable": true, "dtype": "float32"}, "name": "table_mask", "inbound_nodes": [[["dropout_1", 0, 0, {"pool3": ["block3_pool", 0, 0], "pool4": ["block4_pool", 0, 0]}]]]}, {"class_name": "col_mask", "config": {"name": "col_mask", "trainable": true, "dtype": "float32"}, "name": "col_mask", "inbound_nodes": [[["dropout_1", 0, 0, {"pool3": ["block3_pool", 0, 0], "pool4": ["block4_pool", 0, 0]}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["table_mask", 0, 0], ["col_mask", 0, 0]]}}, "training_config": {"loss": {"table_mask": "sparse_categorical_crossentropy", "col_mask": "sparse_categorical_crossentropy"}, "metrics": [{"class_name": "F1_Score", "config": {"name": "f1_score", "dtype": "float32"}}], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-08, "amsgrad": false}}}}
"þ
_tf_keras_input_layerÞ{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1024, 1024, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1024, 1024, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}



$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
±__call__
+²&call_and_return_all_conditional_losses"Ù
_tf_keras_layer¿{"name": "block1_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024, 1024, 3]}}



*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
³__call__
+´&call_and_return_all_conditional_losses"Û
_tf_keras_layerÁ{"name": "block1_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024, 1024, 64]}}
û
0	variables
1trainable_variables
2regularization_losses
3	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses"ê
_tf_keras_layerÐ{"name": "block1_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}



4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
·__call__
+¸&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"name": "block2_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 64]}}



:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
¹__call__
+º&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block2_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 128]}}
û
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"ê
_tf_keras_layerÐ{"name": "block2_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}



Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
½__call__
+¾&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block3_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 128]}}



Jkernel
Kbias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block3_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 256]}}



Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block3_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 256]}}



Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block3_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 256]}}
û
\	variables
]trainable_variables
^regularization_losses
_	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses"ê
_tf_keras_layerÐ{"name": "block3_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}



`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block4_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 256]}}



fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block4_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 512]}}



lkernel
mbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block4_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 512]}}



rkernel
sbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"name": "block4_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 512]}}
û
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"ê
_tf_keras_layerÐ{"name": "block4_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}



|kernel
}bias
~	variables
trainable_variables
regularization_losses
	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"name": "block5_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 512]}}


kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"name": "block5_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 512]}}


kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"name": "block5_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 512]}}


kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"name": "block5_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 512]}}
ÿ
	variables
trainable_variables
regularization_losses
	keras_api
Ù__call__
+Ú&call_and_return_all_conditional_losses"ê
_tf_keras_layerÐ{"name": "block5_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¾

kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
Û__call__
+Ü&call_and_return_all_conditional_losses"	
_tf_keras_layer÷{"name": "block6_conv1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block6_conv1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004000000189989805}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 512]}}
ç
	variables
trainable_variables
 regularization_losses
¡	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}}
¾

¢kernel
	£bias
¤	variables
¥trainable_variables
¦regularization_losses
§	keras_api
ß__call__
+à&call_and_return_all_conditional_losses"	
_tf_keras_layer÷{"name": "block6_conv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block6_conv2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004000000189989805}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
ë
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
á__call__
+â&call_and_return_all_conditional_losses"Ö
_tf_keras_layer¼{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}}

¬conv_7
­upsample_pool4
®upsample_pool3
¯upsample_final
°	variables
±trainable_variables
²regularization_losses
³	keras_api
ã__call__
+ä&call_and_return_all_conditional_losses"¬
_tf_keras_layer{"name": "table_mask", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "table_mask", "config": {"name": "table_mask", "trainable": true, "dtype": "float32"}}

´conv_7
	µdrop
¶conv_8
·upsample_pool4
¸upsample_pool3
¹upsample_final
º	variables
»trainable_variables
¼regularization_losses
½	keras_api
å__call__
+æ&call_and_return_all_conditional_losses"¦
_tf_keras_layer{"name": "col_mask", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "col_mask", "config": {"name": "col_mask", "trainable": true, "dtype": "float32"}}
"
	optimizer
 "
trackable_dict_wrapper

$0
%1
*2
+3
44
55
:6
;7
D8
E9
J10
K11
P12
Q13
V14
W15
`16
a17
f18
g19
l20
m21
r22
s23
|24
}25
26
27
28
29
30
31
32
33
¢34
£35
¾36
¿37
À38
Á39
Â40
Ã41
Ä42
Å43
Æ44
Ç45"
trackable_list_wrapper

0
1
¢2
£3
¾4
¿5
À6
Á7
Â8
Ã9
Ä10
Å11
Æ12
Ç13"
trackable_list_wrapper
0
ç0
è1"
trackable_list_wrapper
Ó
Èlayers
	variables
 trainable_variables
!regularization_losses
Émetrics
Ênon_trainable_variables
Ëlayer_metrics
 Ìlayer_regularization_losses
®__call__
°_default_save_signature
+¯&call_and_return_all_conditional_losses
'¯"call_and_return_conditional_losses"
_generic_user_object
-
éserving_default"
signature_map
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ílayers
&	variables
'trainable_variables
(regularization_losses
Îmetrics
Ïnon_trainable_variables
Ðlayer_metrics
 Ñlayer_regularization_losses
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Òlayers
,	variables
-trainable_variables
.regularization_losses
Ómetrics
Ônon_trainable_variables
Õlayer_metrics
 Ölayer_regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
×layers
0	variables
1trainable_variables
2regularization_losses
Ømetrics
Ùnon_trainable_variables
Úlayer_metrics
 Ûlayer_regularization_losses
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
.:,@2block2_conv1/kernel
 :2block2_conv1/bias
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ülayers
6	variables
7trainable_variables
8regularization_losses
Ýmetrics
Þnon_trainable_variables
ßlayer_metrics
 àlayer_regularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
/:-2block2_conv2/kernel
 :2block2_conv2/bias
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
álayers
<	variables
=trainable_variables
>regularization_losses
âmetrics
ãnon_trainable_variables
älayer_metrics
 ålayer_regularization_losses
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ælayers
@	variables
Atrainable_variables
Bregularization_losses
çmetrics
ènon_trainable_variables
élayer_metrics
 êlayer_regularization_losses
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
/:-2block3_conv1/kernel
 :2block3_conv1/bias
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ëlayers
F	variables
Gtrainable_variables
Hregularization_losses
ìmetrics
ínon_trainable_variables
îlayer_metrics
 ïlayer_regularization_losses
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
/:-2block3_conv2/kernel
 :2block3_conv2/bias
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ðlayers
L	variables
Mtrainable_variables
Nregularization_losses
ñmetrics
ònon_trainable_variables
ólayer_metrics
 ôlayer_regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
/:-2block3_conv3/kernel
 :2block3_conv3/bias
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
õlayers
R	variables
Strainable_variables
Tregularization_losses
ömetrics
÷non_trainable_variables
ølayer_metrics
 ùlayer_regularization_losses
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
/:-2block3_conv4/kernel
 :2block3_conv4/bias
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
úlayers
X	variables
Ytrainable_variables
Zregularization_losses
ûmetrics
ünon_trainable_variables
ýlayer_metrics
 þlayer_regularization_losses
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ÿlayers
\	variables
]trainable_variables
^regularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
/:-2block4_conv1/kernel
 :2block4_conv1/bias
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layers
b	variables
ctrainable_variables
dregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
/:-2block4_conv2/kernel
 :2block4_conv2/bias
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layers
h	variables
itrainable_variables
jregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
/:-2block4_conv3/kernel
 :2block4_conv3/bias
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layers
n	variables
otrainable_variables
pregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
/:-2block4_conv4/kernel
 :2block4_conv4/bias
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layers
t	variables
utrainable_variables
vregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layers
x	variables
ytrainable_variables
zregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
/:-2block5_conv1/kernel
 :2block5_conv1/bias
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¶
layers
~	variables
trainable_variables
regularization_losses
metrics
non_trainable_variables
 layer_metrics
 ¡layer_regularization_losses
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
/:-2block5_conv2/kernel
 :2block5_conv2/bias
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¢layers
	variables
trainable_variables
regularization_losses
£metrics
¤non_trainable_variables
¥layer_metrics
 ¦layer_regularization_losses
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
/:-2block5_conv3/kernel
 :2block5_conv3/bias
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
§layers
	variables
trainable_variables
regularization_losses
¨metrics
©non_trainable_variables
ªlayer_metrics
 «layer_regularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
/:-2block5_conv4/kernel
 :2block5_conv4/bias
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¬layers
	variables
trainable_variables
regularization_losses
­metrics
®non_trainable_variables
¯layer_metrics
 °layer_regularization_losses
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
±layers
	variables
trainable_variables
regularization_losses
²metrics
³non_trainable_variables
´layer_metrics
 µlayer_regularization_losses
Ù__call__
+Ú&call_and_return_all_conditional_losses
'Ú"call_and_return_conditional_losses"
_generic_user_object
/:-2block6_conv1/kernel
 :2block6_conv1/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
(
ç0"
trackable_list_wrapper
¸
¶layers
	variables
trainable_variables
regularization_losses
·metrics
¸non_trainable_variables
¹layer_metrics
 ºlayer_regularization_losses
Û__call__
+Ü&call_and_return_all_conditional_losses
'Ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
»layers
	variables
trainable_variables
 regularization_losses
¼metrics
½non_trainable_variables
¾layer_metrics
 ¿layer_regularization_losses
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses"
_generic_user_object
/:-2block6_conv2/kernel
 :2block6_conv2/bias
0
¢0
£1"
trackable_list_wrapper
0
¢0
£1"
trackable_list_wrapper
(
è0"
trackable_list_wrapper
¸
Àlayers
¤	variables
¥trainable_variables
¦regularization_losses
Ámetrics
Ânon_trainable_variables
Ãlayer_metrics
 Älayer_regularization_losses
ß__call__
+à&call_and_return_all_conditional_losses
'à"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ålayers
¨	variables
©trainable_variables
ªregularization_losses
Æmetrics
Çnon_trainable_variables
Èlayer_metrics
 Élayer_regularization_losses
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses"
_generic_user_object
³

¾kernel
	¿bias
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Í	keras_api
ê__call__
+ë&call_and_return_all_conditional_losses"	
_tf_keras_layerì{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
Ì
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ñ	keras_api
ì__call__
+í&call_and_return_all_conditional_losses"·
_tf_keras_layer{"name": "up_sampling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "bilinear"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ð
Ò	variables
Ótrainable_variables
Ôregularization_losses
Õ	keras_api
î__call__
+ï&call_and_return_all_conditional_losses"»
_tf_keras_layer¡{"name": "up_sampling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "bilinear"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
±

Àkernel
	Ábias
Ö	variables
×trainable_variables
Øregularization_losses
Ù	keras_api
ð__call__
+ñ&call_and_return_all_conditional_losses"	
_tf_keras_layerê{"name": "conv2d_transpose", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 896}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 896]}}
@
¾0
¿1
À2
Á3"
trackable_list_wrapper
@
¾0
¿1
À2
Á3"
trackable_list_wrapper
(
ò0"
trackable_list_wrapper
¸
Úlayers
°	variables
±trainable_variables
²regularization_losses
Ûmetrics
Ünon_trainable_variables
Ýlayer_metrics
 Þlayer_regularization_losses
ã__call__
+ä&call_and_return_all_conditional_losses
'ä"call_and_return_conditional_losses"
_generic_user_object
±

Âkernel
	Ãbias
ß	variables
àtrainable_variables
áregularization_losses
â	keras_api
ó__call__
+ô&call_and_return_all_conditional_losses"	
_tf_keras_layerê{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004000000189989805}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
ë
ã	variables
ätrainable_variables
åregularization_losses
æ	keras_api
õ__call__
+ö&call_and_return_all_conditional_losses"Ö
_tf_keras_layer¼{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}}
±

Äkernel
	Åbias
ç	variables
ètrainable_variables
éregularization_losses
ê	keras_api
÷__call__
+ø&call_and_return_all_conditional_losses"	
_tf_keras_layerê{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004000000189989805}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
Ð
ë	variables
ìtrainable_variables
íregularization_losses
î	keras_api
ù__call__
+ú&call_and_return_all_conditional_losses"»
_tf_keras_layer¡{"name": "up_sampling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "bilinear"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ð
ï	variables
ðtrainable_variables
ñregularization_losses
ò	keras_api
û__call__
+ü&call_and_return_all_conditional_losses"»
_tf_keras_layer¡{"name": "up_sampling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "bilinear"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
µ

Ækernel
	Çbias
ó	variables
ôtrainable_variables
õregularization_losses
ö	keras_api
ý__call__
+þ&call_and_return_all_conditional_losses"	
_tf_keras_layerî{"name": "conv2d_transpose_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 896}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 896]}}
P
Â0
Ã1
Ä2
Å3
Æ4
Ç5"
trackable_list_wrapper
P
Â0
Ã1
Ä2
Å3
Æ4
Ç5"
trackable_list_wrapper
0
ÿ0
1"
trackable_list_wrapper
¸
÷layers
º	variables
»trainable_variables
¼regularization_losses
ømetrics
ùnon_trainable_variables
úlayer_metrics
 ûlayer_regularization_losses
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses"
_generic_user_object
4:22table_mask/conv2d/kernel
%:#2table_mask/conv2d/bias
=:;2"table_mask/conv2d_transpose/kernel
.:,2 table_mask/conv2d_transpose/bias
4:22col_mask/conv2d_1/kernel
%:#2col_mask/conv2d_1/bias
4:22col_mask/conv2d_2/kernel
%:#2col_mask/conv2d_2/bias
=:;2"col_mask/conv2d_transpose_1/kernel
.:,2 col_mask/conv2d_transpose_1/bias
ö
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27"
trackable_list_wrapper
 "
trackable_list_wrapper

$0
%1
*2
+3
44
55
:6
;7
D8
E9
J10
K11
P12
Q13
V14
W15
`16
a17
f18
g19
l20
m21
r22
s23
|24
}25
26
27
28
29
30
31"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
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
.
40
51"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
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
.
D0
E1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
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
.
`0
a1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
r0
s1"
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
.
|0
}1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
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
(
ç0"
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
(
è0"
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
0
¾0
¿1"
trackable_list_wrapper
0
¾0
¿1"
trackable_list_wrapper
(
ò0"
trackable_list_wrapper
¸
ülayers
Ê	variables
Ëtrainable_variables
Ìregularization_losses
ýmetrics
þnon_trainable_variables
ÿlayer_metrics
 layer_regularization_losses
ê__call__
+ë&call_and_return_all_conditional_losses
'ë"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layers
Î	variables
Ïtrainable_variables
Ðregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layers
Ò	variables
Ótrainable_variables
Ôregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
î__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses"
_generic_user_object
0
À0
Á1"
trackable_list_wrapper
0
À0
Á1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layers
Ö	variables
×trainable_variables
Øregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
ð__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses"
_generic_user_object
@
¬0
­1
®2
¯3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Â0
Ã1"
trackable_list_wrapper
0
Â0
Ã1"
trackable_list_wrapper
(
ÿ0"
trackable_list_wrapper
¸
layers
ß	variables
àtrainable_variables
áregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
ó__call__
+ô&call_and_return_all_conditional_losses
'ô"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layers
ã	variables
ätrainable_variables
åregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
õ__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses"
_generic_user_object
0
Ä0
Å1"
trackable_list_wrapper
0
Ä0
Å1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
layers
ç	variables
ètrainable_variables
éregularization_losses
metrics
non_trainable_variables
layer_metrics
 layer_regularization_losses
÷__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layers
ë	variables
ìtrainable_variables
íregularization_losses
 metrics
¡non_trainable_variables
¢layer_metrics
 £layer_regularization_losses
ù__call__
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¤layers
ï	variables
ðtrainable_variables
ñregularization_losses
¥metrics
¦non_trainable_variables
§layer_metrics
 ¨layer_regularization_losses
û__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses"
_generic_user_object
0
Æ0
Ç1"
trackable_list_wrapper
0
Æ0
Ç1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
©layers
ó	variables
ôtrainable_variables
õregularization_losses
ªmetrics
«non_trainable_variables
¬layer_metrics
 ­layer_regularization_losses
ý__call__
+þ&call_and_return_all_conditional_losses
'þ"call_and_return_conditional_losses"
_generic_user_object
P
´0
µ1
¶2
·3
¸4
¹5"
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
(
ò0"
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
(
ÿ0"
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
(
0"
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
Þ2Û
$__inference_model_layer_call_fn_3985
$__inference_model_layer_call_fn_5335
$__inference_model_layer_call_fn_5434
$__inference_model_layer_call_fn_4797À
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
Ê2Ç
?__inference_model_layer_call_and_return_conditional_losses_5704
?__inference_model_layer_call_and_return_conditional_losses_5995
?__inference_model_layer_call_and_return_conditional_losses_4951
?__inference_model_layer_call_and_return_conditional_losses_5105À
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
ç2ä
__inference__wrapped_model_3130À
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
annotationsª *0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿ
Õ2Ò
+__inference_block1_conv1_layer_call_fn_6004¢
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
ð2í
F__inference_block1_conv1_layer_call_and_return_conditional_losses_6015¢
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
Õ2Ò
+__inference_block1_conv2_layer_call_fn_6024¢
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
ð2í
F__inference_block1_conv2_layer_call_and_return_conditional_losses_6035¢
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
2
*__inference_block1_pool_layer_call_fn_3142à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
­2ª
E__inference_block1_pool_layer_call_and_return_conditional_losses_3136à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ2Ò
+__inference_block2_conv1_layer_call_fn_6044¢
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
ð2í
F__inference_block2_conv1_layer_call_and_return_conditional_losses_6055¢
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
Õ2Ò
+__inference_block2_conv2_layer_call_fn_6064¢
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
ð2í
F__inference_block2_conv2_layer_call_and_return_conditional_losses_6075¢
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
2
*__inference_block2_pool_layer_call_fn_3154à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
­2ª
E__inference_block2_pool_layer_call_and_return_conditional_losses_3148à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ2Ò
+__inference_block3_conv1_layer_call_fn_6084¢
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
ð2í
F__inference_block3_conv1_layer_call_and_return_conditional_losses_6095¢
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
Õ2Ò
+__inference_block3_conv2_layer_call_fn_6104¢
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
ð2í
F__inference_block3_conv2_layer_call_and_return_conditional_losses_6115¢
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
Õ2Ò
+__inference_block3_conv3_layer_call_fn_6124¢
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
ð2í
F__inference_block3_conv3_layer_call_and_return_conditional_losses_6135¢
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
Õ2Ò
+__inference_block3_conv4_layer_call_fn_6144¢
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
ð2í
F__inference_block3_conv4_layer_call_and_return_conditional_losses_6155¢
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
2
*__inference_block3_pool_layer_call_fn_3166à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
­2ª
E__inference_block3_pool_layer_call_and_return_conditional_losses_3160à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ2Ò
+__inference_block4_conv1_layer_call_fn_6164¢
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
ð2í
F__inference_block4_conv1_layer_call_and_return_conditional_losses_6175¢
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
Õ2Ò
+__inference_block4_conv2_layer_call_fn_6184¢
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
ð2í
F__inference_block4_conv2_layer_call_and_return_conditional_losses_6195¢
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
Õ2Ò
+__inference_block4_conv3_layer_call_fn_6204¢
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
ð2í
F__inference_block4_conv3_layer_call_and_return_conditional_losses_6215¢
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
Õ2Ò
+__inference_block4_conv4_layer_call_fn_6224¢
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
ð2í
F__inference_block4_conv4_layer_call_and_return_conditional_losses_6235¢
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
2
*__inference_block4_pool_layer_call_fn_3178à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
­2ª
E__inference_block4_pool_layer_call_and_return_conditional_losses_3172à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ2Ò
+__inference_block5_conv1_layer_call_fn_6244¢
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
ð2í
F__inference_block5_conv1_layer_call_and_return_conditional_losses_6255¢
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
Õ2Ò
+__inference_block5_conv2_layer_call_fn_6264¢
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
ð2í
F__inference_block5_conv2_layer_call_and_return_conditional_losses_6275¢
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
Õ2Ò
+__inference_block5_conv3_layer_call_fn_6284¢
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
ð2í
F__inference_block5_conv3_layer_call_and_return_conditional_losses_6295¢
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
Õ2Ò
+__inference_block5_conv4_layer_call_fn_6304¢
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
ð2í
F__inference_block5_conv4_layer_call_and_return_conditional_losses_6315¢
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
2
*__inference_block5_pool_layer_call_fn_3190à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
­2ª
E__inference_block5_pool_layer_call_and_return_conditional_losses_3184à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Õ2Ò
+__inference_block6_conv1_layer_call_fn_6330¢
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
ð2í
F__inference_block6_conv1_layer_call_and_return_conditional_losses_6347¢
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
2
&__inference_dropout_layer_call_fn_6352
&__inference_dropout_layer_call_fn_6357´
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
À2½
A__inference_dropout_layer_call_and_return_conditional_losses_6362
A__inference_dropout_layer_call_and_return_conditional_losses_6374´
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
Õ2Ò
+__inference_block6_conv2_layer_call_fn_6389¢
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
ð2í
F__inference_block6_conv2_layer_call_and_return_conditional_losses_6406¢
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
2
(__inference_dropout_1_layer_call_fn_6411
(__inference_dropout_1_layer_call_fn_6416´
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
Ä2Á
C__inference_dropout_1_layer_call_and_return_conditional_losses_6421
C__inference_dropout_1_layer_call_and_return_conditional_losses_6433´
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
ä2á
)__inference_table_mask_layer_call_fn_6454³
ª²¦
FullArgSpec.
args&#
jself
jinput
jpool3
jpool4
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
ÿ2ü
D__inference_table_mask_layer_call_and_return_conditional_losses_6513³
ª²¦
FullArgSpec.
args&#
jself
jinput
jpool3
jpool4
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
2
'__inference_col_mask_layer_call_fn_6544
'__inference_col_mask_layer_call_fn_6563Ä
»²·
FullArgSpec:
args2/
jself
jinput
jpool3
jpool4

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
Ò2Ï
B__inference_col_mask_layer_call_and_return_conditional_losses_6636
B__inference_col_mask_layer_call_and_return_conditional_losses_6716Ä
»²·
FullArgSpec:
args2/
jself
jinput
jpool3
jpool4

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
±2®
__inference_loss_fn_0_6727
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_1_6738
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÉBÆ
"__inference_signature_wrapper_5236input_1"
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
¨2¥¢
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
¨2¥¢
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
2
,__inference_up_sampling2d_layer_call_fn_3209à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯2¬
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_3203à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
.__inference_up_sampling2d_1_layer_call_fn_3228à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
±2®
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3222à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
/__inference_conv2d_transpose_layer_call_fn_3273Ø
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
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª2§
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_3263Ø
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
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
±2®
__inference_loss_fn_2_6755
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
¨2¥¢
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
¨2¥¢
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
º2·´
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
º2·´
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
¨2¥¢
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
¨2¥¢
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
2
.__inference_up_sampling2d_2_layer_call_fn_3292à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
±2®
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_3286à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
.__inference_up_sampling2d_3_layer_call_fn_3311à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
±2®
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_3305à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
1__inference_conv2d_transpose_1_layer_call_fn_3356Ø
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
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¬2©
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_3346Ø
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
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
±2®
__inference_loss_fn_3_6778
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_4_6789
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ ¡
__inference__wrapped_model_3130ýB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁ:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿ
ª "{ªx
8
col_mask,)
col_maskÿÿÿÿÿÿÿÿÿ
<

table_mask.+

table_maskÿÿÿÿÿÿÿÿÿº
F__inference_block1_conv1_layer_call_and_return_conditional_losses_6015p$%9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ@
 
+__inference_block1_conv1_layer_call_fn_6004c$%9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿ@º
F__inference_block1_conv2_layer_call_and_return_conditional_losses_6035p*+9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ@
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ@
 
+__inference_block1_conv2_layer_call_fn_6024c*+9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ@
ª ""ÿÿÿÿÿÿÿÿÿ@è
E__inference_block1_pool_layer_call_and_return_conditional_losses_3136R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 À
*__inference_block1_pool_layer_call_fn_3142R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ»
F__inference_block2_conv1_layer_call_and_return_conditional_losses_6055q459¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ@
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block2_conv1_layer_call_fn_6044d459¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ@
ª "# ÿÿÿÿÿÿÿÿÿ¼
F__inference_block2_conv2_layer_call_and_return_conditional_losses_6075r:;:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block2_conv2_layer_call_fn_6064e:;:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿè
E__inference_block2_pool_layer_call_and_return_conditional_losses_3148R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 À
*__inference_block2_pool_layer_call_fn_3154R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼
F__inference_block3_conv1_layer_call_and_return_conditional_losses_6095rDE:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block3_conv1_layer_call_fn_6084eDE:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿ¼
F__inference_block3_conv2_layer_call_and_return_conditional_losses_6115rJK:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block3_conv2_layer_call_fn_6104eJK:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿ¼
F__inference_block3_conv3_layer_call_and_return_conditional_losses_6135rPQ:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block3_conv3_layer_call_fn_6124ePQ:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿ¼
F__inference_block3_conv4_layer_call_and_return_conditional_losses_6155rVW:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block3_conv4_layer_call_fn_6144eVW:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿè
E__inference_block3_pool_layer_call_and_return_conditional_losses_3160R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 À
*__inference_block3_pool_layer_call_fn_3166R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼
F__inference_block4_conv1_layer_call_and_return_conditional_losses_6175r`a:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block4_conv1_layer_call_fn_6164e`a:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿ¼
F__inference_block4_conv2_layer_call_and_return_conditional_losses_6195rfg:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block4_conv2_layer_call_fn_6184efg:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿ¼
F__inference_block4_conv3_layer_call_and_return_conditional_losses_6215rlm:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block4_conv3_layer_call_fn_6204elm:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿ¼
F__inference_block4_conv4_layer_call_and_return_conditional_losses_6235rrs:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_block4_conv4_layer_call_fn_6224ers:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿ
ª "# ÿÿÿÿÿÿÿÿÿè
E__inference_block4_pool_layer_call_and_return_conditional_losses_3172R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 À
*__inference_block4_pool_layer_call_fn_3178R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
F__inference_block5_conv1_layer_call_and_return_conditional_losses_6255n|}8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ@@
 
+__inference_block5_conv1_layer_call_fn_6244a|}8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª "!ÿÿÿÿÿÿÿÿÿ@@º
F__inference_block5_conv2_layer_call_and_return_conditional_losses_6275p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ@@
 
+__inference_block5_conv2_layer_call_fn_6264c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª "!ÿÿÿÿÿÿÿÿÿ@@º
F__inference_block5_conv3_layer_call_and_return_conditional_losses_6295p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ@@
 
+__inference_block5_conv3_layer_call_fn_6284c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª "!ÿÿÿÿÿÿÿÿÿ@@º
F__inference_block5_conv4_layer_call_and_return_conditional_losses_6315p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ@@
 
+__inference_block5_conv4_layer_call_fn_6304c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª "!ÿÿÿÿÿÿÿÿÿ@@è
E__inference_block5_pool_layer_call_and_return_conditional_losses_3184R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 À
*__inference_block5_pool_layer_call_fn_3190R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
F__inference_block6_conv1_layer_call_and_return_conditional_losses_6347p8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 
+__inference_block6_conv1_layer_call_fn_6330c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿ  º
F__inference_block6_conv2_layer_call_and_return_conditional_losses_6406p¢£8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 
+__inference_block6_conv2_layer_call_fn_6389c¢£8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿ  
B__inference_col_mask_layer_call_and_return_conditional_losses_6636ÖÂÃÄÅÆÇ¢
¢
(%
inputÿÿÿÿÿÿÿÿÿ  
*'
pool3ÿÿÿÿÿÿÿÿÿ
(%
pool4ÿÿÿÿÿÿÿÿÿ@@
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
B__inference_col_mask_layer_call_and_return_conditional_losses_6716ÖÂÃÄÅÆÇ¢
¢
(%
inputÿÿÿÿÿÿÿÿÿ  
*'
pool3ÿÿÿÿÿÿÿÿÿ
(%
pool4ÿÿÿÿÿÿÿÿÿ@@
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 õ
'__inference_col_mask_layer_call_fn_6544ÉÂÃÄÅÆÇ¢
¢
(%
inputÿÿÿÿÿÿÿÿÿ  
*'
pool3ÿÿÿÿÿÿÿÿÿ
(%
pool4ÿÿÿÿÿÿÿÿÿ@@
p 
ª ""ÿÿÿÿÿÿÿÿÿõ
'__inference_col_mask_layer_call_fn_6563ÉÂÃÄÅÆÇ¢
¢
(%
inputÿÿÿÿÿÿÿÿÿ  
*'
pool3ÿÿÿÿÿÿÿÿÿ
(%
pool4ÿÿÿÿÿÿÿÿÿ@@
p
ª ""ÿÿÿÿÿÿÿÿÿä
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_3346ÆÇJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¼
1__inference_conv2d_transpose_1_layer_call_fn_3356ÆÇJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿâ
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_3263ÀÁJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 º
/__inference_conv2d_transpose_layer_call_fn_3273ÀÁJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿµ
C__inference_dropout_1_layer_call_and_return_conditional_losses_6421n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 µ
C__inference_dropout_1_layer_call_and_return_conditional_losses_6433n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 
(__inference_dropout_1_layer_call_fn_6411a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p 
ª "!ÿÿÿÿÿÿÿÿÿ  
(__inference_dropout_1_layer_call_fn_6416a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p
ª "!ÿÿÿÿÿÿÿÿÿ  ³
A__inference_dropout_layer_call_and_return_conditional_losses_6362n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 ³
A__inference_dropout_layer_call_and_return_conditional_losses_6374n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 
&__inference_dropout_layer_call_fn_6352a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p 
ª "!ÿÿÿÿÿÿÿÿÿ  
&__inference_dropout_layer_call_fn_6357a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p
ª "!ÿÿÿÿÿÿÿÿÿ  :
__inference_loss_fn_0_6727¢

¢ 
ª " :
__inference_loss_fn_1_6738¢¢

¢ 
ª " :
__inference_loss_fn_2_6755¾¢

¢ 
ª " :
__inference_loss_fn_3_6778Â¢

¢ 
ª " :
__inference_loss_fn_4_6789Ä¢

¢ 
ª " ­
?__inference_model_layer_call_and_return_conditional_losses_4951éB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "_¢\
UR
'$
0/0ÿÿÿÿÿÿÿÿÿ
'$
0/1ÿÿÿÿÿÿÿÿÿ
 ­
?__inference_model_layer_call_and_return_conditional_losses_5105éB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "_¢\
UR
'$
0/0ÿÿÿÿÿÿÿÿÿ
'$
0/1ÿÿÿÿÿÿÿÿÿ
 ¬
?__inference_model_layer_call_and_return_conditional_losses_5704èB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "_¢\
UR
'$
0/0ÿÿÿÿÿÿÿÿÿ
'$
0/1ÿÿÿÿÿÿÿÿÿ
 ¬
?__inference_model_layer_call_and_return_conditional_losses_5995èB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "_¢\
UR
'$
0/0ÿÿÿÿÿÿÿÿÿ
'$
0/1ÿÿÿÿÿÿÿÿÿ
 
$__inference_model_layer_call_fn_3985ÛB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "QN
%"
0ÿÿÿÿÿÿÿÿÿ
%"
1ÿÿÿÿÿÿÿÿÿ
$__inference_model_layer_call_fn_4797ÛB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "QN
%"
0ÿÿÿÿÿÿÿÿÿ
%"
1ÿÿÿÿÿÿÿÿÿ
$__inference_model_layer_call_fn_5335ÚB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "QN
%"
0ÿÿÿÿÿÿÿÿÿ
%"
1ÿÿÿÿÿÿÿÿÿ
$__inference_model_layer_call_fn_5434ÚB$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "QN
%"
0ÿÿÿÿÿÿÿÿÿ
%"
1ÿÿÿÿÿÿÿÿÿ¯
"__inference_signature_wrapper_5236B$%*+45:;DEJKPQVW`afglmrs|}¢£ÂÃÄÅÆÇ¾¿ÀÁE¢B
¢ 
;ª8
6
input_1+(
input_1ÿÿÿÿÿÿÿÿÿ"{ªx
8
col_mask,)
col_maskÿÿÿÿÿÿÿÿÿ
<

table_mask.+

table_maskÿÿÿÿÿÿÿÿÿ
D__inference_table_mask_layer_call_and_return_conditional_losses_6513Î¾¿ÀÁ¢
¢
(%
inputÿÿÿÿÿÿÿÿÿ  
*'
pool3ÿÿÿÿÿÿÿÿÿ
(%
pool4ÿÿÿÿÿÿÿÿÿ@@
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 ï
)__inference_table_mask_layer_call_fn_6454Á¾¿ÀÁ¢
¢
(%
inputÿÿÿÿÿÿÿÿÿ  
*'
pool3ÿÿÿÿÿÿÿÿÿ
(%
pool4ÿÿÿÿÿÿÿÿÿ@@
ª ""ÿÿÿÿÿÿÿÿÿì
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3222R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
.__inference_up_sampling2d_1_layer_call_fn_3228R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿì
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_3286R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
.__inference_up_sampling2d_2_layer_call_fn_3292R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿì
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_3305R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
.__inference_up_sampling2d_3_layer_call_fn_3311R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_3203R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
,__inference_up_sampling2d_layer_call_fn_3209R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ