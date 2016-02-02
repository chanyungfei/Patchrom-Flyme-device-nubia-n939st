.class public Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
.super Landroid/preference/PreferenceActivity;
.source "FingerPrintSettings.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerPrintSettings$FPListAdapter;,
        Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;
    }
.end annotation


# instance fields
.field private FINGERPRINT_NAME_TMP:Ljava/lang/String;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

.field private mDeleteTrigger:Z

.field private mFPMgrDlg:Landroid/app/AlertDialog;

.field private mFPRenameDlg:Landroid/app/AlertDialog;

.field private mFingerPrintKeyArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerPrintNameArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintNew:Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

.field private mForFirstCheck:Z

.field private mHMFPKeyName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInterruptHandler:Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreferenceCategoryFunction:Landroid/preference/PreferenceCategory;

.field private mPreferenceCategoryList:Landroid/preference/PreferenceCategory;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReCalibration:Landroid/preference/Preference;

.field private mUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

.field private mUnlockStartAppPreference:Landroid/preference/Preference;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 121
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mWaitingForConfirmation:Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mForFirstCheck:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mDeleteTrigger:Z

    .line 135
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;

    .line 1046
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showProgressing(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->dismissProgressing()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showFPShowAllAppActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showFPRenameDlg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->deleteFPByKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showErrorInfo(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->FINGERPRINT_NAME_TMP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->isExistName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->renameByKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->doInterrupt(Z)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mDeleteTrigger:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->refreshUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mInterruptHandler:Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHMFPKeyName:Ljava/util/HashMap;

    return-object v0
.end method

.method private callEnrollFragment()V
    .locals 3

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->reachMaxLimit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    const v1, 0x7f090b97

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1038
    :goto_0
    return-void

    .line 1035
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1036
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/Settings$FingerPrintEnrollActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1037
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private checkPwd()V
    .locals 4

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mWaitingForConfirmation:Z

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "[checkPwd] checking has already started, just return!"

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 552
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->isPasswordQualityNone(Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    const-string v0, "[checkPwd] pwd enabled "

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mWaitingForConfirmation:Z

    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v1, 0x3e8

    const-string v2, "Fingerprint"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 550
    :cond_1
    const-string v0, "[checkPwd] pwd disabled "

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteEnrolledFP(Ljava/lang/String;I)V
    .locals 2
    .param p1, "fpName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 317
    new-instance v0, Legistec/fingerauth/api/SettingLib;

    invoke-direct {v0, p0}, Legistec/fingerauth/api/SettingLib;-><init>(Landroid/content/Context;)V

    .line 318
    .local v0, "lib":Legistec/fingerauth/api/SettingLib;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Legistec/fingerauth/api/SettingLib;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setStatusListener(Legistec/fingerauth/api/FPAuthListeners$StatusListener;)V

    .line 362
    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->bind()V

    .line 363
    return-void
.end method

.method private deleteFPByKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getIndexByKey(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteFPByKey] index  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 308
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteFPByKey] error when getting index from key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->loge(Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->deleteEnrolledFP(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private dismissProgressing()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 492
    :cond_0
    return-void
.end method

.method private doInterrupt(Z)V
    .locals 2
    .param p1, "redo"    # Z

    .prologue
    .line 504
    new-instance v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;-><init>(Landroid/content/Context;)V

    .line 505
    .local v0, "autoInterrpt":Lcom/android/settings_ex/fingerprint/AutoInterrpt;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Z)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->setGetTHDCValueListener(Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;)V

    .line 536
    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->GetAutoTHDCValue()V

    .line 537
    return-void
.end method

.method private getIndexByKey(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v0, -0x1

    .line 298
    .local v0, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 301
    return v0
.end method

.method private initAllPreferences()V
    .locals 1

    .prologue
    .line 616
    const-string v0, "fingerprint_unlock_keyguard"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    .line 617
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setSwitchChange(Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;)V

    .line 622
    const-string v0, "fingerprint_application"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryFunction:Landroid/preference/PreferenceCategory;

    .line 623
    const-string v0, "fingerprint_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryList:Landroid/preference/PreferenceCategory;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerPrintKeyArray:Ljava/util/ArrayList;

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerPrintNameArray:Ljava/util/ArrayList;

    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHMFPKeyName:Ljava/util/HashMap;

    .line 629
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->initNewFingerPrint()V

    .line 630
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->initColdUnlockFingerPrint()V

    .line 631
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->initUnlockStartAppPreference()V

    .line 633
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->initReCalibration()V

    .line 634
    return-void
.end method

.method private initColdUnlockFingerPrint()V
    .locals 2

    .prologue
    .line 747
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    .line 748
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const v1, 0x7f090b75

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const v1, 0x7f090b76

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const-string v1, "fingerprint_cold_unlock_keyguard"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const v1, 0x7f040061

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setLayoutResource(I)V

    .line 752
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setOrder(I)V

    .line 753
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setSwitchChange(Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;)V

    .line 754
    return-void
.end method

.method private initNewFingerPrint()V
    .locals 2

    .prologue
    .line 739
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerPrintPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerprintNew:Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    .line 740
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerprintNew:Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    const v1, 0x7f090b7a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerprintNew:Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    const-string v1, "fingerprint_new"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintPreference;->setKey(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerprintNew:Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    const v1, 0x1080033

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintPreference;->setIcon(I)V

    .line 743
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerprintNew:Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintPreference;->setOrder(I)V

    .line 744
    return-void
.end method

.method private initReCalibration()V
    .locals 2

    .prologue
    .line 767
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mReCalibration:Landroid/preference/Preference;

    .line 768
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mReCalibration:Landroid/preference/Preference;

    const v1, 0x7f090b7b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mReCalibration:Landroid/preference/Preference;

    const-string v1, "re_calibration"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mReCalibration:Landroid/preference/Preference;

    const v1, 0x1080033

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 771
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mReCalibration:Landroid/preference/Preference;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 772
    return-void
.end method

.method private initUnlockStartAppPreference()V
    .locals 2

    .prologue
    .line 757
    new-instance v0, Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockStartAppPreference:Landroid/preference/Preference;

    .line 758
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockStartAppPreference:Landroid/preference/Preference;

    const v1, 0x7f090ba7

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockStartAppPreference:Landroid/preference/Preference;

    const-string v1, "fingerprint_unlock_start_app"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockStartAppPreference:Landroid/preference/Preference;

    const v1, 0x7f040059

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 761
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockStartAppPreference:Landroid/preference/Preference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 763
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryFunction:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockStartAppPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 764
    return-void
.end method

.method private isColdUnlockEnable()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintColdUnlockEnable()Z

    move-result v0

    return v0
.end method

.method private isExistName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 650
    const/4 v0, 0x0

    .line 652
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "trimName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerPrintNameArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    const/4 v0, 0x1

    .line 657
    :cond_0
    return v0
.end method

.method private isInterruptDone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 495
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "interrrupt_key"

    invoke-static {v2, v3, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->getIntDataByKey(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 498
    .local v0, "status":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isInterruptDone] status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 500
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPwdSet()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 555
    const/4 v8, 0x0

    .line 556
    .local v8, "set":Z
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->isPasswordQualityNone(Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "[isPwdSet] no any pwd yet."

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 559
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v2, "extras":Landroid/os/Bundle;
    const-string v0, "set_for_fp"

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 562
    const-string v1, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v4, 0x7f090232

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 565
    .local v7, "intent":Landroid/content/Intent;
    const/16 v0, 0x3e9

    invoke-virtual {p0, v7, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 566
    iput-boolean v9, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mWaitingForConfirmation:Z

    .line 568
    const/4 v8, 0x0

    .line 574
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return v8

    .line 571
    :cond_0
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "strs"    # Ljava/lang/String;

    .prologue
    .line 1106
    const-string v0, "VIM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "strs"    # Ljava/lang/String;

    .prologue
    .line 1114
    const-string v0, "VIM"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "strs"    # Ljava/lang/String;

    .prologue
    .line 1102
    const-string v0, "VIM"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "strs"    # Ljava/lang/String;

    .prologue
    .line 1110
    const-string v0, "VIM"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void
.end method

.method private processDeleteFP()V
    .locals 2

    .prologue
    .line 366
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->getFingerCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    .line 369
    :cond_0
    return-void
.end method

.method private reachMaxLimit()Z
    .locals 2

    .prologue
    .line 775
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->getFingerCount(Landroid/content/Context;)I

    move-result v0

    .line 776
    .local v0, "fingerCount":I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshUI()V
    .locals 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mWaitingForConfirmation:Z

    if-nez v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->removeAllPreference()V

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryList:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mReCalibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 379
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryList:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerprintNew:Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->updateFingerPrintList()V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[refreshUI] mDeleteTrigger : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mDeleteTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 384
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mDeleteTrigger:Z

    if-nez v0, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->updateUnlockKeyguard()V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->processDeleteFP()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mDeleteTrigger:Z

    goto :goto_0
.end method

.method private removeAllPreference()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->getCurrentStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryFunction:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 641
    const-string v0, "removeAllPreference removePreference mColdUnlockKeyguard"

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerPrintKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 645
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerPrintNameArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 646
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHMFPKeyName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 647
    return-void
.end method

.method private removeCalibration()V
    .locals 2

    .prologue
    .line 410
    new-instance v0, Legistec/fingerauth/api/SettingLib;

    invoke-direct {v0, p0}, Legistec/fingerauth/api/SettingLib;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, "lib":Legistec/fingerauth/api/SettingLib;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Legistec/fingerauth/api/SettingLib;)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setStatusListener(Legistec/fingerauth/api/FPAuthListeners$StatusListener;)V

    .line 470
    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->bind()V

    .line 471
    return-void
.end method

.method private renameByIndex(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "fpName"    # Ljava/lang/String;

    .prologue
    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[renameByKey] index  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fpName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 875
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 876
    const-string v1, "[renameByKey] error index!"

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->loge(Ljava/lang/String;)V

    .line 886
    :goto_0
    return-void

    .line 880
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 881
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "fp_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v1, "fp_rename"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 884
    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->updateFingerPrintByIndex(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 885
    const v1, 0x7f090b8a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private renameByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fpName"    # Ljava/lang/String;

    .prologue
    .line 889
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getIndexByKey(Ljava/lang/String;)I

    move-result v0

    .line 890
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[renameByKey] index  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 892
    invoke-direct {p0, v0, p2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->renameByIndex(ILjava/lang/String;)V

    .line 893
    return-void
.end method

.method private showErrorInfo(II)V
    .locals 3
    .param p1, "titleId"    # I
    .param p2, "msgId"    # I

    .prologue
    .line 896
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$8;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 907
    return-void
.end method

.method private showFPMangeDlg(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isAssociatedApp"    # Z

    .prologue
    .line 813
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 814
    const-string v5, "[showFPMangeDlg] finger print manage dlg has been showed."

    invoke-static {v5}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 870
    :goto_0
    return-void

    .line 818
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[showFPMangeDlg] key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 820
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 822
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "actions":[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 824
    const/4 v5, 0x0

    const v6, 0x7f090bab

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 827
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 828
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f0f00d5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 829
    .local v2, "list":Landroid/widget/ListView;
    new-instance v5, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$FPListAdapter;

    invoke-direct {v5, p0, p0, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$FPListAdapter;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 830
    new-instance v5, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;

    invoke-direct {v5, p0, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 859
    new-instance v5, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$7;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 865
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 866
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;

    .line 867
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 868
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 869
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showFPRenameDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fpName"    # Ljava/lang/String;

    .prologue
    .line 916
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 917
    const-string v3, "[showFPRenameDlg] finger print rename dlg has been showed."

    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 978
    :goto_0
    return-void

    .line 920
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->FINGERPRINT_NAME_TMP:Ljava/lang/String;

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[showFPRenameDlg] key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 923
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 925
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 926
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 927
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 929
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$9;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$9;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 960
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$10;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$10;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 967
    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$11;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$11;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 973
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 974
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;

    .line 975
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 976
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 977
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showFPShowAllAppActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "FpName"    # Ljava/lang/String;

    .prologue
    .line 910
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 911
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fingerprintName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->startActivity(Landroid/content/Intent;)V

    .line 913
    return-void
.end method

.method private showProgressing(Z)V
    .locals 4
    .param p1, "redo"    # Z

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 475
    const-string v1, "[showProgressing] already showing..."

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 479
    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7f090ba2

    .line 481
    .local v0, "strId":I
    :goto_1
    const v1, 0x7f090ba0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 479
    .end local v0    # "strId":I
    :cond_1
    const v0, 0x7f090ba1

    goto :goto_1
.end method

.method private startApplication()V
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1042
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->startActivity(Landroid/content/Intent;)V

    .line 1044
    return-void
.end method

.method private updateColdUnlockKeyguard()V
    .locals 3

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->isColdUnlockEnable()Z

    move-result v0

    .line 730
    .local v0, "open":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateColdUnlockKeyguard] open : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 731
    if-eqz v0, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    goto :goto_0
.end method

.method private updateFingerPrintList()V
    .locals 20

    .prologue
    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings_ex/fingerprint/FingerPrintDatabaseHelper;->FINGER_PRINT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 665
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 666
    const-string v2, "[updateFingerPrintList] cursor is null! just return"

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 706
    :goto_0
    return-void

    .line 670
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateFingerPrintList] cursor counts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 671
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 672
    const-string v2, "[updateFingerPrintList] cursor has no any data! just return"

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 673
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 677
    :cond_1
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v16, v15

    .line 680
    .end local v15    # "i":I
    .local v16, "i":I
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 681
    new-instance v14, Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintPreference;-><init>(Landroid/content/Context;)V

    .line 682
    .local v14, "fingerPrintPre":Landroid/preference/Preference;
    const-string v2, "fp_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 683
    .local v18, "name":Ljava/lang/String;
    const-string v2, "fp_associated_package_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 684
    .local v19, "pkgName":Ljava/lang/String;
    const-string v2, "fp_associated_activity_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 685
    .local v11, "clsName":Ljava/lang/String;
    const-string v2, "fp_associated_status"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 686
    .local v9, "associatedAppState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "associatedSwitchState"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 687
    .local v10, "associatedState":I
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 688
    const/4 v2, 0x1

    if-ne v9, v2, :cond_2

    const/4 v2, 0x1

    if-ne v10, v2, :cond_2

    if-eqz v19, :cond_2

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0, v11}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->getAppLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 690
    .local v8, "appLabel":Ljava/lang/String;
    invoke-virtual {v14, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 692
    .end local v8    # "appLabel":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerPrintNameArray:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprint_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fp_index"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 694
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerPrintKeyArray:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHMFPKeyName:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v14}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, v15

    .line 700
    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto/16 :goto_1

    .line 704
    .end local v9    # "associatedAppState":I
    .end local v10    # "associatedState":I
    .end local v11    # "clsName":Ljava/lang/String;
    .end local v14    # "fingerPrintPre":Landroid/preference/Preference;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "pkgName":Ljava/lang/String;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move/from16 v15, v16

    .line 705
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_0

    .line 701
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :catch_0
    move-exception v13

    move/from16 v15, v16

    .line 702
    .end local v16    # "i":I
    .local v13, "ex":Ljava/lang/Exception;
    .restart local v15    # "i":I
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateFingerPrintList] exception! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 704
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v13    # "ex":Ljava/lang/Exception;
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :catchall_0
    move-exception v2

    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_3

    .line 701
    .restart local v9    # "associatedAppState":I
    .restart local v10    # "associatedState":I
    .restart local v11    # "clsName":Ljava/lang/String;
    .restart local v14    # "fingerPrintPre":Landroid/preference/Preference;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method private updateUnlockKeyguard()V
    .locals 3

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    .line 711
    .local v0, "open":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUnlockKeyguard] open : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 712
    if-eqz v0, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryFunction:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 714
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->updateColdUnlockKeyguard()V

    .line 716
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    .line 725
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    .line 720
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->deleteLockFingerprint()V

    .line 721
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->disableFingerprintColdUnlock()V

    .line 723
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryFunction:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 579
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onActivityResult] requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 581
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_2

    .line 582
    iput-boolean v4, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mWaitingForConfirmation:Z

    .line 583
    if-nez p2, :cond_1

    .line 584
    const-string v2, "[onActivityResult] [CHECK_PWD] pwd check failed. remove the pre-finger print."

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->finish()V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const-string v2, "[onActivityResult] [CHECK_PWD] pwd check ok."

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_2
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_4

    .line 590
    iput-boolean v4, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mWaitingForConfirmation:Z

    .line 591
    if-nez p2, :cond_3

    .line 592
    const-string v2, "[onActivityResult] [START_TO_SET_PWD] pwd set cancel."

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    goto :goto_0

    .line 595
    :cond_3
    const-string v2, "[onActivityResult] [START_TO_SET_PWD] pwd set finished."

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 596
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 597
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    goto :goto_0

    .line 599
    :cond_4
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onActivityResult] ENROLL_RESULT data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 602
    if-eqz p3, :cond_0

    .line 603
    const-string v2, "enroll_result_index"

    const/4 v3, -0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 604
    .local v1, "index":I
    const-string v2, "enroll_result_name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "fpName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprint_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showFPRenameDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->addPreferencesFromResource(I)V

    .line 189
    const v2, 0x7f090b71

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->setTitle(I)V

    .line 191
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->initAllPreferences()V

    .line 192
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 193
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 195
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "interrupt_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;-><init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mInterruptHandler:Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;

    .line 199
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->checkPwd()V

    .line 201
    const-string v2, "[onCreate]"

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logi(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 204
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 205
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mInterruptHandler:Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;->sendEmptyMessage(I)Z

    .line 293
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 215
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->onBackPressed()V

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 612
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 613
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "paramPreferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "paramPreference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 781
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPreferenceTreeClick] key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 784
    instance-of v2, p2, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 785
    check-cast v2, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    move-object v3, p2

    check-cast v3, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->getCurrentStatus()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    .line 786
    const-string v2, "fingerprint_unlock_keyguard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 787
    check-cast v2, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->getCurrentStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->setCurrentStatus(Z)V

    .line 789
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->enableFingerprintColdUnlock()V

    .line 809
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 785
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 793
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerprintNew:Lcom/android/settings_ex/fingerprint/FingerPrintPreference;

    if-ne p2, v2, :cond_3

    .line 794
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->callEnrollFragment()V

    goto :goto_1

    .line 795
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mReCalibration:Landroid/preference/Preference;

    if-ne p2, v2, :cond_4

    .line 796
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->removeCalibration()V

    goto :goto_1

    .line 797
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFingerPrintKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 798
    const-string v2, "[onPreferenceTreeClick] key in the array!"

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "isAssociatedApp":Z
    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 801
    const/4 v0, 0x1

    .line 803
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showFPMangeDlg(Ljava/lang/String;Z)V

    goto :goto_1

    .line 804
    .end local v0    # "isAssociatedApp":Z
    :cond_6
    const-string v2, "fingerprint_unlock_start_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    const-string v2, "KEY_FINGERPRINT_UNLOCK_START_APP"

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 806
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->startApplication()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 398
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->isInterruptDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 400
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 402
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mInterruptHandler:Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$InterruptHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 406
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->refreshUI()V

    .line 407
    return-void
.end method

.method public onSwitchChange(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSwitchChange] key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 984
    const-string v0, "fingerprint_unlock_keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryFunction:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 987
    if-eqz p2, :cond_3

    .line 988
    invoke-static {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->getFingerCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 989
    const-string v0, "[onSwitchChange] no any data of finger print! Try to enroll one"

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 990
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->callEnrollFragment()V

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->isPwdSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mPreferenceCategoryFunction:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mColdUnlockKeyguard:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteLockFingerprint()V

    .line 1003
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->disableFingerprintColdUnlock()V

    goto :goto_0

    .line 1005
    :cond_4
    const-string v0, "fingerprint_cold_unlock_keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    if-eqz p2, :cond_5

    .line 1007
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->enableFingerprintColdUnlock()V

    goto :goto_0

    .line 1009
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->disableFingerprintColdUnlock()V

    goto :goto_0
.end method

.method public onSwitchClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchChange] key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V

    .line 1017
    const-string v1, "fingerprint_unlock_keyguard"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    .line 1019
    .local v0, "open":Z
    if-eqz v0, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->enableFingerprintColdUnlock()V

    .line 1021
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->updateColdUnlockKeyguard()V

    .line 1024
    .end local v0    # "open":Z
    :cond_0
    return-void
.end method
