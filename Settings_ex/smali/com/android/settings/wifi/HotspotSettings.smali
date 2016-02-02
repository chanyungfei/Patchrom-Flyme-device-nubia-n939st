.class public Lcom/android/settings_ex/wifi/HotspotSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "HotspotSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectedAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateNetworkPref:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilter:Landroid/content/IntentFilter;

.field private mListPref:Landroid/preference/PreferenceCategory;

.field private mProvisionApp:[Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherConnectedStaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiApSwitch:Lcom/android/settings_ex/wifi/WifiApSwitch;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mTetherConnectedStaList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedNameList:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedAddressList:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/HotspotSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/HotspotSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/HotspotSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private clearApList()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mListPref:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mListPref:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 300
    :cond_0
    return-void
.end method

.method private constructConnectedDevices()V
    .locals 6

    .prologue
    .line 303
    const-string v4, "constructConnectedDevices.."

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/HotspotSettings;->log(Ljava/lang/String;)V

    .line 304
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mTetherConnectedStaList:Ljava/util/List;

    .line 305
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mTetherConnectedStaList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mTetherConnectedStaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 306
    :cond_0
    const-string v4, "ConnectedCount = 0"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/HotspotSettings;->log(Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mListPref:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 333
    :cond_1
    return-void

    .line 310
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 311
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 312
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mTetherConnectedStaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 313
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mTetherConnectedStaList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiDevice;

    .line 314
    .local v0, "device":Landroid/net/wifi/WifiDevice;
    iget v4, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedNameList:Ljava/util/List;

    iget-object v5, v0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedAddressList:Ljava/util/List;

    iget-object v5, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mListPref:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 321
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in construct pref addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/HotspotSettings;->log(Ljava/lang/String;)V

    .line 323
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 324
    .local v3, "pref":Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedNameList:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedNameList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in construct pref.name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedNameList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/HotspotSettings;->log(Ljava/lang/String;)V

    .line 326
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedNameList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mListPref:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 328
    :cond_5
    const v4, 0x7f090b42

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_2
.end method

.method private getApSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method private getSecurityTypeIndexToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "securityList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    .line 202
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 204
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/HotspotSettings;->log(Ljava/lang/String;)V

    .line 275
    const-string v2, "android.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->constructConnectedDevices()V

    .line 278
    :cond_0
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 281
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 294
    .end local v1    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 283
    .restart local v1    # "state":I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->clearApList()V

    .line 284
    iget-object v2, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private initWifiTethering()V
    .locals 8

    .prologue
    const v4, 0x7f0903ca

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 212
    const-string v1, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/HotspotSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mCreateNetworkPref:Landroid/preference/Preference;

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "ro.product.model"

    const-string v2, "ZTE nubia AP"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "ssid_def":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mCreateNetworkPref:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/HotspotSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.product.model"

    const-string v5, "ZTE nubia AP"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getSecurityTypeIndexToString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    .end local v0    # "ssid_def":Ljava/lang/String;
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mCreateNetworkPref:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/HotspotSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getApSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getSecurityTypeIndexToString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string v0, "HotspotSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 144
    .local v3, "root":Landroid/preference/PreferenceScreen;
    const-string v4, "ap_device_list"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mListPref:Landroid/preference/PreferenceCategory;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 147
    .local v1, "activity":Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "actionBarSwitch":Landroid/widget/Switch;
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 150
    .local v2, "padding":I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 151
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 153
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 157
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0903c0

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 159
    new-instance v4, Lcom/android/settings_ex/wifi/WifiApSwitch;

    invoke-direct {v4, v1, p0, v0}, Lcom/android/settings_ex/wifi/WifiApSwitch;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/HotspotSettings;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApSwitch:Lcom/android/settings_ex/wifi/WifiApSwitch;

    .line 160
    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0f019b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mEmptyView:Landroid/widget/TextView;

    .line 163
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 337
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApSwitch:Lcom/android/settings_ex/wifi/WifiApSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiApSwitch;->setSoftapEnabled(Z)V

    .line 340
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 264
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mCreateNetworkPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0903ca

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getApSsid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getSecurityTypeIndexToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/HotspotSettings;->addPreferencesFromResource(I)V

    .line 111
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/HotspotSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mProvisionApp:[Ljava/lang/String;

    .line 116
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mFilter:Landroid/content/IntentFilter;

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/android/settings_ex/wifi/HotspotSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/HotspotSettings$1;-><init>(Lcom/android/settings_ex/wifi/HotspotSettings;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 127
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/HotspotSettings;->setHasOptionsMenu(Z)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->initWifiTethering()V

    .line 131
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 240
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 241
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 183
    const/4 v0, 0x1

    const v1, 0x7f090b43

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 184
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    const v1, 0x7f04010a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 196
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 190
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApSwitch:Lcom/android/settings_ex/wifi/WifiApSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApSwitch;->pause()V

    .line 178
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 228
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/HotspotSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 231
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mCreateNetworkPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 232
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/HotspotSettings;->showDialog(I)V

    .line 235
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 168
    const-string v0, "onResume.."

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/HotspotSettings;->log(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApSwitch:Lcom/android/settings_ex/wifi/WifiApSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApSwitch;->resume()V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method public startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 350
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/HotspotSettings;->mWifiApSwitch:Lcom/android/settings_ex/wifi/WifiApSwitch;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/wifi/WifiApSwitch;->setSoftapEnabled(Z)V

    goto :goto_0
.end method
