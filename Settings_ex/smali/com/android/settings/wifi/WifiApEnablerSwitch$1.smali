.class Lcom/android/settings_ex/wifi/WifiApEnablerSwitch$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnablerSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch$1;->this$0:Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch$1;->this$0:Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;

    const-string v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # invokes: Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->handleWifiApStateChanged(I)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->access$000(Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch$1;->this$0:Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;

    # getter for: Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->mWaitForWifiStateChange:Z
    invoke-static {v4}, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->access$100(Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch$1;->this$0:Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;

    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # invokes: Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->handleWifiStateChanged(I)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->access$200(Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;I)V

    goto :goto_0

    .line 87
    :cond_2
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 90
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 94
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch$1;->this$0:Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    # invokes: Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->access$300(Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch$1;->this$0:Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;

    # invokes: Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->enableWifiCheckBox()V
    invoke-static {v4}, Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;->access$400(Lcom/android/settings_ex/wifi/WifiApEnablerSwitch;)V

    goto :goto_0
.end method
