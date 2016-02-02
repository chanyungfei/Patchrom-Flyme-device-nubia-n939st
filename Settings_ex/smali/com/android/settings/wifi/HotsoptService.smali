.class public Lcom/android/settings_ex/wifi/HotsoptService;
.super Landroid/app/Service;
.source "HotsoptService.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHotspotLastValidTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mHotspotLastValidTime:J

    .line 63
    new-instance v0, Lcom/android/settings_ex/wifi/HotsoptService$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/HotsoptService$1;-><init>(Lcom/android/settings_ex/wifi/HotsoptService;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Lcom/android/settings_ex/wifi/HotsoptService$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/HotsoptService$2;-><init>(Lcom/android/settings_ex/wifi/HotsoptService;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/HotsoptService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/HotsoptService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotsoptService;->setCurrentTimeToLastValidTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/HotsoptService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/HotsoptService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotsoptService;->getTurnOffTimebyMode()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/HotsoptService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/HotsoptService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotsoptService;->getHotspotLastValidTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/HotsoptService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/HotsoptService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotsoptService;->disableWifiAp()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/HotsoptService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/HotsoptService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private disableWifiAp()V
    .locals 3

    .prologue
    .line 154
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/HotsoptService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 156
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 157
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 159
    :cond_0
    return-void
.end method

.method private getHotspotLastValidTime()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mHotspotLastValidTime:J

    return-wide v0
.end method

.method public static getHotspotMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const-string v0, "Always"

    invoke-static {p0, v0}, Lcom/android/settings_ex/wifi/HotsoptService;->getHotspotMode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHotspotMode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 183
    const-string v1, "wifi_hotsopt_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "wifi_hotsopt_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local p1    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getTurnOffTimebyMode()J
    .locals 4

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/settings_ex/wifi/HotsoptService;->getHotspotMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "hotsoptMode":Ljava/lang/String;
    const-string v1, "Turn_off_5min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-wide/32 v2, 0x493e0

    .line 103
    :goto_0
    return-wide v2

    .line 100
    :cond_0
    const-string v1, "Turn_off_10min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-wide/32 v2, 0x927c0

    goto :goto_0

    .line 103
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private setCurrentTimeToLastValidTime()V
    .locals 5

    .prologue
    .line 142
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/HotsoptService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 144
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, "tetherList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 148
    .local v2, "currentTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/HotsoptService;->setHotspotLastValidTime(Ljava/lang/Long;)V

    .line 151
    .end local v1    # "tetherList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    .end local v2    # "currentTime":J
    :cond_0
    return-void
.end method

.method private setHotspotLastValidTime(Ljava/lang/Long;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mHotspotLastValidTime:J

    .line 164
    monitor-exit p0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setHotspotMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    .line 173
    const-string v2, "wifi_hotsopt_preference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "wifi_hotsopt_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x2710

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 115
    .local v6, "currentTime":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/HotsoptService;->setHotspotLastValidTime(Ljava/lang/Long;)V

    .line 117
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/android/settings_ex/wifi/HotsoptService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    new-instance v1, Lcom/android/settings_ex/wifi/HotsoptService$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/HotsoptService$3;-><init>(Lcom/android/settings_ex/wifi/HotsoptService;)V

    .line 127
    .local v1, "task":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mTimer:Ljava/util/Timer;

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mTimer:Ljava/util/Timer;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotsoptService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/HotsoptService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    return-void
.end method
