.class public Lcom/android/settings_ex/fingerprint/AutoInterrpt;
.super Ljava/lang/Object;
.source "AutoInterrpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;
    }
.end annotation


# static fields
.field private static DEV_PATH:Ljava/lang/String;


# instance fields
.field public autoListener:Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;

.field high:I

.field low:I

.field private mContext:Landroid/content/Context;

.field mDCOffset:I

.field private mET310Observer:Landroid/os/UEventObserver;

.field private mFound:Z

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field mIndex:I

.field private mIntCount:I

.field mLib:Legistec/fingerauth/api/SettingLib;

.field private mThreshold:I

.field private final m_dc_count:I

.field mcountTable:[I

.field mdcoffsetTable:[I

.field mid:I

.field private minitial:Z

.field private misInterrupt:Z

.field mstrLogOut:Ljava/lang/String;

.field mthresholdTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "DEVPATH=/devices/soc.0/78b7000.spi/spi_master/spi0/spi0.0/fp/esfp0"

    sput-object v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->DEV_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x3f

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v2, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->m_dc_count:I

    .line 47
    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    .line 48
    iput v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mContext:Landroid/content/Context;

    .line 54
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mFound:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->minitial:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->misInterrupt:Z

    .line 58
    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    .line 59
    iput v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIndex:I

    .line 60
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    .line 61
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mdcoffsetTable:[I

    .line 62
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mcountTable:[I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mstrLogOut:Ljava/lang/String;

    .line 65
    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    .line 66
    iput v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->low:I

    .line 67
    iget v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    iget v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->low:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    .line 71
    new-instance v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt$1;-><init>(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mET310Observer:Landroid/os/UEventObserver;

    .line 319
    new-instance v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;-><init>(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mHandler:Landroid/os/Handler;

    .line 364
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mContext:Landroid/content/Context;

    .line 365
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->misInterrupt:Z

    return v0
.end method

.method static synthetic access$108(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    .prologue
    .line 15
    iget v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    .prologue
    .line 15
    iget v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/AutoInterrpt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/AutoInterrpt;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->finish(Z)V

    return-void
.end method

.method private finish(Z)V
    .locals 4
    .param p1, "ret"    # Z

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mET310Observer:Landroid/os/UEventObserver;

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    .line 302
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v1}, Legistec/fingerauth/api/SettingLib;->setPowerOffMode()I

    .line 304
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 305
    .local v0, "msge":Landroid/os/Message;
    if-nez p1, :cond_1

    .line 306
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v1}, Legistec/fingerauth/api/SettingLib;->unbind()V

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    return-void

    .line 308
    :cond_1
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private initLib()V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Legistec/fingerauth/api/SettingLib;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Legistec/fingerauth/api/SettingLib;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    new-instance v1, Lcom/android/settings_ex/fingerprint/AutoInterrpt$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt$3;-><init>(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setStatusListener(Legistec/fingerauth/api/FPAuthListeners$StatusListener;)V

    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->bind()V

    .line 427
    return-void
.end method


# virtual methods
.method public GetAutoTHDCValue()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mET310Observer:Landroid/os/UEventObserver;

    sget-object v1, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->DEV_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->initLib()V

    .line 371
    return-void
.end method

.method calculateDTVRT(I)V
    .locals 18
    .param p1, "isStart"    # I

    .prologue
    .line 173
    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mFound:Z

    if-nez v14, :cond_0

    .line 175
    const/16 v14, 0x3f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    .line 176
    const/16 v14, 0x3f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->setIntThreshold(I)I

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->saveIntThreshold(I)I

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->setIntDCOffset(I)I

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->saveIntDCOffset(I)I

    .line 181
    const-string v14, "AutoInterrpt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mfound false iStart = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " NOT FOUND !!!!!!!!!!!!!!!!!!!!! set threshold as "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " dcoffset as "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v14}, Legistec/fingerauth/api/SettingLib;->finishInterruptCalibration()I

    .line 186
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->finish(Z)V

    .line 187
    const-string v14, "AutoInterrpt"

    const-string v15, "[Calculate !fount]END_INIT_CALLED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 190
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mdcoffsetTable:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    move/from16 v16, v0

    aput v16, v14, v15

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    move/from16 v16, v0

    aput v16, v14, v15

    .line 193
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    .line 194
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIndex:I

    .line 197
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    rsub-int/lit8 v14, v14, 0x3f

    const/16 v15, 0xa

    if-ne v14, v15, :cond_d

    .line 198
    const/4 v9, 0x0

    .line 199
    .local v9, "preTH":I
    const/4 v8, 0x0

    .line 200
    .local v8, "nowTH":I
    const/4 v7, 0x0

    .line 201
    .local v7, "nextTH":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v14, 0x9

    if-ge v3, v14, :cond_4

    .line 202
    if-lez v3, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    add-int/lit8 v15, v3, -0x1

    aget v9, v14, v15

    .line 207
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    aget v8, v14, v3

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    add-int/lit8 v15, v3, 0x1

    aget v7, v14, v15

    .line 210
    if-ne v9, v7, :cond_2

    if-eq v9, v8, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    aput v9, v14, v3

    .line 212
    const-string v14, "AutoInterrpt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Change TH:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 205
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    aget v9, v14, v3

    goto :goto_2

    .line 216
    :cond_4
    const/4 v13, 0x0

    .line 217
    .local v13, "tempTH":I
    const/4 v5, 0x0

    .line 218
    .local v5, "maxCntTH":I
    const/4 v12, 0x0

    .line 219
    .local v12, "tempCnt":I
    const/4 v4, 0x0

    .line 221
    .local v4, "maxCnt":I
    const/4 v10, 0x0

    .local v10, "resultIndex":I
    :goto_3
    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    .line 222
    const-string v14, "AutoInterrpt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mdcoffsetTable:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 228
    :cond_5
    const/4 v3, 0x0

    :goto_4
    const/16 v14, 0x9

    if-ge v3, v14, :cond_9

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    aget v14, v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    add-int/lit8 v16, v3, 0x1

    aget v15, v15, v16

    if-ne v14, v15, :cond_8

    .line 230
    add-int/lit8 v12, v12, 0x1

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    aget v13, v14, v3

    .line 232
    const/16 v14, 0x9

    if-ne v3, v14, :cond_6

    .line 233
    add-int/lit8 v12, v12, 0x1

    .line 238
    :cond_6
    :goto_5
    if-lt v12, v4, :cond_7

    .line 239
    move v4, v12

    .line 240
    move v5, v13

    .line 228
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 235
    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 243
    :cond_9
    const/4 v2, -0x1

    .line 244
    .local v2, "baseDC":I
    const/4 v3, 0x0

    :goto_6
    const/16 v14, 0xa

    if-ge v3, v14, :cond_b

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mthresholdTable:[I

    aget v14, v14, v3

    if-ne v14, v5, :cond_a

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mdcoffsetTable:[I

    aget v2, v14, v3

    .line 244
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 249
    :cond_b
    add-int/lit8 v14, v2, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    .line 250
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    .line 252
    const/4 v14, -0x1

    if-ne v2, v14, :cond_c

    .line 254
    const-string v14, "AutoInterrpt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dcoffset = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mIndex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v14, "AutoInterrpt"

    const-string v15, "not found interrupt threshold"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v14, 0x3f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    .line 257
    const/16 v14, 0x3f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->setIntThreshold(I)I

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->saveIntThreshold(I)I

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->setIntDCOffset(I)I

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->saveIntDCOffset(I)I

    .line 263
    const-string v14, "AutoInterrpt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NOT FOUND !!!!!!!!!!!!!!!!!!!!! set threshold as "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " dcoffset as "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v14}, Legistec/fingerauth/api/SettingLib;->finishInterruptCalibration()I

    .line 266
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->finish(Z)V

    .line 267
    const-string v14, "AutoInterrpt"

    const-string v15, "END_INIT_CALLED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    :cond_c
    const-string v14, "AutoInterrpt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FINAL TH= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " DC= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->misInterrupt:Z

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->saveIntThreshold(I)I

    .line 274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->setIntDCOffset(I)I

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->saveIntDCOffset(I)I

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v14}, Legistec/fingerauth/api/SettingLib;->finishInterruptCalibration()I

    .line 277
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->finish(Z)V

    goto/16 :goto_0

    .line 280
    .end local v2    # "baseDC":I
    .end local v3    # "i":I
    .end local v4    # "maxCnt":I
    .end local v5    # "maxCntTH":I
    .end local v7    # "nextTH":I
    .end local v8    # "nowTH":I
    .end local v9    # "preTH":I
    .end local v10    # "resultIndex":I
    .end local v12    # "tempCnt":I
    .end local v13    # "tempTH":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->minitial:Z

    if-nez v14, :cond_e

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->setIntDCOffset(I)I

    .line 282
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 283
    .local v6, "mesg":Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v6, Landroid/os/Message;->what:I

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v6, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 287
    .end local v6    # "mesg":Landroid/os/Message;
    :cond_e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->minitial:Z

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v14}, Legistec/fingerauth/api/SettingLib;->startInterruptCalibration()I

    move-result v11

    .line 289
    .local v11, "ret":I
    if-nez v11, :cond_f

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v14, v15}, Legistec/fingerauth/api/SettingLib;->setIntDCOffset(I)I

    .line 291
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 292
    .restart local v6    # "mesg":Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v6, Landroid/os/Message;->what:I

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v6, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 296
    .end local v6    # "mesg":Landroid/os/Message;
    :cond_f
    const-string v14, "AutoInterrpt"

    const-string v15, "calculateDTVRT 3"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method calibrationDTVRT()V
    .locals 10

    .prologue
    const/16 v9, 0x3f

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v3, v9}, Legistec/fingerauth/api/SettingLib;->setIntThreshold(I)I

    .line 112
    iput-boolean v6, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->misInterrupt:Z

    .line 113
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 114
    .local v1, "mesg":Landroid/os/Message;
    iget v2, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    .line 115
    .local v2, "ueventCount":I
    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    if-ge v3, v8, :cond_0

    .line 116
    const-string v3, "AutoInterrpt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " th:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--- Int too less:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    if-ge v3, v8, :cond_1

    .line 119
    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    .line 120
    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    iget v4, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->low:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    .line 127
    :goto_0
    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    iget v4, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->low:I

    sub-int/2addr v3, v4

    if-gt v3, v7, :cond_3

    .line 128
    iget-boolean v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mFound:Z

    if-eqz v3, :cond_2

    .line 129
    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    .line 130
    iput v6, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    .line 135
    :goto_1
    iput v8, v1, Landroid/os/Message;->what:I

    .line 136
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    :goto_2
    return-void

    .line 122
    :cond_1
    iput v6, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    .line 123
    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->low:I

    .line 124
    iget v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    iget v4, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->low:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    .line 125
    iput-boolean v7, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mFound:Z

    goto :goto_0

    .line 132
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v3, v9}, Legistec/fingerauth/api/SettingLib;->saveIntThreshold(I)I

    .line 133
    iput v9, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    goto :goto_1

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    iget v4, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    invoke-virtual {v3, v4}, Legistec/fingerauth/api/SettingLib;->setIntThreshold(I)I

    .line 142
    const-wide/16 v4, 0xf

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_3
    iput v6, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    .line 147
    iput-boolean v7, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->misInterrupt:Z

    .line 149
    const-wide/16 v4, 0x3c

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->calibrationDTVRT()V

    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 150
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method

.method finishDTVRT()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    iput-boolean v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->misInterrupt:Z

    .line 158
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mFound:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "AutoInterrpt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishDTVRT() : RESULT TH= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DC= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    iput v3, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->calculateDTVRT(I)V

    .line 169
    return v3

    .line 162
    :cond_0
    const-string v0, "AutoInterrpt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishDTVRT() : NOT FOUND set threshold as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGetTHDCValueListener(Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->autoListener:Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;

    .line 376
    return-void
.end method

.method startDTVRT()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    iput-boolean v4, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mFound:Z

    .line 92
    const/16 v1, 0x3f

    iput v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    .line 93
    iput v4, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->low:I

    .line 94
    iget v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->high:I

    iget v2, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->low:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    .line 96
    iput v4, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mLib:Legistec/fingerauth/api/SettingLib;

    iget v2, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mid:I

    invoke-virtual {v1, v2}, Legistec/fingerauth/api/SettingLib;->setIntThreshold(I)I

    .line 98
    iput v4, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mIntCount:I

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->misInterrupt:Z

    .line 102
    const-wide/16 v2, 0x3c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->calibrationDTVRT()V

    .line 107
    return v4

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
