.class Lcom/android/server/LedStatusService$2;
.super Landroid/database/ContentObserver;
.source "LedStatusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedStatusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LedStatusService;


# direct methods
.method constructor <init>(Lcom/android/server/LedStatusService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/LedStatusService$2;->this$0:Lcom/android/server/LedStatusService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/server/LedStatusService$2;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->readMissCall()I
    invoke-static {v2}, Lcom/android/server/LedStatusService;->access$200(Lcom/android/server/LedStatusService;)I

    move-result v1

    .line 156
    .local v1, "mMissedCallCount":I
    const-string v2, "LedStatusService"

    const-string v3, "Enter missedCallContentObserver::onChange."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v2, "LedStatusService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---mMissedCallCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Landroid/content/Intent;

    # getter for: Lcom/android/server/LedStatusService;->MSG_LED_MISSED_CALL:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LedStatusService;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "mIntentLed":Landroid/content/Intent;
    const-string v3, "MISSED"

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    iget-object v2, p0, Lcom/android/server/LedStatusService$2;->this$0:Lcom/android/server/LedStatusService;

    invoke-virtual {v2, v0}, Lcom/android/server/LedStatusService;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    const-string v2, "LedStatusService"

    const-string v3, "Exit missedCallContentObserver::onChange."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 159
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method