.class Lcom/android/settings/CABLServiceWrapper$1;
.super Ljava/lang/Thread;
.source "CABLServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CABLServiceWrapper;->startCABL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CABLServiceWrapper;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/CABLServiceWrapper;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/CABLServiceWrapper$1;->this$0:Lcom/android/settings/CABLServiceWrapper;

    iput-object p2, p0, Lcom/android/settings/CABLServiceWrapper$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 85
    :try_start_0
    const-string v3, "CABLServiceWrapper"

    const-string v4, "startCABL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    # getter for: Lcom/android/settings/CABLServiceWrapper;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {}, Lcom/android/settings/CABLServiceWrapper;->access$100()Lcom/android/cabl/ICABLService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/cabl/ICABLService;->control(I)Z

    move-result v1

    .line 88
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/settings/CABLServiceWrapper$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v4, "cabl_enabled"

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "result":Z
    :goto_1
    return-void

    .line 88
    .restart local v1    # "result":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 91
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CABLServiceWrapper"

    const-string v3, "startCABL, exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
