.class public Lcom/android/settings_ex/StatusBarSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mShowBatteryPercentage:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    const-string v1, "status_bar_show_battery_percent"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/StatusBarSettings;->mShowBatteryPercentage:Landroid/preference/CheckBoxPreference;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/StatusBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_battery_percent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 43
    .local v0, "showPercentage":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/StatusBarSettings;->mShowBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/StatusBarSettings;->addPreferencesFromResource(I)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/StatusBarSettings;->initUI()V

    .line 35
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/StatusBarSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 51
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 60
    const-string v2, "status_bar_show_battery_percent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    .local v0, "showPercentage":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/StatusBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_show_battery_percent"

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    .end local v0    # "showPercentage":Z
    :cond_0
    return-void

    .line 62
    .restart local v0    # "showPercentage":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
