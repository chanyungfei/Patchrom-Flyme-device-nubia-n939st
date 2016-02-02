.class public Lcom/android/settings_ex/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CryptKeeper$ValidationTask;,
        Lcom/android/settings_ex/CryptKeeper$DecryptTask;,
        Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    .line 128
    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 130
    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 131
    const v0, 0x7f0908d5

    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    .line 141
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$1;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$2;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 324
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$3;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 712
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$6;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/CryptKeeper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setupUi()V

    return-void
.end method

.method private beginAttempt()V
    .locals 2

    .prologue
    .line 228
    const v1, 0x7f0f0021

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0908db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    return-void
.end method

.method private cooldown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 683
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_1

    .line 687
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 690
    :cond_1
    const v1, 0x7f0f0021

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 691
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 692
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 998
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 999
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 577
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 579
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 581
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 582
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 585
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f0f005a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 587
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 590
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateProgress()V

    .line 591
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V

    .line 709
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 864
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 865
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 866
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 868
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 991
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 987
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 234
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_0

    .line 235
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 236
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 237
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    if-nez v8, :cond_2

    .line 240
    iput-boolean v12, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    .line 243
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->cooldown()V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    const v8, 0x7f0f0021

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 247
    .local v5, "status":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int/lit8 v3, v8, 0x1e

    .line 248
    .local v3, "remainingAttempts":I
    const/16 v8, 0xa

    if-ge v3, v8, :cond_5

    .line 249
    const v8, 0x7f09022b

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 250
    .local v7, "warningTemplate":Ljava/lang/CharSequence;
    new-array v8, v12, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 252
    .local v6, "warning":Ljava/lang/CharSequence;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .end local v6    # "warning":Ljava/lang/CharSequence;
    .end local v7    # "warningTemplate":Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_3

    .line 272
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 273
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 277
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v8, :cond_4

    .line 278
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 279
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v8, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 282
    invoke-direct {p0, v12}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 284
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_1

    .line 285
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    .line 254
    :cond_5
    const/4 v2, 0x0

    .line 256
    .local v2, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 257
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 262
    .end local v4    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v8, 0x3

    if-ne v2, v8, :cond_6

    .line 263
    const v8, 0x7f0908da

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error calling mount service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v8, 0x2

    if-ne v2, v8, :cond_7

    .line 265
    const v8, 0x7f0908d8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 267
    :cond_7
    const v8, 0x7f0908d9

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 824
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 827
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 829
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 831
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 857
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 832
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 835
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 836
    add-int/lit8 v2, v2, 0x1

    .line 837
    goto :goto_0

    .line 840
    :cond_2
    const/4 v0, 0x0

    .line 841
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 842
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 843
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 846
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 851
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 852
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 853
    goto :goto_0

    .line 857
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 979
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 982
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 983
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 984
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 368
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_2

    .line 369
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 383
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 386
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_3

    .line 388
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 393
    :cond_1
    :goto_1
    return-void

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 742
    const v4, 0x7f0f0057

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 743
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 744
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 745
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 747
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 748
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 749
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 753
    :cond_0
    const v4, 0x7f0f0046

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView;

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 754
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v4, :cond_1

    .line 755
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 759
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 760
    const v4, 0x7f0f0056

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 761
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 762
    const-string v4, "CryptKeeper"

    const-string v5, "Removing the emergency Call button"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 767
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_2
    const v4, 0x7f0f0058

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 768
    .local v1, "imeSwitcher":Landroid/view/View;
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 770
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-direct {p0, v2, v6}, Lcom/android/settings_ex/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 771
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 772
    new-instance v4, Lcom/android/settings_ex/CryptKeeper$7;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/CryptKeeper$7;-><init>(Lcom/android/settings_ex/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_4

    .line 784
    const-string v4, "CryptKeeper"

    const-string v5, "Acquiring wakelock."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 786
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_4

    .line 787
    const/16 v4, 0x1a

    const-string v5, "CryptKeeper"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 788
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 791
    const/16 v4, 0x60

    iput v4, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 797
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    if-nez v4, :cond_5

    .line 798
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings_ex/CryptKeeper$8;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/CryptKeeper$8;-><init>(Lcom/android/settings_ex/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 805
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 807
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 808
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 811
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 813
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 917
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 919
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 920
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 922
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 924
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 926
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 917
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 699
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    .line 700
    if-eqz p1, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 705
    :goto_1
    return-void

    .line 699
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f04002f

    .line 469
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 471
    iget-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mCorrupt:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(Z)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "progress":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 477
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 478
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 479
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 480
    :cond_5
    new-instance v1, Lcom/android/settings_ex/CryptKeeper$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/CryptKeeper$4;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/CryptKeeper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 532
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 534
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 535
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset(Z)V
    .locals 7
    .param p1, "corrupt"    # Z

    .prologue
    const v6, 0x7f0f0021

    const v5, 0x7f0f0005

    const/4 v4, 0x0

    .line 601
    const v2, 0x7f0f005b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 604
    const v2, 0x7f0f005c

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 605
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 606
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/CryptKeeper$5;-><init>(Lcom/android/settings_ex/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    if-eqz p1, :cond_1

    .line 620
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09022f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 621
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090230

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 627
    :goto_0
    const v2, 0x7f0f005d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 629
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :cond_0
    return-void

    .line 623
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09022d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 624
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09022e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 970
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 3

    .prologue
    .line 935
    const v2, 0x7f0f0056

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 937
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 940
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 942
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$9;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/CryptKeeper$9;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 957
    const v1, 0x7f09096f

    .line 961
    .local v1, "textId":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 950
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 959
    :cond_2
    const v1, 0x7f09096e

    .restart local v1    # "textId":I
    goto :goto_1
.end method

.method private updateProgress()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 635
    const-string v8, "vold.encrypt_progress"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "state":Ljava/lang/String;
    const-string v8, "error_partially_encrypted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 638
    invoke-direct {p0, v11}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(Z)V

    .line 676
    :goto_0
    return-void

    .line 643
    :cond_0
    const v8, 0x7f090228

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 644
    .local v4, "status":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 647
    .local v1, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    const/16 v1, 0x32

    .line 651
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "progress":Ljava/lang/String;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encryption progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :try_start_1
    const-string v8, "vold.encrypt_time_remaining"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, "timeProperty":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 658
    .local v5, "time":I
    if-ltz v5, :cond_1

    .line 660
    add-int/lit8 v8, v5, 0x9

    div-int/lit8 v8, v8, 0xa

    mul-int/lit8 v5, v8, 0xa

    .line 661
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 662
    const v8, 0x7f090229

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 668
    .end local v5    # "time":I
    .end local v6    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_2
    const v8, 0x7f0f0021

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 669
    .local v7, "tv":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 670
    new-array v8, v12, [Ljava/lang/CharSequence;

    aput-object v2, v8, v11

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 647
    .end local v2    # "progress":Ljava/lang/String;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 664
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "progress":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1025
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1015
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 412
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isDebugView()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "trigger_restart_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 416
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->finish()V

    .line 451
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 432
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_3
    :goto_1
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 440
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v6, 0x3370000

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 442
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 443
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 445
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 446
    .local v0, "lastInstance":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 447
    check-cast v3, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    .line 448
    .local v3, "retained":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    iget-object v5, v3, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 449
    const-string v5, "CryptKeeper"

    const-string v6, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    .end local v0    # "lastInstance":Ljava/lang/Object;
    .end local v3    # "retained":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 561
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 563
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 564
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 568
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 873
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 875
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 898
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 882
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 887
    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 889
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    .line 890
    new-instance v3, Lcom/android/settings_ex/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v1, v2

    .line 896
    goto :goto_0

    .line 893
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1004
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 553
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 554
    .local v0, "state":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 556
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 460
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 461
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setupUi()V

    .line 462
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 542
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1021
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1010
    const/4 v0, 0x0

    return v0
.end method