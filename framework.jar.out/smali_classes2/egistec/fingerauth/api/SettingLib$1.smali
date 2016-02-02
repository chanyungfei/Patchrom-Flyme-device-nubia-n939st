.class Legistec/fingerauth/api/SettingLib$1;
.super Ljava/lang/Object;
.source "SettingLib.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legistec/fingerauth/api/SettingLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Legistec/fingerauth/api/SettingLib;


# direct methods
.method constructor <init>(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib$1;->this$0:Legistec/fingerauth/api/SettingLib;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 211
    const-string v0, "SettingLib"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib$1;->this$0:Legistec/fingerauth/api/SettingLib;

    invoke-static {p2}, Legistec/fingerauth/api/IFPAuthService$Stub;->asInterface(Landroid/os/IBinder;)Legistec/fingerauth/api/IFPAuthService;

    move-result-object v1

    iput-object v1, v0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    .line 215
    :try_start_0
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib$1;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v0, v0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    iget-object v1, p0, Legistec/fingerauth/api/SettingLib$1;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v1, v1, Legistec/fingerauth/api/SettingLib;->mFPAuthServiceCallback:Legistec/fingerauth/api/IFPAuthServiceCallback;

    invoke-interface {v0, v1}, Legistec/fingerauth/api/IFPAuthService;->registerCallback(Legistec/fingerauth/api/IFPAuthServiceCallback;)V

    .line 216
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib$1;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnServiceConnect()V
    invoke-static {v0}, Legistec/fingerauth/api/SettingLib;->access$0(Legistec/fingerauth/api/SettingLib;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 224
    const-string v0, "SettingLib"

    const-string v1, "onServiceDisConnected"

    invoke-static {v0, v1}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib$1;->this$0:Legistec/fingerauth/api/SettingLib;

    const/4 v1, 0x0

    iput-object v1, v0, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    .line 226
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib$1;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnServiceDisConnect()V
    invoke-static {v0}, Legistec/fingerauth/api/SettingLib;->access$1(Legistec/fingerauth/api/SettingLib;)V

    .line 227
    return-void
.end method
