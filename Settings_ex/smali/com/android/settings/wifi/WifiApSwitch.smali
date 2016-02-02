.class public Lcom/android/settings_ex/wifi/WifiApSwitch;
.super Ljava/lang/Object;
.source "WifiApSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mParent:Lcom/android/settings_ex/wifi/HotspotSettings;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mWaitForWifiStateChange:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/HotspotSettings;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings_ex/wifi/HotspotSettings;
    .param p3, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApSwitch$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApSwitch$1;-><init>(Lcom/android/settings_ex/wifi/WifiApSwitch;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mParent:Lcom/android/settings_ex/wifi/HotspotSettings;

    .line 89
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWaitForWifiStateChange:Z

    .line 92
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mCm:Landroid/net/ConnectivityManager;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWifiRegexs:[Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiApSwitch;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApSwitch;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiApSwitch;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiApSwitch;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApSwitch;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiApSwitch;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApSwitch;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiApSwitch;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiApSwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApSwitch;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApSwitch;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 117
    .local v0, "isAirplaneMode":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 118
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    move v1, v2

    .line 117
    goto :goto_1
.end method

.method public static getWifiSavedState(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 189
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiApSwitch;->setSwitchChecked(Z)V

    .line 190
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApSwitch;->enableWifiCheckBox()V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiApSwitch;->setSwitchChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 183
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiApSwitch;->setSwitchChecked(Z)V

    .line 184
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApSwitch;->enableWifiCheckBox()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 195
    packed-switch p1, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApSwitch;->enableWifiCheckBox()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mStateMachineEvent:Z

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mStateMachineEvent:Z

    .line 223
    :cond_0
    return-void
.end method

.method public static setWifiSavedState(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_0
    if-eqz p2, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mParent:Lcom/android/settings_ex/wifi/HotspotSettings;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/HotspotSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiApSwitch;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApSwitch;->enableWifiCheckBox()V

    .line 107
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    if-eqz p1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings_ex/wifi/WifiApSwitch;->setWifiSavedState(Landroid/content/Context;I)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 139
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWaitForWifiStateChange:Z

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiApSwitch;->getWifiSavedState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 150
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWaitForWifiStateChange:Z

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings_ex/wifi/WifiApSwitch;->setWifiSavedState(Landroid/content/Context;I)V

    goto :goto_0
.end method
