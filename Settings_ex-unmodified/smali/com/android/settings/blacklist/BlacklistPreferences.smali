.class public Lcom/android/settings/blacklist/BlacklistPreferences;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlacklistPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

.field private mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getPolicyFromSelectList(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 113
    .local v1, "mode":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v1, v3

    .line 115
    goto :goto_0

    .line 117
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .param p2, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/settings/blacklist/BlacklistPreferences;->getPolicyFromSelectList(Ljava/util/Set;)I

    move-result v0

    .line 122
    .local v0, "mode":I
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistPreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    return-void
.end method

.method private updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/MultiSelectListPreference;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistPreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "mode":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 105
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 108
    return-void
.end method

.method private updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V
    .locals 5
    .param p1, "pref"    # Landroid/preference/MultiSelectListPreference;
    .param p3, "summaryResId"    # I
    .param p4, "disabledSummaryResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/MultiSelectListPreference;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 127
    invoke-direct {p0, p2}, Lcom/android/settings/blacklist/BlacklistPreferences;->getPolicyFromSelectList(Ljava/util/Set;)I

    move-result v0

    .line 130
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0, p4}, Lcom/android/settings/blacklist/BlacklistPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    if-ne v0, v3, :cond_1

    .line 136
    const v1, 0x7f090090

    .line 143
    .local v1, "typeResId":I
    :goto_1
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/blacklist/BlacklistPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p3, v2}, Lcom/android/settings/blacklist/BlacklistPreferences;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    .end local v1    # "typeResId":I
    :cond_1
    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 138
    const v1, 0x7f090091

    .restart local v1    # "typeResId":I
    goto :goto_1

    .line 140
    .end local v1    # "typeResId":I
    :cond_2
    const v1, 0x7f090092

    .restart local v1    # "typeResId":I
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/android/settings/blacklist/BlacklistPreferences;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 51
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v1, "button_blacklist_private_numbers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    .line 53
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    const-string v1, "button_blacklist_unknown_numbers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    .line 56
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 79
    check-cast v0, Ljava/util/Set;

    .line 80
    .local v0, "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "phone_blacklist_unknown_number_enabled"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/blacklist/BlacklistPreferences;->updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    const v2, 0x7f09008f

    const v3, 0x7f09008e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/settings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 94
    .end local v0    # "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 86
    check-cast v0, Ljava/util/Set;

    .line 87
    .restart local v0    # "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "phone_blacklist_private_number_enabled"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/blacklist/BlacklistPreferences;->updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    const v2, 0x7f09008c

    const v3, 0x7f09008b

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/settings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    const-string v2, "phone_blacklist_private_number_enabled"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/blacklist/BlacklistPreferences;->updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    const v3, 0x7f09008c

    const v4, 0x7f09008b

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    const-string v2, "phone_blacklist_unknown_number_enabled"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/blacklist/BlacklistPreferences;->updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    const v3, 0x7f09008f

    const v4, 0x7f09008e

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 74
    return-void
.end method
