.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FingerprintEnrollFragment.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field private isLeft:Z

.field private mAlreadyIdentify:Z

.field private mBtnContinue:Landroid/widget/Button;

.field private mBtnRename:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFingerIndex:I

.field private mFingerPrintName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsProgress80:Z

.field private mIvFPIdentify:Landroid/widget/ImageView;

.field private mIvFPMap:Landroid/widget/ImageView;

.field private mLib:Legistec/fingerauth/api/SettingLib;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNormal:Z

.field private mProgress:I

.field private mProgressSuccess:Z

.field private mTimeCount:I

.field private mTvProgress:Landroid/widget/TextView;

.field private mTvStatusHint:Landroid/widget/TextView;

.field private mTvStatusTitle:Landroid/widget/TextSwitcher;

.field private powerManager:Landroid/os/PowerManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->isLeft:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgressSuccess:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIsProgress80:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mAlreadyIdentify:Z

    .line 129
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgress:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPIdentify:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgress:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->showBadImageDLG()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Legistec/fingerauth/api/SettingLib;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->isLeft:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->isLeft:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgressSuccess:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgressSuccess:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->checkPwd()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerPrintName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mNormal:Z

    return p1
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->showFPExistDlg()V

    return-void
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mAlreadyIdentify:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mAlreadyIdentify:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getMsgStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTimeCount:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTimeCount:I

    return p1
.end method

.method static synthetic access$2708(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTimeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTimeCount:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->addFingerprint(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->vibrateShort()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnContinue:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnRename:Landroid/widget/Button;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->powerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 874
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->powerManager:Landroid/os/PowerManager;

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 885
    :cond_1
    :goto_0
    return-void

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->powerManager:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "FingerprintEnrollFragment"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 883
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private addFingerprint(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f090b78

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerPrintName:Ljava/lang/String;

    .line 719
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 720
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "fp_name"

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerPrintName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v2, "fp_index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->insertFingerPrint(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 723
    .local v0, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addFingerprint] index ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] inserted, uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method private bindAll()V
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->initAllListener()V

    .line 624
    const-string v0, "[bindAll]"

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->bind()V

    .line 626
    return-void
.end method

.method private checkPwd()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->isPasswordQualityNone(Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "[checkPwd] no any pattern yet."

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 405
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "set_for_fp"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f090232

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 415
    .end local v5    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 412
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mNormal:Z

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->finish()V

    goto :goto_0
.end method

.method private findFreeFingerprintIndex()I
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v14, 0x5

    .line 667
    const/4 v10, 0x1

    .line 669
    .local v10, "index":I
    const/4 v12, 0x0

    .line 670
    .local v12, "indexMax":I
    new-array v13, v14, [I

    .line 671
    .local v13, "keyArray":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v13

    if-ge v9, v0, :cond_0

    .line 672
    const/4 v0, 0x0

    aput v0, v13, v9

    .line 671
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/fingerprint/FingerPrintDatabaseHelper;->FINGER_PRINT_PROJECTION:[Ljava/lang/String;

    const-string v5, "fp_index DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 681
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 682
    const-string v0, "[findFreeFingerprintIndex] cursor is null! just return"

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    move v11, v10

    .line 713
    .end local v10    # "index":I
    .local v11, "index":I
    :goto_1
    return v11

    .line 688
    .end local v11    # "index":I
    .restart local v10    # "index":I
    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    const-string v0, "fp_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 690
    .local v8, "fingerprint_index":I
    add-int/lit8 v0, v8, -0x1

    aput v8, v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    if-le v8, v12, :cond_2

    move v12, v8

    .line 692
    :cond_2
    goto :goto_2

    .line 696
    .end local v8    # "fingerprint_index":I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 699
    :goto_3
    if-ge v12, v14, :cond_5

    .line 700
    add-int/lit8 v10, v12, 0x1

    .line 712
    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findFreeFingerprintIndex] cursor counts index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    move v11, v10

    .line 713
    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_1

    .line 693
    .end local v11    # "index":I
    .restart local v10    # "index":I
    :catch_0
    move-exception v7

    .line 694
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findFreeFingerprintIndex] exception! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 702
    :cond_5
    const/4 v9, 0x0

    :goto_5
    array-length v0, v13

    if-ge v9, v0, :cond_4

    .line 703
    aget v0, v13, v9

    if-nez v0, :cond_6

    .line 704
    add-int/lit8 v0, v9, 0x1

    aput v0, v13, v9

    .line 705
    aget v10, v13, v9

    .line 706
    goto :goto_4

    .line 702
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5
.end method

.method private getMsgStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 455
    const-string v0, "UNKNOWN"

    .line 457
    .local v0, "msgStr":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 551
    :goto_0
    return-object v0

    .line 459
    :sswitch_0
    const-string v0, "GETTED_GOOD_IMAGE"

    .line 460
    goto :goto_0

    .line 463
    :sswitch_1
    const-string v0, "EXTRACTING_FEATURE"

    .line 464
    goto :goto_0

    .line 467
    :sswitch_2
    const-string v0, "START_OPERATION"

    .line 468
    goto :goto_0

    .line 471
    :sswitch_3
    const-string v0, "END_OPERATION"

    .line 472
    goto :goto_0

    .line 475
    :sswitch_4
    const-string v0, "GETTED_BAD_IMAGE"

    .line 476
    goto :goto_0

    .line 479
    :sswitch_5
    const-string v0, "GETTED_IMAGE_FAIL"

    .line 480
    goto :goto_0

    .line 483
    :sswitch_6
    const-string v0, "GETTED_IMAGE_TOO_SHORT"

    .line 484
    goto :goto_0

    .line 487
    :sswitch_7
    const-string v0, "FP_RES_FINGER_DETECTED"

    .line 488
    goto :goto_0

    .line 491
    :sswitch_8
    const-string v0, "FP_RES_FINGER_REMOVED"

    .line 492
    goto :goto_0

    .line 495
    :sswitch_9
    const-string v0, "FP_RES_FINGER_WAIT_FPON"

    .line 496
    goto :goto_0

    .line 499
    :sswitch_a
    const-string v0, "FP_RES_REDUNDANT"

    .line 500
    goto :goto_0

    .line 503
    :sswitch_b
    const-string v0, "FP_RES_ENROLL_OVERTIME"

    .line 504
    goto :goto_0

    .line 507
    :sswitch_c
    const-string v0, "STATUS_IMAGE_BAD"

    .line 508
    goto :goto_0

    .line 511
    :sswitch_d
    const-string v0, "STATUS_FEATURE_LOW"

    .line 512
    goto :goto_0

    .line 515
    :sswitch_e
    const-string v0, "STATUS_SWIPE_TOO_SHORT"

    .line 516
    goto :goto_0

    .line 519
    :sswitch_f
    const-string v0, "DEV_STATE_CHANGE"

    .line 520
    goto :goto_0

    .line 523
    :sswitch_10
    const-string v0, "DEV_STATE_DISCONNECTED"

    .line 524
    goto :goto_0

    .line 527
    :sswitch_11
    const-string v0, "DEV_STATE_CONNECTING"

    .line 528
    goto :goto_0

    .line 531
    :sswitch_12
    const-string v0, "DEV_STATE_CONNECTED"

    .line 532
    goto :goto_0

    .line 535
    :sswitch_13
    const-string v0, "DEV_EXTRA_PERMISSION_GRANTED"

    .line 536
    goto :goto_0

    .line 539
    :sswitch_14
    const-string v0, "DEV_ACTION_USB_DEVICE_ATTACHED"

    .line 540
    goto :goto_0

    .line 543
    :sswitch_15
    const-string v0, "DEV_ACTION_USB_DEVICE_DEATTACHED"

    .line 544
    goto :goto_0

    .line 547
    :sswitch_16
    const-string v0, "DEV_STATE_NOT_FOUND"

    goto :goto_0

    .line 457
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d0 -> :sswitch_16
        0x5 -> :sswitch_c
        0x6 -> :sswitch_d
        0xe -> :sswitch_e
        0x3ef -> :sswitch_1
        0x3f0 -> :sswitch_0
        0x3f1 -> :sswitch_4
        0x3f7 -> :sswitch_6
        0x3fe -> :sswitch_5
        0x431 -> :sswitch_7
        0x432 -> :sswitch_8
        0x433 -> :sswitch_9
        0x446 -> :sswitch_a
        0x449 -> :sswitch_b
        0x7d0 -> :sswitch_f
        0x7d1 -> :sswitch_10
        0x7d2 -> :sswitch_11
        0x7d3 -> :sswitch_12
        0x7d4 -> :sswitch_13
        0x7d5 -> :sswitch_14
        0x7d6 -> :sswitch_15
        0xbb8 -> :sswitch_2
        0xbb9 -> :sswitch_3
    .end sparse-switch
.end method

.method private initAllListener()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->cleanListeners()V

    .line 778
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$9;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$9;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setVerifyListener(Legistec/fingerauth/api/FPAuthListeners$VerifyListener;)V

    .line 793
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setStatusListener(Legistec/fingerauth/api/FPAuthListeners$StatusListener;)V

    .line 842
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$11;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$11;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setEnrollListener(Legistec/fingerauth/api/FPAuthListeners$EnrollListener;)V

    .line 863
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$12;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$12;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setEnrollMapProgressListener(Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;)V

    .line 870
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "strs"    # Ljava/lang/String;

    .prologue
    .line 912
    const-string v0, "FingerprintEnrollFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "strs"    # Ljava/lang/String;

    .prologue
    .line 916
    const-string v0, "FingerprintEnrollFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "strs"    # Ljava/lang/String;

    .prologue
    .line 908
    const-string v0, "FingerprintEnrollFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "strs"    # Ljava/lang/String;

    .prologue
    .line 904
    const-string v0, "FingerprintEnrollFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 894
    :cond_0
    return-void
.end method

.method private showBadImageDLG()V
    .locals 5

    .prologue
    .line 367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090bae

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 370
    const v3, 0x7f090baf

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 371
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 388
    .local v1, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 389
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 390
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 391
    return-void
.end method

.method private showFPExistDlg()V
    .locals 5

    .prologue
    .line 744
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x1010355

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 746
    const v3, 0x7f090b93

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 747
    const v3, 0x7f090b94

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 748
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$7;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$7;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 757
    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$8;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$8;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 768
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 769
    .local v1, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 770
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 771
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 772
    return-void
.end method

.method private sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 395
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private unBindLib()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->abort()Z

    .line 641
    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->sleep(J)V

    .line 643
    const-string v0, "[unBindLib] 1"

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->disconnectDevice()Z

    .line 646
    const-string v0, "[unBindLib] 2"

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->cleanListeners()V

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->unbind()V

    .line 650
    :cond_0
    return-void
.end method

.method private vibrateShort()V
    .locals 4

    .prologue
    .line 897
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 898
    .local v0, "vb":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 899
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 901
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteFPByIndex()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->deleteFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "[deleteFPByIndex] lib delete success! So delete it in the databases now."

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerIndex:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->deleteFingerPrintByIndex(Landroid/content/Context;I)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v0, "[deleteFPByIndex] lib delete failed! This finger print still exists in the database!"

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 441
    .local v0, "t":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 442
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 443
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 419
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onActivityResult] requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 421
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    .line 422
    if-nez p2, :cond_1

    .line 423
    const-string v0, "[onActivityResult] pwd check failed. remove the pre-finger print."

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->deleteFPByIndex()V

    .line 432
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mNormal:Z

    .line 433
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->finish()V

    .line 435
    :cond_0
    return-void

    .line 426
    :cond_1
    const-string v0, "[onActivityResult] pwd check ok."

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 596
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090b71

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 600
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    .line 602
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 604
    new-instance v0, Legistec/fingerauth/api/SettingLib;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Legistec/fingerauth/api/SettingLib;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    .line 606
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_fingerprint_enroll_shield_home"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 591
    const v0, 0x7f060026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 654
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 656
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_for_fp"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_fingerprint_enroll_shield_home"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onDestroy] mNormal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mNormal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 660
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mNormal:Z

    if-nez v0, :cond_0

    .line 663
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;

    .line 664
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 630
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 632
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->releaseWakeLock()V

    .line 634
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->unBindLib()V

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgress:I

    .line 636
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 611
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 612
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->acquireWakeLock()V

    .line 614
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->bindAll()V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onResume] mAlreadyIdentify : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mAlreadyIdentify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02e0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;

    .line 557
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPIdentify:Landroid/widget/ImageView;

    .line 558
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02e1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;

    .line 559
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02e2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnContinue:Landroid/widget/Button;

    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnContinue:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02e3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnRename:Landroid/widget/Button;

    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnRename:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;

    .line 579
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 580
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 582
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02de

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;

    .line 584
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->findFreeFingerprintIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerIndex:I

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onViewCreated] mFingerIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V

    .line 586
    return-void
.end method
