.class Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v1, ""

    # invokes: Lcom/android/settings_ex/applications/InstalledAppDetails;->setMovingState(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$500(Ljava/lang/String;)V

    .line 257
    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->sMovingHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$600()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->sMovingHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$600()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 259
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 260
    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->sMovingHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$600()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
