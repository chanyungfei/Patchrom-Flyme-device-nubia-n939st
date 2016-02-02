.class Lcom/android/settings/ScreenColorSettings$PPServiceConnection;
.super Ljava/lang/Object;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ScreenColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ScreenColorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ScreenColorSettings;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ScreenColorSettings;Lcom/android/settings/ScreenColorSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ScreenColorSettings;
    .param p2, "x1"    # Lcom/android/settings/ScreenColorSettings$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;-><init>(Lcom/android/settings/ScreenColorSettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    invoke-static {p2}, Lcom/android/display/IPPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/display/IPPService;

    move-result-object v2

    # setter for: Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1, v2}, Lcom/android/settings/ScreenColorSettings;->access$302(Lcom/android/settings/ScreenColorSettings;Lcom/android/display/IPPService;)Lcom/android/display/IPPService;

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    # getter for: Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/android/settings/ScreenColorSettings;->access$300(Lcom/android/settings/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    # getter for: Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/android/settings/ScreenColorSettings;->access$300(Lcom/android/settings/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/display/IPPService;->startPP()Z

    .line 189
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    # getter for: Lcom/android/settings/ScreenColorSettings;->mMode:I
    invoke-static {v2}, Lcom/android/settings/ScreenColorSettings;->access$000(Lcom/android/settings/ScreenColorSettings;)I

    move-result v2

    # invokes: Lcom/android/settings/ScreenColorSettings;->setScreenColorMode(I)V
    invoke-static {v1, v2}, Lcom/android/settings/ScreenColorSettings;->access$100(Lcom/android/settings/ScreenColorSettings;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "startPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    # getter for: Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/android/settings/ScreenColorSettings;->access$300(Lcom/android/settings/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    # getter for: Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/android/settings/ScreenColorSettings;->access$300(Lcom/android/settings/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/display/IPPService;->stopPP()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1, v2}, Lcom/android/settings/ScreenColorSettings;->access$302(Lcom/android/settings/ScreenColorSettings;Lcom/android/display/IPPService;)Lcom/android/display/IPPService;

    .line 206
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "stopPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
