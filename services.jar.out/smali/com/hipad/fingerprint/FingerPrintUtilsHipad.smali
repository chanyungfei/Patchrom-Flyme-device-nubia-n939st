.class public Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
.super Ljava/lang/Object;
.source "FingerPrintUtilsHipad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPVerifyListener;,
        Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final IMAGE_GETTED_DELAY:I = 0x64

.field private static final MSG_BAD_IMAGE:I = 0x0

.field private static final MSG_CAMERA_ATTEMPT_TO_USE:I = 0xb

.field private static final MSG_CAMERA_RELEASE:I = 0xc

.field private static final MSG_FINGER_FETCH:I = 0x3

.field private static final MSG_FINGER_IMAGE_GETTED:I = 0x4

.field private static final MSG_IMAGE_GETTED:I = 0xa

.field private static final MSG_SERVICE_CONNECTED:I = 0x1

.field private static final MSG_SERVICE_DISCONNECTED:I = 0x2

.field private static final MSG_STATUS:I = 0x6

.field private static final MSG_TIMEOUT:I = 0x9

.field private static final MSG_USER_ABORT:I = 0x5

.field private static final MSG_VERIFY_FAILED:I = 0x8

.field private static final MSG_VERIFY_SUCCESS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "FingerPrintUtilsHipad"

.field private static final TIMEOUT_DELAY:I = 0x3a98

.field private static mContext:Landroid/content/Context;

.field private static mLib:Legistec/fingerauth/api/SettingLib;

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private static mStatus:Z

.field private static sInstance:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;


# instance fields
.field private mFPReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHasCaptured:Z

.field private mIsConnectService:Z

.field private mIsConnectting:Z

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/hipad/fingerprint/FingerPrintListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStartCaptured:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStatus:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    .line 39
    iput-boolean v1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    .line 40
    iput-boolean v1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectting:Z

    .line 44
    iput-boolean v1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStartCaptured:Z

    .line 45
    iput-boolean v1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z

    .line 70
    new-instance v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$1;

    invoke-direct {v0, p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$1;-><init>(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)V

    iput-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    .line 171
    sput-object p1, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mContext:Landroid/content/Context;

    .line 172
    return-void
.end method

.method static synthetic access$002(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStartCaptured:Z

    return p1
.end method

.method static synthetic access$100(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z

    return v0
.end method

.method static synthetic access$102(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z

    return p1
.end method

.method static synthetic access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V
    .locals 0
    .param p0, "x0"    # Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    return p1
.end method

.method static synthetic access$602(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectting:Z

    return p1
.end method

.method static synthetic access$700()Legistec/fingerauth/api/SettingLib;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private bindService()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "[bindService]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    new-instance v1, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPVerifyListener;

    invoke-direct {v1, p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPVerifyListener;-><init>(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setVerifyListener(Legistec/fingerauth/api/FPAuthListeners$VerifyListener;)V

    .line 280
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    new-instance v1, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;

    invoke-direct {v1, p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;-><init>(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)V

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->setStatusListener(Legistec/fingerauth/api/FPAuthListeners$StatusListener;)V

    .line 281
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->bind()V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectting:Z

    .line 283
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->sInstance:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-direct {v0, p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->sInstance:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    .line 177
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 178
    new-instance v0, Legistec/fingerauth/api/SettingLib;

    invoke-direct {v0, p0}, Legistec/fingerauth/api/SettingLib;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    .line 180
    :cond_0
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->sInstance:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    return-object v0
.end method

.method private handleTimeout()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "[handleTimeout]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->close()V

    .line 344
    const/16 v0, 0x9

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V

    .line 345
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 427
    const-string v0, "FingerPrintUtilsHipad"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v0, "FingerPrintUtilsHipad"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v0, "FingerPrintUtilsHipad"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, "FingerPrintUtilsHipad"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method private notifyByMsg(II)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "status"    # I

    .prologue
    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[notifyByMsg] what : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 352
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 354
    packed-switch p1, :pswitch_data_0

    .line 404
    :pswitch_0
    :try_start_0
    const-string v3, "[notifyByMsg] not match any msg!"

    invoke-static {v3}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V

    .line 352
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3, p2}, Lcom/hipad/fingerprint/FingerPrintListener;->onBadImage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 407
    :catch_0
    move-exception v2

    .line 408
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[notifyByMsg] what : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", re : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 360
    .end local v2    # "re":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onServiceConnected()V

    goto :goto_1

    .line 364
    :pswitch_3
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onServiceDisConnected()V

    goto :goto_1

    .line 368
    :pswitch_4
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onFingerFetch()V

    goto :goto_1

    .line 372
    :pswitch_5
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onFingerImageGetted()V

    goto :goto_1

    .line 376
    :pswitch_6
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onUserAbort()V

    goto :goto_1

    .line 380
    :pswitch_7
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3, p2}, Lcom/hipad/fingerprint/FingerPrintListener;->onStatus(I)V

    goto :goto_1

    .line 384
    :pswitch_8
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onSuccess()V

    goto/16 :goto_1

    .line 388
    :pswitch_9
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onFail()V

    goto/16 :goto_1

    .line 392
    :pswitch_a
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onTimeout()V

    goto/16 :goto_1

    .line 396
    :pswitch_b
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onCameraAttemptToUse()V

    goto/16 :goto_1

    .line 400
    :pswitch_c
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/hipad/fingerprint/FingerPrintListener;

    invoke-interface {v3}, Lcom/hipad/fingerprint/FingerPrintListener;->onCameraRelease()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 412
    :cond_0
    iget-object v3, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 413
    return-void

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 271
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[unbindService] mIsConnectService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 257
    iget-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->abort()Z

    .line 259
    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->sleep(J)V

    .line 260
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->cleanListeners()V

    .line 261
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->disconnectDevice()Z

    .line 262
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->unbind()V

    .line 265
    :cond_0
    iput-boolean v2, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    .line 266
    iput-boolean v2, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectting:Z

    .line 267
    return-void
.end method


# virtual methods
.method public addListener(Lcom/hipad/fingerprint/FingerPrintListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hipad/fingerprint/FingerPrintListener;

    .prologue
    .line 330
    const-string v0, "[addListener]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 332
    return-void
.end method

.method public captureRawData()V
    .locals 4

    .prologue
    const/16 v1, 0x9

    .line 304
    const-string v0, "[captureRawData]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->isLockFingerprintEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const-string v0, "[captureRawData] finger print feature is close!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    if-nez v0, :cond_1

    .line 311
    const-string v0, "[captureRawData] service is not open yet!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStartCaptured:Z

    if-eqz v0, :cond_2

    .line 316
    const-string v0, "[captureRawData] has started!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStartCaptured:Z

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z

    .line 326
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->captureRawData()Z

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    const-string v0, "[close]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->isLockFingerprintEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const-string v0, "[open] finger print feature is close!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    if-nez v0, :cond_1

    .line 239
    const-string v0, "[close] service is already close!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    invoke-direct {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->unbindService()V

    .line 245
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->sleep(J)V

    .line 247
    const/16 v0, 0xc

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V

    .line 249
    sput-boolean v2, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStatus:Z

    .line 251
    iput-boolean v2, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStartCaptured:Z

    .line 252
    iput-boolean v2, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z

    goto :goto_0
.end method

.method public identify()V
    .locals 4

    .prologue
    const/16 v1, 0x9

    .line 286
    const-string v0, "[identify]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->isLockFingerprintEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "[identify] finger print feature is close!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    if-nez v0, :cond_1

    .line 293
    const-string v0, "[identify] service is not open yet!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    sget-object v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->identify()Z

    goto :goto_0
.end method

.method public isLockFingerprintEnabled()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public keyguardRelease()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "[keyguardRelease]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStatus:Z

    .line 198
    return-void
.end method

.method public open()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3a98

    const/16 v1, 0x9

    .line 201
    const-string v0, "[open]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->isLockFingerprintEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "[open] finger print feature is close!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectting:Z

    if-eqz v0, :cond_1

    .line 209
    const-string v0, "[open] service is already trying to open!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z

    if-eqz v0, :cond_2

    .line 216
    const-string v0, "[open] service is already open!"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[open] waiting for mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V

    .line 223
    const/16 v0, 0xb

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V

    .line 225
    :cond_3
    sget-boolean v0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStatus:Z

    if-eqz v0, :cond_3

    .line 226
    const-string v0, "[open] waiting finished"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->bindService()V

    goto :goto_0
.end method

.method public removeListener(Lcom/hipad/fingerprint/FingerPrintListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hipad/fingerprint/FingerPrintListener;

    .prologue
    .line 335
    const-string v0, "[removeListener]"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 337
    return-void
.end method

.method public test()V
    .locals 1

    .prologue
    .line 191
    const-string v0, "test now"

    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logi(Ljava/lang/String;)V

    .line 192
    return-void
.end method
