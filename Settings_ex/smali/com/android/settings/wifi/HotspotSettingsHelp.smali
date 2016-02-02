.class public Lcom/android/settings_ex/wifi/HotspotSettingsHelp;
.super Landroid/app/Activity;
.source "HotspotSettingsHelp.java"


# static fields
.field private static wifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getIndicateText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    sget-object v0, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 61
    :cond_0
    sget-object v0, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 62
    const v0, 0x7f090b48

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    const v0, 0x7f090b49

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWifiApSsid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f090b47

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f040065

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 53
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->finish()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->getIndicateText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f0f00e6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/HotspotSettingsHelp;->getWifiApSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
