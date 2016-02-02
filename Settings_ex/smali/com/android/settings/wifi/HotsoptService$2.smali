.class Lcom/android/settings_ex/wifi/HotsoptService$2;
.super Landroid/os/Handler;
.source "HotsoptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/HotsoptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/HotsoptService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/HotsoptService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings_ex/wifi/HotsoptService$2;->this$0:Lcom/android/settings_ex/wifi/HotsoptService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 76
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/HotsoptService$2;->this$0:Lcom/android/settings_ex/wifi/HotsoptService;

    # invokes: Lcom/android/settings_ex/wifi/HotsoptService;->getTurnOffTimebyMode()J
    invoke-static {v6}, Lcom/android/settings_ex/wifi/HotsoptService;->access$100(Lcom/android/settings_ex/wifi/HotsoptService;)J

    move-result-wide v4

    .line 79
    .local v4, "turnOffTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    .local v2, "currentTime":J
    iget-object v6, p0, Lcom/android/settings_ex/wifi/HotsoptService$2;->this$0:Lcom/android/settings_ex/wifi/HotsoptService;

    # invokes: Lcom/android/settings_ex/wifi/HotsoptService;->getHotspotLastValidTime()J
    invoke-static {v6}, Lcom/android/settings_ex/wifi/HotsoptService;->access$200(Lcom/android/settings_ex/wifi/HotsoptService;)J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 82
    .local v0, "a":J
    iget-object v6, p0, Lcom/android/settings_ex/wifi/HotsoptService$2;->this$0:Lcom/android/settings_ex/wifi/HotsoptService;

    # invokes: Lcom/android/settings_ex/wifi/HotsoptService;->getHotspotLastValidTime()J
    invoke-static {v6}, Lcom/android/settings_ex/wifi/HotsoptService;->access$200(Lcom/android/settings_ex/wifi/HotsoptService;)J

    move-result-wide v6

    sub-long v6, v2, v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_1

    .line 83
    iget-object v6, p0, Lcom/android/settings_ex/wifi/HotsoptService$2;->this$0:Lcom/android/settings_ex/wifi/HotsoptService;

    # invokes: Lcom/android/settings_ex/wifi/HotsoptService;->disableWifiAp()V
    invoke-static {v6}, Lcom/android/settings_ex/wifi/HotsoptService;->access$300(Lcom/android/settings_ex/wifi/HotsoptService;)V

    .line 84
    iget-object v6, p0, Lcom/android/settings_ex/wifi/HotsoptService$2;->this$0:Lcom/android/settings_ex/wifi/HotsoptService;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/HotsoptService;->stopSelf()V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/HotsoptService$2;->this$0:Lcom/android/settings_ex/wifi/HotsoptService;

    # invokes: Lcom/android/settings_ex/wifi/HotsoptService;->setCurrentTimeToLastValidTime()V
    invoke-static {v6}, Lcom/android/settings_ex/wifi/HotsoptService;->access$000(Lcom/android/settings_ex/wifi/HotsoptService;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
