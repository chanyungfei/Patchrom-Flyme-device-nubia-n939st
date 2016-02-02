.class public Lcom/android/settings_ex/SDcardUpgrade;
.super Landroid/app/Activity;
.source "SDcardUpgrade.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static bufferc:[B

.field static lengthup:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private final UPGRADE_HISTORY:Ljava/lang/String;

.field private final UPGRADE_HISTORY_COPY:Ljava/lang/String;

.field private mBatterLevel:I

.field private mBatterScale:I

.field private mBatterVoltage:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnOk:Landroid/widget/Button;

.field private mBtnUpdate:Landroid/widget/Button;

.field private mCanUpdate:Z

.field mCurrentTime1:Ljava/lang/String;

.field private mDatalengths:I

.field private mHandler:Landroid/os/Handler;

.field mHavaZip:Ljava/lang/Boolean;

.field mMeidNum1:Ljava/lang/String;

.field mNewestVersion1:Ljava/lang/String;

.field mOldVersion1:Ljava/lang/String;

.field mProduction1:Ljava/lang/String;

.field private mSearch:I

.field private mTeNote:Landroid/widget/TextView;

.field private mTemplateNums:Ljava/lang/String;

.field private mTracesPaths:Ljava/lang/String;

.field mUnifyVersion:Ljava/lang/String;

.field private mVerLength:I

.field mVersions:Ljava/lang/String;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/android/settings_ex/SDcardUpgrade;->bufferc:[B

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/SDcardUpgrade;->lengthup:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const-string v0, "/data/update_history.csv"

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->UPGRADE_HISTORY:Ljava/lang/String;

    .line 68
    const-string v0, "/storage/sdcard1/update_history2.csv"

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->UPGRADE_HISTORY_COPY:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mCurrentTime1:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mMeidNum1:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mOldVersion1:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mNewestVersion1:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mProduction1:Ljava/lang/String;

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mHavaZip:Ljava/lang/Boolean;

    .line 88
    const-string v0, "SDcardUpgrade"

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->TAG:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lcom/android/settings_ex/SDcardUpgrade;->mCanUpdate:Z

    .line 91
    const-string v0, "ro.build.display.hipad.internal"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mTracesPaths:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mTracesPaths:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mVerLength:I

    .line 95
    const-string v0, "0.0.1B01"

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mTemplateNums:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mTemplateNums:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mDatalengths:I

    .line 100
    iget v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mVerLength:I

    iget v1, p0, Lcom/android/settings_ex/SDcardUpgrade;->mDatalengths:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mSearch:I

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mTracesPaths:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings_ex/SDcardUpgrade;->mSearch:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mVersions:Ljava/lang/String;

    .line 102
    const-string v0, "update.zip"

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mUnifyVersion:Ljava/lang/String;

    .line 322
    new-instance v0, Lcom/android/settings_ex/SDcardUpgrade$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SDcardUpgrade$1;-><init>(Lcom/android/settings_ex/SDcardUpgrade;)V

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v0, Lcom/android/settings_ex/SDcardUpgrade$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SDcardUpgrade$2;-><init>(Lcom/android/settings_ex/SDcardUpgrade;)V

    iput-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/SDcardUpgrade;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SDcardUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBatterVoltage:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/SDcardUpgrade;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SDcardUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBatterLevel:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/SDcardUpgrade;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SDcardUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBatterScale:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings_ex/SDcardUpgrade;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SDcardUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings_ex/SDcardUpgrade;->mCanUpdate:Z

    return p1
.end method

.method public static getSdPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    const/4 v4, 0x0

    .line 370
    .local v4, "sdcardPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 373
    .local v1, "defaultPath":Ljava/lang/String;
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 374
    .local v5, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 375
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 376
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 377
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 378
    const-string v8, "wangjiaying"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wangjiaying sdcardPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 383
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v18

    const-string v19, "mounted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 164
    .local v10, "mHaveSD":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wangjiaying sss mHaveSD = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SDcardUpgrade;->finish()V

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mTeNote:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f090bd3

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mBtnUpdate:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mBtnOk:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 175
    .end local v10    # "mHaveSD":Ljava/lang/Boolean;
    :pswitch_1
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SDcardUpgrade;->mHavaZip:Ljava/lang/Boolean;

    .line 176
    const/4 v13, 0x0

    .line 177
    .local v13, "sdcardPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 178
    .local v3, "defaultPath":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v14

    .line 181
    .local v14, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v17

    .line 182
    .local v17, "volumes":[Landroid/os/storage/StorageVolume;
    move-object/from16 v2, v17

    .local v2, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v16, v2, v7

    .line 183
    .local v16, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "SD"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 184
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wangjiaying sdcardPath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 191
    .end local v16    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v5, "file":Ljava/io/File;
    if-nez v13, :cond_4

    .line 195
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 196
    .local v12, "mfilelist":[Ljava/io/File;
    if-nez v12, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "wangjiaying mfilelist == null "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 202
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_8

    .line 203
    aget-object v18, v12, v6

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    .line 205
    .local v11, "mfileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wangjiaying mVersions = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mVersions:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mVersions:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mUnifyVersion:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 208
    :cond_6
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SDcardUpgrade;->mHavaZip:Ljava/lang/Boolean;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wangjiaying 001 mHavaZip = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHavaZip:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 213
    .end local v11    # "mfileName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHavaZip:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 219
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mBatterScale:I

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mBatterLevel:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mBatterScale:I

    move/from16 v19, v0

    div-int v9, v18, v19

    .line 221
    .local v9, "mBatterPercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SDcardUpgrade mBatterPercent="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mBatterVoltage="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mBatterVoltage:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v18, 0x14

    move/from16 v0, v18

    if-lt v9, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mBatterVoltage:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x400d99999999999aL    # 3.7

    cmpg-double v18, v18, v20

    if-gez v18, :cond_c

    .line 223
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SDcardUpgrade;->finish()V

    .line 225
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SDcardUpgrade;->mCanUpdate:Z

    .line 231
    .end local v9    # "mBatterPercent":I
    :cond_b
    :goto_4
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SDcardUpgrade;->mHavaZip:Ljava/lang/Boolean;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "wangjiaying bu zou "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SDcardUpgrade;->mCanUpdate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    if-eqz v12, :cond_0

    .line 247
    const-string v18, "wangjiaying"

    const-string v19, "wangjiaying can update"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v15, "versionIntent":Landroid/content/Intent;
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    const-string v18, "com.android.settings"

    const-string v19, "com.android.settings.CleanData"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/SDcardUpgrade;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 270
    :catch_0
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/Exception;
    const-string v18, "test"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to start activity "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 227
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v15    # "versionIntent":Landroid/content/Intent;
    .restart local v9    # "mBatterPercent":I
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SDcardUpgrade;->mCanUpdate:Z

    goto :goto_4

    .line 159
    :pswitch_data_0
    .packed-switch 0x7f0f01e3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v6, 0x7f0400d8

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SDcardUpgrade;->setContentView(I)V

    .line 106
    const v6, 0x7f0f01e3

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SDcardUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBtnUpdate:Landroid/widget/Button;

    .line 107
    const v6, 0x7f0f01e4

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SDcardUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBtnOk:Landroid/widget/Button;

    .line 108
    const v6, 0x7f0f01e2

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SDcardUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mTeNote:Landroid/widget/TextView;

    .line 109
    iget-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mTeNote:Landroid/widget/TextView;

    const v7, 0x7f090bd1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBtnUpdate:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBtnUpdate:Landroid/widget/Button;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/android/settings_ex/SDcardUpgrade;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    const-string v6, "wangjiaying "

    const-string v7, "oncreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v6, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v6}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mCurrentTime1:Ljava/lang/String;

    .line 121
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SDcardUpgrade;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->tm:Landroid/telephony/TelephonyManager;

    .line 122
    iget-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mMeidNum1:Ljava/lang/String;

    .line 124
    const-string v6, "ro.build.sw_internal_version"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mOldVersion1:Ljava/lang/String;

    .line 125
    iget-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mOldVersion1:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mNewestVersion1:Ljava/lang/String;

    .line 127
    const-string v6, "ro.build.display.id"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/SDcardUpgrade;->mProduction1:Ljava/lang/String;

    .line 130
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/UpdateInfo.txt"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "mUpInfo1":Ljava/io/File;
    const-string v6, "wangjiaying"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wangjiaying 004 mCurrentTime1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SDcardUpgrade;->mCurrentTime1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mOldVersion1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SDcardUpgrade;->mOldVersion1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mNewestVersion1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SDcardUpgrade;->mNewestVersion1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mMeidNum1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SDcardUpgrade;->mMeidNum1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mProduction1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SDcardUpgrade;->mProduction1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mVerLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/SDcardUpgrade;->mVerLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings_ex/SDcardUpgrade;->mCurrentTime1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SDcardUpgrade;->mMeidNum1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SDcardUpgrade;->mOldVersion1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SDcardUpgrade;->mNewestVersion1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SDcardUpgrade;->mProduction1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "str1":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 136
    .local v2, "mBuf1":[B
    const-string v6, "wangjiaying"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wangjiaying mBuf1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 142
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v2    # "mBuf1":[B
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SDcardUpgrade;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method
