.class public Lcom/android/settings_ex/nfc/PaymentSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;,
        Lcom/android/settings_ex/nfc/PaymentSettings$MyLongClickListener;,
        Lcom/android/settings_ex/nfc/PaymentSettings$SettingsPackageMonitor;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings_ex/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings_ex/nfc/PaymentSettings;Lcom/android/settings_ex/nfc/PaymentSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 177
    new-instance v0, Lcom/android/settings_ex/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/PaymentSettings$2;-><init>(Lcom/android/settings_ex/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    .line 234
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/PaymentSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 145
    .local v0, "appInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v1, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->refresh()V

    .line 150
    .end local v0    # "appInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "payment_service_search_uri"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "searchUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    const v2, 0x7f090a07

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 172
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 173
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 175
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040084

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0f0137

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, "learnMore":Landroid/widget/TextView;
    new-instance v2, Lcom/android/settings_ex/nfc/PaymentSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/PaymentSettings$1;-><init>(Lcom/android/settings_ex/nfc/PaymentSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 162
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 163
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 269
    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->refresh()V

    .line 157
    return-void
.end method

.method public refresh()V
    .locals 14

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    .line 73
    .local v8, "manager":Landroid/preference/PreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 76
    .local v10, "screen":Landroid/preference/PreferenceScreen;
    iget-object v11, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v11}, Lcom/android/settings_ex/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 80
    .local v0, "appInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    new-instance v9, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11, v0, p0}, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V

    .line 82
    .local v9, "preference":Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;
    iget-object v11, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v11, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 84
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 87
    :cond_0
    const-string v11, "PaymentSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t load banner drawable of service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v0    # "appInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "preference":Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0f0136

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    .local v3, "emptyText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0f0137

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 93
    .local v7, "learnMore":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0f0135

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 94
    .local v2, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-nez v11, :cond_2

    .line 95
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 112
    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 113
    return-void

    .line 100
    :cond_2
    new-instance v4, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 101
    .local v4, "foreground":Landroid/preference/SwitchPreference;
    iget-object v11, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v11}, Lcom/android/settings_ex/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v5

    .line 102
    .local v5, "foregroundMode":Z
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 103
    const v11, 0x7f090a04

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 105
    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    invoke-virtual {v10, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method
