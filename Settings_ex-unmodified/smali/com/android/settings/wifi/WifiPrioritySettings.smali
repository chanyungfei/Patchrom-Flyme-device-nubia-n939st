.class public Lcom/android/settings/wifi/WifiPrioritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiPrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private configuredApCount:I

.field mConfiguredAps:Landroid/preference/PreferenceCategory;

.field private mPriorityOrder:[I

.field private mWifiConfigurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static calculateInitPriority(Ljava/util/List;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v8, 0x0

    .line 131
    if-nez p0, :cond_1

    .line 132
    const/4 v5, 0x0

    .line 158
    :cond_0
    return-object v5

    .line 134
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 135
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_3

    .line 136
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 137
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    const-string v7, "ERROR"

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 138
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 139
    :cond_3
    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gez v7, :cond_2

    .line 140
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 144
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 145
    .local v6, "totalSize":I
    new-array v5, v6, [I

    .line 146
    .local v5, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "biggestPoz":I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 149
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiPrioritySettings;->formerHasHigherPriority(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 150
    move v0, v4

    .line 148
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 154
    :cond_6
    add-int/lit8 v7, v2, 0x1

    aput v7, v5, v0

    .line 156
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    const/4 v8, -0x1

    iput v8, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static formerHasHigherPriority(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .param p0, "former"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "backer"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    if-nez p0, :cond_1

    move v2, v3

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 172
    :cond_1
    if-eqz p1, :cond_0

    .line 175
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v5, :cond_0

    .line 177
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v4, v5, :cond_2

    move v2, v3

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v1, ""

    .line 182
    .local v1, "formerSSID":Ljava/lang/String;
    :goto_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_5

    const-string v0, ""

    .line 184
    .local v0, "backerSSID":Ljava/lang/String;
    :goto_2
    const-string v4, "CMCC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "CMCC-EDU"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    :cond_3
    const-string v4, "CMCC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "CMCC-EDU"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v2, v3

    .line 190
    goto :goto_0

    .line 180
    .end local v0    # "backerSSID":Ljava/lang/String;
    .end local v1    # "formerSSID":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 182
    .restart local v1    # "formerSSID":Ljava/lang/String;
    :cond_5
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 192
    .restart local v0    # "backerSSID":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private updateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 274
    const-string v1, "WifiPrioritySettings"

    const-string v2, "updateConfig()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-nez p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 279
    .local v0, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 280
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 281
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_0
.end method


# virtual methods
.method public initPage()V
    .locals 9

    .prologue
    .line 75
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_1

    .line 76
    const-string v6, "WifiPrioritySettings"

    const-string v7, "Failed to get WifiManager service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiConfigurationList:Ljava/util/List;

    .line 81
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiConfigurationList:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_0

    .line 82
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 84
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiConfigurationList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    .line 85
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    new-array v3, v6, [Ljava/lang/String;

    .line 86
    .local v3, "priorityEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    if-ge v1, v6, :cond_2

    .line 87
    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    if-ge v1, v6, :cond_3

    .line 91
    const-string v7, "WifiPrioritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Before sorting: priority array="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiConfigurationList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiConfigurationList:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiPrioritySettings;->calculateInitPriority(Ljava/util/List;)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090b1e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "summaryPreStr":Ljava/lang/String;
    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    if-ge v1, v6, :cond_5

    .line 100
    const-string v6, "WifiPrioritySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After sorting: priority array="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiConfigurationList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 102
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v8, v1

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-eq v6, v7, :cond_4

    .line 103
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 104
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 108
    :cond_4
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "ssidStr":Ljava/lang/String;
    new-instance v2, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v6, v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 117
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 119
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "pref":Landroid/preference/ListPreference;
    .end local v4    # "ssidStr":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->addPreferencesFromResource(I)V

    .line 66
    const-string v0, "configured_ap_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    .line 67
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->initPage()V

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 200
    instance-of v7, p1, Landroid/preference/ListPreference;

    if-eqz v7, :cond_6

    move-object v6, p1

    .line 201
    check-cast v6, Landroid/preference/ListPreference;

    .line 202
    .local v6, "pref":Landroid/preference/ListPreference;
    const/4 v5, 0x0

    .line 203
    .local v5, "oldOrder":I
    const/4 v4, 0x0

    .line 205
    .local v4, "newOrder":I
    :try_start_0
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 206
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 211
    :goto_0
    const-string v7, "WifiPrioritySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Priority old value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090b1f

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    aput-object p2, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 218
    if-eq v5, v4, :cond_6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    if-eqz v7, :cond_6

    .line 219
    if-le v5, v4, :cond_2

    .line 221
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 222
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiConfigurationList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 223
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-lt v7, v4, :cond_1

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-ge v7, v5, :cond_1

    .line 224
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v7, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v3

    .line 225
    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v8, v3

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 226
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 221
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v7, "WifiPrioritySettings"

    const-string v8, "Error happens when modify priority manually"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 227
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "newValue":Ljava/lang/Object;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-ne v7, v5, :cond_0

    .line 228
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aput v4, v7, v3

    .line 229
    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 230
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2

    .line 235
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 236
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiConfigurationList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 237
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-gt v7, v4, :cond_4

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-le v7, v5, :cond_4

    .line 238
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v7, v3

    add-int/lit8 v8, v8, -0x1

    aput v8, v7, v3

    .line 239
    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v8, v3

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 240
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 235
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 241
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-ne v7, v5, :cond_3

    .line 242
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aput v4, v7, v3

    .line 243
    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 244
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_4

    .line 248
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateUI()V

    .line 252
    .end local v3    # "i":I
    .end local v4    # "newOrder":I
    .end local v5    # "oldOrder":I
    .end local v6    # "pref":Landroid/preference/ListPreference;
    :cond_6
    return v13
.end method

.method public updateUI()V
    .locals 6

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 261
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b1e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "summaryPreStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    .end local v2    # "summaryPreStr":Ljava/lang/String;
    :cond_0
    instance-of v3, v1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 267
    check-cast v1, Landroid/preference/ListPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_2
    return-void
.end method
