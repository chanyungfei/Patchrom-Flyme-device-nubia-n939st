.class public Lcom/android/settings/CABLServiceWrapper;
.super Ljava/lang/Object;
.source "CABLServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;
    }
.end annotation


# static fields
.field private static mCABLService:Lcom/android/cabl/ICABLService;

.field private static mCablAvailable:Z

.field private static sCABLEnabled:Z


# instance fields
.field protected mCABLServiceConn:Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/CABLServiceWrapper;->sCABLEnabled:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings/CABLServiceWrapper;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$100()Lcom/android/cabl/ICABLService;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/cabl/ICABLService;)Lcom/android/cabl/ICABLService;
    .locals 0
    .param p0, "x0"    # Lcom/android/cabl/ICABLService;

    .prologue
    .line 35
    sput-object p0, Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;

    return-object p0
.end method


# virtual methods
.method public initCABLService()V
    .locals 5

    .prologue
    .line 61
    const-string v2, "CABLServiceWrapper"

    const-string v3, "initCABLService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v2, "ro.qualcomm.cabl"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/CABLServiceWrapper;->mCablAvailable:Z

    .line 63
    new-instance v2, Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;-><init>(Lcom/android/settings/CABLServiceWrapper;Lcom/android/settings/CABLServiceWrapper$1;)V

    iput-object v2, p0, Lcom/android/settings/CABLServiceWrapper;->mCABLServiceConn:Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.codeaurora.cabl.ICABLService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/CABLServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CABLServiceWrapper;->mCABLServiceConn:Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 66
    .local v1, "ret":Z
    return-void
.end method

.method public isCABLAvailable()Z
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "available":Z
    iget-object v1, p0, Lcom/android/settings/CABLServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 71
    return v0
.end method

.method public onDestory()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/CABLServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CABLServiceWrapper;->mCABLServiceConn:Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 145
    return-void
.end method

.method public startCABL()V
    .locals 2

    .prologue
    .line 75
    sget-boolean v1, Lcom/android/settings/CABLServiceWrapper;->mCablAvailable:Z

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/CABLServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/settings/CABLServiceWrapper$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/CABLServiceWrapper$1;-><init>(Lcom/android/settings/CABLServiceWrapper;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/android/settings/CABLServiceWrapper$1;->start()V

    .line 98
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public stopCABL()V
    .locals 3

    .prologue
    .line 101
    sget-boolean v1, Lcom/android/settings/CABLServiceWrapper;->mCablAvailable:Z

    if-eqz v1, :cond_0

    const-string v1, "init.svc.ppd"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings/CABLServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/settings/CABLServiceWrapper$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/CABLServiceWrapper$2;-><init>(Lcom/android/settings/CABLServiceWrapper;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/android/settings/CABLServiceWrapper$2;->start()V

    .line 126
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method
