.class Lcom/android/settings_ex/deviceinfo/MSimStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/MSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MSimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MSimStatus;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 500
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 502
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 503
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 514
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 506
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    const-string v6, "message"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 507
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v6

    const/16 v7, 0x32

    if-ne v6, v7, :cond_0

    .line 508
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v5

    .line 509
    .local v5, "subId":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 510
    .local v4, "phoneId":I
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "latestAreaInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateAreaInfo(Ljava/lang/String;I)V
    invoke-static {v6, v3, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->access$200(Lcom/android/settings_ex/deviceinfo/MSimStatus;Ljava/lang/String;I)V

    goto :goto_0
.end method
