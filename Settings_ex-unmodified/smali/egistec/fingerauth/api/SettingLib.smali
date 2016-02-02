.class public Legistec/fingerauth/api/SettingLib;
.super Ljava/lang/Object;
.source "SettingLib.java"


# instance fields
.field protected enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

.field protected getRawDataListener:Legistec/fingerauth/api/FPAuthListeners$GetRawDataListener;

.field protected mContext:Landroid/content/Context;

.field private mDelay:I

.field protected mEnrollMapProgressListener:Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;

.field protected mFPAuthConnection:Landroid/content/ServiceConnection;

.field protected mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

.field protected mFPAuthServiceCallback:Legistec/fingerauth/api/IFPAuthServiceCallback;

.field private final mHandler:Landroid/os/Handler;

.field protected mLearningListener:Legistec/fingerauth/api/FPAuthListeners$VerifyLearningListener;

.field protected mMatchedImageListener:Legistec/fingerauth/api/FPAuthListeners$MatchedImageListener;

.field protected mThreadImageListener:Legistec/fingerauth/api/FPAuthListeners$ThreadImageListener;

.field protected mTinyEnrollListener:Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;

.field protected pluginDeviceListener:Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;

.field protected statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

.field private timer:Ljava/util/Timer;

.field protected verifyListener:Legistec/fingerauth/api/FPAuthListeners$VerifyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Legistec/fingerauth/api/SettingLib;->mDelay:I

    .line 208
    new-instance v0, Legistec/fingerauth/api/SettingLib$1;

    invoke-direct {v0, p0}, Legistec/fingerauth/api/SettingLib$1;-><init>(Legistec/fingerauth/api/SettingLib;)V

    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthConnection:Landroid/content/ServiceConnection;

    .line 231
    new-instance v0, Legistec/fingerauth/api/SettingLib$2;

    invoke-direct {v0, p0}, Legistec/fingerauth/api/SettingLib$2;-><init>(Legistec/fingerauth/api/SettingLib;)V

    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthServiceCallback:Legistec/fingerauth/api/IFPAuthServiceCallback;

    .line 595
    new-instance v0, Legistec/fingerauth/api/SettingLib$3;

    invoke-direct {v0, p0}, Legistec/fingerauth/api/SettingLib$3;-><init>(Legistec/fingerauth/api/SettingLib;)V

    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->mHandler:Landroid/os/Handler;

    .line 205
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib;->mContext:Landroid/content/Context;

    .line 206
    return-void
.end method

.method static synthetic access$0(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnServiceConnect()V

    return-void
.end method

.method static synthetic access$1(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 882
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnServiceDisConnect()V

    return-void
.end method

.method static synthetic access$10(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 886
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnPermissionGranted()V

    return-void
.end method

.method static synthetic access$11(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnDevicePlug()V

    return-void
.end method

.method static synthetic access$12(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 894
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnDeviceUnPlug()V

    return-void
.end method

.method static synthetic access$13(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnProgress()V

    return-void
.end method

.method static synthetic access$14(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 920
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnEnrollSuccess()V

    return-void
.end method

.method static synthetic access$15(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnEnrollFail()V

    return-void
.end method

.method static synthetic access$16(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnUserAbort()V

    return-void
.end method

.method static synthetic access$17(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnFingerFetch()V

    return-void
.end method

.method static synthetic access$18(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnFingerImageGetted()V

    return-void
.end method

.method static synthetic access$19(Legistec/fingerauth/api/SettingLib;I)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0, p1}, Legistec/fingerauth/api/SettingLib;->notifyOnBadImage(I)V

    return-void
.end method

.method static synthetic access$2(Legistec/fingerauth/api/SettingLib;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Legistec/fingerauth/api/SettingLib;[BII)V
    .locals 0

    .prologue
    .line 906
    invoke-direct {p0, p1, p2, p3}, Legistec/fingerauth/api/SettingLib;->notifyOnGetRawData([BII)V

    return-void
.end method

.method static synthetic access$21(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnVerifySuccess()V

    return-void
.end method

.method static synthetic access$22(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 932
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnVerifyFail()V

    return-void
.end method

.method static synthetic access$23(Legistec/fingerauth/api/SettingLib;[BII)V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0, p1, p2, p3}, Legistec/fingerauth/api/SettingLib;->notifyOnVerifyImg([BII)V

    return-void
.end method

.method static synthetic access$24(Legistec/fingerauth/api/SettingLib;I)V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0, p1}, Legistec/fingerauth/api/SettingLib;->notifyOnLearningScore(I)V

    return-void
.end method

.method static synthetic access$25(Legistec/fingerauth/api/SettingLib;I)V
    .locals 0

    .prologue
    .line 952
    invoke-direct {p0, p1}, Legistec/fingerauth/api/SettingLib;->notifyEnrollMapProgress(I)V

    return-void
.end method

.method static synthetic access$26(Legistec/fingerauth/api/SettingLib;[BII)V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0, p1, p2, p3}, Legistec/fingerauth/api/SettingLib;->notifyOnMatchedImg([BII)V

    return-void
.end method

.method static synthetic access$3(Legistec/fingerauth/api/SettingLib;)I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Legistec/fingerauth/api/SettingLib;->mDelay:I

    return v0
.end method

.method static synthetic access$4(Legistec/fingerauth/api/SettingLib;I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Legistec/fingerauth/api/SettingLib;->mDelay:I

    return-void
.end method

.method static synthetic access$5(Legistec/fingerauth/api/SettingLib;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$6(Legistec/fingerauth/api/SettingLib;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$7(Legistec/fingerauth/api/SettingLib;I)V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0, p1}, Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V

    return-void
.end method

.method static synthetic access$8(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Legistec/fingerauth/api/SettingLib;->notifyOnEnrollMap()V

    return-void
.end method

.method static synthetic access$9(Legistec/fingerauth/api/SettingLib;I)V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0, p1}, Legistec/fingerauth/api/SettingLib;->notifyOnStatusCandidate(I)V

    return-void
.end method

.method private notifyEnrollMapProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 953
    const-string v0, "SettingLib"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyEnrollMapProgress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mEnrollMapProgressListener:Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mEnrollMapProgressListener:Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;

    invoke-interface {v0, p1}, Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;->onEnrollMapProgress(I)V

    .line 956
    :cond_0
    return-void
.end method

.method private notifyOnBadImage(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 875
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    invoke-interface {v0, p1}, Legistec/fingerauth/api/FPAuthListeners$StatusListener;->onBadImage(I)V

    .line 877
    :cond_0
    return-void
.end method

.method private notifyOnDevicePlug()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->pluginDeviceListener:Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->pluginDeviceListener:Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;->onDevicePlug()V

    .line 893
    :cond_0
    return-void
.end method

.method private notifyOnDeviceUnPlug()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->pluginDeviceListener:Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->pluginDeviceListener:Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;->onDeviceUnPlug()V

    .line 897
    :cond_0
    return-void
.end method

.method private notifyOnEnrollFail()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$EnrollListener;->onFail()V

    .line 927
    :cond_0
    return-void
.end method

.method private notifyOnEnrollMap()V
    .locals 4

    .prologue
    .line 852
    iget-object v1, p0, Legistec/fingerauth/api/SettingLib;->mTinyEnrollListener:Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;

    if-eqz v1, :cond_0

    .line 854
    :try_start_0
    iget-object v1, p0, Legistec/fingerauth/api/SettingLib;->mTinyEnrollListener:Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;

    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->getTinyMapInfo()[I

    move-result-object v2

    iget-object v3, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v3}, Legistec/fingerauth/api/IFPAuthService;->getTinyMap()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;->onEnrollMap([I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyOnEnrollSuccess()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$EnrollListener;->onSuccess()V

    .line 923
    :cond_0
    return-void
.end method

.method private notifyOnFingerFetch()V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$StatusListener;->onFingerFetch()V

    .line 901
    :cond_0
    return-void
.end method

.method private notifyOnFingerImageGetted()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$StatusListener;->onFingerImageGetted()V

    .line 905
    :cond_0
    return-void
.end method

.method private notifyOnGetRawData([BII)V
    .locals 1
    .param p1, "rawData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 907
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->getRawDataListener:Legistec/fingerauth/api/FPAuthListeners$GetRawDataListener;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->getRawDataListener:Legistec/fingerauth/api/FPAuthListeners$GetRawDataListener;

    invoke-interface {v0, p1, p2, p3}, Legistec/fingerauth/api/FPAuthListeners$GetRawDataListener;->onGetRawData([BII)V

    .line 909
    :cond_0
    return-void
.end method

.method private notifyOnLearningScore(I)V
    .locals 1
    .param p1, "score"    # I

    .prologue
    .line 949
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mLearningListener:Legistec/fingerauth/api/FPAuthListeners$VerifyLearningListener;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mLearningListener:Legistec/fingerauth/api/FPAuthListeners$VerifyLearningListener;

    invoke-interface {v0, p1}, Legistec/fingerauth/api/FPAuthListeners$VerifyLearningListener;->LearningScore(I)V

    .line 951
    :cond_0
    return-void
.end method

.method private notifyOnMatchedImg([BII)V
    .locals 1
    .param p1, "img"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 941
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mMatchedImageListener:Legistec/fingerauth/api/FPAuthListeners$MatchedImageListener;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mMatchedImageListener:Legistec/fingerauth/api/FPAuthListeners$MatchedImageListener;

    invoke-interface {v0, p1, p2, p3}, Legistec/fingerauth/api/FPAuthListeners$MatchedImageListener;->onGetMatchedImg([BII)V

    .line 943
    :cond_0
    return-void
.end method

.method private notifyOnPermissionGranted()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->pluginDeviceListener:Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->pluginDeviceListener:Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;->onPermissionGranted()V

    .line 889
    :cond_0
    return-void
.end method

.method private notifyOnProgress()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$EnrollListener;->onProgress()V

    .line 947
    :cond_0
    return-void
.end method

.method private notifyOnServiceConnect()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$StatusListener;->onServiceConnected()V

    .line 881
    :cond_0
    return-void
.end method

.method private notifyOnServiceDisConnect()V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$StatusListener;->onServiceDisConnected()V

    .line 885
    :cond_0
    return-void
.end method

.method private notifyOnStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 915
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    invoke-interface {v0, p1}, Legistec/fingerauth/api/FPAuthListeners$StatusListener;->onStatus(I)V

    .line 917
    :cond_0
    return-void
.end method

.method private notifyOnStatusCandidate(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 842
    iget-object v1, p0, Legistec/fingerauth/api/SettingLib;->mTinyEnrollListener:Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;

    if-eqz v1, :cond_0

    .line 844
    :try_start_0
    iget-object v1, p0, Legistec/fingerauth/api/SettingLib;->mTinyEnrollListener:Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;

    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->getTinyMapInfo()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;->onStatusCandidate(I[I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyOnUserAbort()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$StatusListener;->onUserAbort()V

    .line 913
    :cond_0
    return-void
.end method

.method private notifyOnVerifyFail()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->verifyListener:Legistec/fingerauth/api/FPAuthListeners$VerifyListener;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->verifyListener:Legistec/fingerauth/api/FPAuthListeners$VerifyListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$VerifyListener;->onFail()V

    .line 935
    :cond_0
    return-void
.end method

.method private notifyOnVerifyImg([BII)V
    .locals 1
    .param p1, "img"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 937
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mThreadImageListener:Legistec/fingerauth/api/FPAuthListeners$ThreadImageListener;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mThreadImageListener:Legistec/fingerauth/api/FPAuthListeners$ThreadImageListener;

    invoke-interface {v0, p1, p2, p3}, Legistec/fingerauth/api/FPAuthListeners$ThreadImageListener;->onGetImg([BII)V

    .line 939
    :cond_0
    return-void
.end method

.method private notifyOnVerifySuccess()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->verifyListener:Legistec/fingerauth/api/FPAuthListeners$VerifyListener;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->verifyListener:Legistec/fingerauth/api/FPAuthListeners$VerifyListener;

    invoke-interface {v0}, Legistec/fingerauth/api/FPAuthListeners$VerifyListener;->onSuccess()V

    .line 931
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 364
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->abort()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 370
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "abort() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "abort() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bind()V
    .locals 8

    .prologue
    .line 241
    const-string v5, "SettingLib"

    const-string v6, "+++ bind +++"

    invoke-static {v5, v6}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v5, p0, Legistec/fingerauth/api/SettingLib;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 243
    .local v4, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v5, "SettingLib"

    const-string v6, "+++ after bind +++"

    invoke-static {v5, v6}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 251
    :goto_0
    if-eqz v3, :cond_3

    .line 253
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v5, "egistec.fingerauth.api.IFPAuthService"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v5, "egistec.fingerauth.host.service"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v5, p0, Legistec/fingerauth/api/SettingLib;->mContext:Landroid/content/Context;

    iget-object v6, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 258
    const-string v5, "SettingLib"

    const-string v6, "bindService fail"

    invoke-static {v5, v6}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 245
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 246
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "egistec.fingerauth.host.service"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    move-object v3, v1

    .line 248
    goto :goto_0

    .line 261
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    const-string v5, "SettingLib"

    const-string v6, "FPAuthService.apk is not installed!"

    invoke-static {v5, v6}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Legistec/fingerauth/api/SettingLib;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 264
    const-string v5, "Error_title"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 265
    const-string v5, "FPAutService_is_not_installed"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 266
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public cleanListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 989
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    .line 990
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->pluginDeviceListener:Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;

    .line 991
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->getRawDataListener:Legistec/fingerauth/api/FPAuthListeners$GetRawDataListener;

    .line 992
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    .line 993
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->verifyListener:Legistec/fingerauth/api/FPAuthListeners$VerifyListener;

    .line 994
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->mTinyEnrollListener:Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;

    .line 995
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->mLearningListener:Legistec/fingerauth/api/FPAuthListeners$VerifyLearningListener;

    .line 996
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->mThreadImageListener:Legistec/fingerauth/api/FPAuthListeners$ThreadImageListener;

    .line 997
    iput-object v0, p0, Legistec/fingerauth/api/SettingLib;->mEnrollMapProgressListener:Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;

    .line 998
    return-void
.end method

.method public connectDevice()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 284
    const-string v2, "SettingLib"

    const-string v3, "connectDevice"

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->connectDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 292
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectDevice() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectDevice() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteFeature(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1014
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2, p1}, Legistec/fingerauth/api/IFPAuthService;->deleteFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1020
    :goto_0
    return v1

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteFeature() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteFeature() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectDevice()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 296
    const-string v2, "EgisTest"

    const-string v3, "setting lib disconnectDevice enter"

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->disconnectDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 304
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disconnectDevice() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disconnectDevice() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enroll(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1002
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2, p1}, Legistec/fingerauth/api/IFPAuthService;->enroll(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1008
    :goto_0
    return v1

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enroll() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enroll() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finishInterruptCalibration()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1158
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->finishInterruptCalibration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1164
    :goto_0
    return v1

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finishInterruptCalibration() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1162
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finishInterruptCalibration() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identify()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 311
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->identify()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 317
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "identify() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "identify() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeCalibration()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1170
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->removeCalibration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1171
    const/4 v1, 0x0

    .line 1177
    :goto_0
    return v1

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeCalibration() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeCalibration() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveIntDCOffset(I)I
    .locals 5
    .param p1, "dcoffset"    # I

    .prologue
    const/4 v1, -0x1

    .line 1122
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2, p1}, Legistec/fingerauth/api/IFPAuthService;->saveInterruptDCOffset(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1128
    :goto_0
    return v1

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveIntDCOffset() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveIntDCOffset() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveIntThreshold(I)I
    .locals 5
    .param p1, "threshold"    # I

    .prologue
    const/4 v1, -0x1

    .line 1134
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2, p1}, Legistec/fingerauth/api/IFPAuthService;->saveInterruptThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1140
    :goto_0
    return v1

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveIntThreshold() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1138
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveIntThreshold() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnrollListener(Legistec/fingerauth/api/FPAuthListeners$EnrollListener;)V
    .locals 0
    .param p1, "listener"    # Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    .prologue
    .line 967
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib;->enrollListener:Legistec/fingerauth/api/FPAuthListeners$EnrollListener;

    .line 968
    return-void
.end method

.method public setEnrollMapProgressListener(Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;)V
    .locals 0
    .param p1, "listener"    # Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;

    .prologue
    .line 982
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib;->mEnrollMapProgressListener:Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;

    .line 983
    return-void
.end method

.method public setIntDCOffset(I)I
    .locals 5
    .param p1, "dcoffset"    # I

    .prologue
    const/4 v1, -0x1

    .line 1097
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2, p1}, Legistec/fingerauth/api/IFPAuthService;->setInterruptDCOffset(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1103
    :goto_0
    return v1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setInterruptDCOffset() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setInterruptDCOffset() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIntThreshold(I)I
    .locals 5
    .param p1, "threshold"    # I

    .prologue
    const/4 v1, -0x1

    .line 1109
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2, p1}, Legistec/fingerauth/api/IFPAuthService;->setInterruptThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1115
    :goto_0
    return v1

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setIntThreshold() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setIntThreshold() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPowerOffMode()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1086
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->setPowerOffMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1092
    :goto_0
    return v1

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setPowerOffMode() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setPowerOffMode() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStatusListener(Legistec/fingerauth/api/FPAuthListeners$StatusListener;)V
    .locals 0
    .param p1, "listener"    # Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    .prologue
    .line 958
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib;->statusListener:Legistec/fingerauth/api/FPAuthListeners$StatusListener;

    .line 959
    return-void
.end method

.method public setVerifyListener(Legistec/fingerauth/api/FPAuthListeners$VerifyListener;)V
    .locals 0
    .param p1, "listener"    # Legistec/fingerauth/api/FPAuthListeners$VerifyListener;

    .prologue
    .line 970
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib;->verifyListener:Legistec/fingerauth/api/FPAuthListeners$VerifyListener;

    .line 971
    return-void
.end method

.method public startInterruptCalibration()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1146
    :try_start_0
    iget-object v2, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v2}, Legistec/fingerauth/api/IFPAuthService;->startInterruptCalibration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1152
    :goto_0
    return v1

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startInterruptCalibration() RemoteException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingLib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startInterruptCalibration() Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Legistec/fingerauth/api/EgisLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 273
    const-string v0, "SettingLib"

    const-string v1, "+++ unbind +++"

    invoke-static {v0, v1}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib;->mContext:Landroid/content/Context;

    iget-object v1, p0, Legistec/fingerauth/api/SettingLib;->mFPAuthConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method
