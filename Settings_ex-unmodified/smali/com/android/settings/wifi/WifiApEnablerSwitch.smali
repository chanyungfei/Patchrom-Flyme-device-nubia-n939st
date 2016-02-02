.class public Lcom/android/settings/wifi/WifiApEnablerSwitch;
.super Ljava/lang/Object;
.source "WifiApEnablerSwitch.java"


# instance fields
.field private final mCheckBox:Lcom/android/settings/HotspotPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitForWifiStateChange:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/HotspotPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkBox"    # Lcom/android/settings/HotspotPreference;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings/wifi/WifiApEnablerSwitch$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnablerSwitch$1;-><init>(Lcom/android/settings/wifi/WifiApEnablerSwitch;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    .line 105
    invoke-virtual {p2}, Lcom/android/settings/HotspotPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/settings/HotspotPreference;->setPersistent(Z)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWaitForWifiStateChange:Z

    .line 109
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCm:Landroid/net/ConnectivityManager;

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiRegexs:[Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnablerSwitch;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnablerSwitch;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnablerSwitch;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnablerSwitch;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnablerSwitch;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnablerSwitch;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApEnablerSwitch;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnablerSwitch;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApEnablerSwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnablerSwitch;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 132
    .local v0, "isAirplaneMode":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/settings/HotspotPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_1
    move v0, v2

    .line 130
    goto :goto_0

    .restart local v0    # "isAirplaneMode":Z
    :cond_2
    move v1, v2

    .line 132
    goto :goto_1
.end method

.method private getSummary([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    const v3, 0x7f0903c5

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 204
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->isWifiTethered([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 206
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.product.model"

    const-string v4, "ZTE nubia AP"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v1

    .line 215
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 218
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->isWifiApErrored([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    const v2, 0x7f090300

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 221
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    packed-switch p1, :pswitch_data_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    const v1, 0x7f090300

    invoke-virtual {v0, v1}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 256
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->enableWifiCheckBox()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    const v1, 0x7f0903c3

    invoke-virtual {v0, v1}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    const v1, 0x7f0903c4

    invoke-virtual {v0, v1}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/HotspotPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->enableWifiCheckBox()V

    goto :goto_0

    .line 229
    nop

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
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 264
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->enableWifiCheckBox()V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isWifiApErrored([Ljava/lang/Object;)Z
    .locals 10
    .param p1, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 192
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 193
    check-cast v8, Ljava/lang/String;

    .line 194
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 195
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 196
    const/4 v9, 0x1

    .line 200
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "regex":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    :goto_2
    return v9

    .line 194
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v7    # "regex":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 200
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private isWifiTethered([Ljava/lang/Object;)Z
    .locals 10
    .param p1, "tethered"    # [Ljava/lang/Object;

    .prologue
    .line 180
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 181
    check-cast v8, Ljava/lang/String;

    .line 182
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 183
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    const/4 v9, 0x1

    .line 188
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "regex":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    :goto_2
    return v9

    .line 182
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v7    # "regex":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 188
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->getSummary([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/HotspotPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerSwitch;->enableWifiCheckBox()V

    .line 123
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090300

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    if-eqz p1, :cond_4

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiApSwitch;->setWifiSavedState(Landroid/content/Context;I)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    .line 177
    :cond_2
    :goto_0
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    goto :goto_0

    .line 159
    :cond_4
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWaitForWifiStateChange:Z

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    .line 171
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSwitch;->getWifiSavedState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 172
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWaitForWifiStateChange:Z

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSwitch;->setWifiSavedState(Landroid/content/Context;I)V

    goto :goto_0

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerSwitch;->mCheckBox:Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    goto :goto_1
.end method
