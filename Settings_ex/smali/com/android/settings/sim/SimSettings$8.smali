.class Lcom/android/settings_ex/sim/SimSettings$8;
.super Landroid/os/Handler;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    .line 1164
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1195
    :goto_0
    return-void

    .line 1168
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1700(Lcom/android/settings_ex/sim/SimSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/settings_ex/sim/SimSettings;->setPrefNetwork(IILandroid/os/Message;)V

    goto :goto_0

    .line 1175
    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "cn data let call back"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1176
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->isLTEMode(I)Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/sim/SimSettings;->access$2400(Lcom/android/settings_ex/sim/SimSettings;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mRetryConnect:I
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$2500(Lcom/android/settings_ex/sim/SimSettings;)I

    move-result v1

    if-gt v1, v4, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # operator++ for: Lcom/android/settings_ex/sim/SimSettings;->mRetryConnect:I
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$2508(Lcom/android/settings_ex/sim/SimSettings;)I

    .line 1178
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1700(Lcom/android/settings_ex/sim/SimSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/settings_ex/sim/SimSettings;->setPrefNetwork(IILandroid/os/Message;)V

    goto :goto_0

    .line 1184
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$1100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1185
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1187
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDataEnable:Z
    invoke-static {v2}, Lcom/android/settings_ex/sim/SimSettings;->access$1500(Lcom/android/settings_ex/sim/SimSettings;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1188
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$8;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v2

    int-to-long v2, v2

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->setUserPrefDataSubIdInDb(J)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/sim/SimSettings;->access$2600(Lcom/android/settings_ex/sim/SimSettings;J)V

    goto/16 :goto_0

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
