.class Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;
.super Ljava/lang/Object;
.source "CABLServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CABLServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CABLServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CABLServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CABLServiceWrapper;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;->this$0:Lcom/android/settings/CABLServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CABLServiceWrapper;Lcom/android/settings/CABLServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/CABLServiceWrapper;
    .param p2, "x1"    # Lcom/android/settings/CABLServiceWrapper$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/CABLServiceWrapper$CABLServiceConnection;-><init>(Lcom/android/settings/CABLServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 132
    invoke-static {p2}, Lcom/android/cabl/ICABLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/cabl/ICABLService;

    move-result-object v0

    # setter for: Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {v0}, Lcom/android/settings/CABLServiceWrapper;->access$102(Lcom/android/cabl/ICABLService;)Lcom/android/cabl/ICABLService;

    .line 133
    const-string v0, "CABLServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {}, Lcom/android/settings/CABLServiceWrapper;->access$100()Lcom/android/cabl/ICABLService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 138
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {v0}, Lcom/android/settings/CABLServiceWrapper;->access$102(Lcom/android/cabl/ICABLService;)Lcom/android/cabl/ICABLService;

    .line 139
    return-void
.end method
