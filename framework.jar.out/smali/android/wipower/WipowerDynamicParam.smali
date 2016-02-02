.class public Landroid/wipower/WipowerDynamicParam;
.super Ljava/lang/Object;
.source "WipowerDynamicParam.java"


# static fields
.field private static final IREG_ADC_TO_mA_RATIO:F = 4.765625f

.field private static final LOGTAG:Ljava/lang/String; = "WipowerDynamicParam"

.field private static final LSB_MASK:I = 0xff

.field private static final MSB_MASK:I = 0xff00

.field private static final OVP_BIT:B = -0x80t

.field private static final OVP_THRESHHOLD_VAL:S = 0x53fcs

.field private static final VDBG:Z = false

.field private static final VREG_ADC_TO_mV_RATIO:F = 95.3125f


# instance fields
.field private mAlert:B

.field private mMaxRectVoltageDyn:S

.field private mMinRectVoltageDyn:S

.field private mOptValidity:B

.field private mOutputCurrent:S

.field private mOutputVoltage:S

.field private mRectCurrent:S

.field private mRectVoltage:S

.field private mReserved1:S

.field private mReserved2:B

.field private mSetRectVoltageDyn:S

.field private mTemperature:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 76
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 77
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 78
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 79
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 80
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 81
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 82
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 83
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 84
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 85
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 86
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 87
    return-void
.end method

.method public static IREG_ADC_TO_mA(S)S
    .locals 2
    .param p0, "adc"    # S

    .prologue
    .line 171
    int-to-float v0, p0

    const v1, 0x40988000    # 4.765625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static VREG_ADC_TO_mV(S)S
    .locals 2
    .param p0, "adc"    # S

    .prologue
    .line 167
    int-to-float v0, p0

    const v1, 0x42bea000    # 95.3125f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private static toHex(I)Ljava/lang/String;
    .locals 4
    .param p0, "num"    # I

    .prologue
    .line 94
    const-string v0, "0x%8s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsigned(B)S
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 163
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getValue()[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    const v3, 0xff00

    .line 121
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 122
    .local v0, "res":[B
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->print()V

    .line 123
    const/4 v1, 0x0

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    aput-byte v2, v0, v1

    .line 124
    const/4 v1, 0x1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    const/4 v1, 0x2

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    const/4 v1, 0x3

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    const/4 v1, 0x4

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    const/4 v1, 0x5

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    const/4 v1, 0x6

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 130
    const/4 v1, 0x7

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 131
    const/16 v1, 0x8

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 132
    const/16 v1, 0x9

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    aput-byte v2, v0, v1

    .line 133
    const/16 v1, 0xa

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    const/16 v1, 0xb

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    const/16 v1, 0xc

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    const/16 v1, 0xd

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    const/16 v1, 0xe

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    const/16 v1, 0xf

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    iget-byte v1, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    aput-byte v1, v0, v4

    .line 140
    aget-byte v1, v0, v4

    and-int/lit8 v1, v1, -0x80

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    iget-short v1, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    const/16 v2, 0x53fc

    if-ge v1, v2, :cond_0

    .line 141
    aget-byte v1, v0, v4

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 143
    :cond_0
    const-string v1, "WipowerDynamicParam"

    const-string/jumbo v2, "mPruDynamicParam.getValue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v0
.end method

.method print()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method resetValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 149
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 150
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 151
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 152
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 153
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 154
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 155
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 156
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 157
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 158
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 159
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 160
    return-void
.end method

.method public setValue([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->resetValues()V

    .line 183
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 184
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 185
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 186
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 187
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 188
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 189
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 190
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 191
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 192
    const/16 v0, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 193
    const/16 v0, 0xa

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 194
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 195
    const/16 v0, 0xc

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 196
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 197
    const/16 v0, 0xe

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 198
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 200
    const/16 v0, 0x10

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 201
    const/16 v0, 0x11

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 202
    const/16 v0, 0x12

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 203
    const/16 v0, 0x13

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 204
    const-string v0, "WipowerDynamicParam"

    const-string/jumbo v1, "mPruDynamicParam.setAppValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->print()V

    .line 206
    return-void
.end method
