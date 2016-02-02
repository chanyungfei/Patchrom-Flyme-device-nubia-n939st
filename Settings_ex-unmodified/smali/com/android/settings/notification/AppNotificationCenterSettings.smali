.class public Lcom/android/settings/notification/AppNotificationCenterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppNotificationCenterSettings.java"

# interfaces
.implements Lcom/android/settings/notification/NotificationRadioPreference$OnClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

.field private final mBackend:Lcom/android/settings/notification/NotificationCenter$Backend;

.field private mBlock:Landroid/preference/SwitchPreference;

.field private mBreathe:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mHide:Lcom/android/settings/notification/NotificationRadioPreference;

.field private mLockscreen:Landroid/preference/SwitchPreference;

.field private mLocktype:Landroid/preference/PreferenceScreen;

.field private mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

.field private mStatusbar:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "AppNotificationCenter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/AppNotificationCenterSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 77
    new-instance v0, Lcom/android/settings/notification/NotificationCenter$Backend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationCenter$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBackend:Lcom/android/settings/notification/NotificationCenter$Backend;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationCenter$AppRow;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLockscreen:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mStatusbar:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBreathe:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLocktype:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationCenter$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBackend:Lcom/android/settings/notification/NotificationCenter$Backend;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationCenterSettings;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 444
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 446
    array-length v0, v4

    .line 447
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 448
    aget-object v3, v4, v2

    .line 449
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 458
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 452
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppNotificationCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f09061e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 441
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    sget-boolean v6, Lcom/android/settings/notification/AppNotificationCenterSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "AppNotificationCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityCreated mCreated="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mCreated:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-boolean v6, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mCreated:Z

    if-eqz v6, :cond_2

    .line 102
    const-string v6, "AppNotificationCenter"

    const-string v7, "onActivityCreated: ignoring duplicate call"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iput-boolean v10, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mCreated:Z

    .line 106
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    if-eqz v6, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f01f5

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 108
    .local v4, "content":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 109
    .local v5, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040007

    invoke-virtual {v6, v7, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "bar":Landroid/view/View;
    const v6, 0x7f0f000f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 113
    .local v0, "appIcon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    iget-object v6, v6, Lcom/android/settings/notification/NotificationCenter$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    const v6, 0x7f0f0010

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, "appName":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    iget-object v6, v6, Lcom/android/settings/notification/NotificationCenter$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v6, 0x7f0f0011

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "appSettings":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    iget-object v6, v6, Lcom/android/settings/notification/NotificationCenter$AppRow;->settingsIntent:Landroid/content/Intent;

    if-nez v6, :cond_3

    .line 120
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :goto_1
    invoke-virtual {v5, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v2, v10}, Landroid/view/View;->setClickable(Z)V

    .line 123
    new-instance v6, Lcom/android/settings/notification/AppNotificationCenterSettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/AppNotificationCenterSettings$1;-><init>(Lcom/android/settings/notification/AppNotificationCenterSettings;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 138
    .local v3, "intent":Landroid/content/Intent;
    sget-boolean v12, Lcom/android/settings/notification/AppNotificationCenterSettings;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "AppNotificationCenter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCreate getIntent()="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    if-nez v3, :cond_2

    .line 140
    const-string v12, "AppNotificationCenter"

    const-string v13, "No intent"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->toastAndFinish()V

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    const-string v12, "app_uid"

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 146
    .local v11, "uid":I
    const-string v12, "app_package"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "pkg":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "lock"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "pkglock":Ljava/lang/String;
    const-string v12, "AppNotificationCenter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "yao1111 pkglock="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 150
    :cond_3
    const-string v12, "AppNotificationCenter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing extras: app_package was "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "app_uid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " was "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->toastAndFinish()V

    goto :goto_0

    .line 156
    :cond_4
    sget-boolean v12, Lcom/android/settings/notification/AppNotificationCenterSettings;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "AppNotificationCenter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Load details for pkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 158
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v7, v4, v11}, Lcom/android/settings/notification/AppNotificationCenterSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 159
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_6

    .line 160
    const-string v12, "AppNotificationCenter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to find package info: app_package was "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "app_uid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " was "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->toastAndFinish()V

    goto/16 :goto_0

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 166
    .local v8, "root":Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_7

    .line 167
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 169
    :cond_7
    const v12, 0x7f060008

    invoke-virtual {p0, v12}, Lcom/android/settings/notification/AppNotificationCenterSettings;->addPreferencesFromResource(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 172
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 173
    .local v5, "pkg_value":Landroid/content/ContentResolver;
    const-string v12, "nubia_support"

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settings/notification/NotificationRadioPreference;

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    .line 174
    const-string v12, "hide_content"

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settings/notification/NotificationRadioPreference;

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    .line 176
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/notification/NotificationRadioPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/notification/NotificationRadioPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v12, p0}, Lcom/android/settings/notification/NotificationRadioPreference;->setOnClickListener(Lcom/android/settings/notification/NotificationRadioPreference$OnClickListener;)V

    .line 180
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v12, p0}, Lcom/android/settings/notification/NotificationRadioPreference;->setOnClickListener(Lcom/android/settings/notification/NotificationRadioPreference$OnClickListener;)V

    .line 182
    const/4 v12, 0x1

    const-string v13, "app_package"

    invoke-virtual {v3, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_a

    .line 184
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settings/notification/NotificationRadioPreference;->setChecked(Z)V

    .line 185
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/settings/notification/NotificationRadioPreference;->setChecked(Z)V

    .line 192
    :goto_1
    const-string v12, "lockscreen_notify_style"

    invoke-virtual {p0, v12}, Lcom/android/settings/notification/AppNotificationCenterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLocktype:Landroid/preference/PreferenceScreen;

    .line 193
    const-string v12, "block"

    invoke-virtual {p0, v12}, Lcom/android/settings/notification/AppNotificationCenterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBlock:Landroid/preference/SwitchPreference;

    .line 196
    const-string v12, "lockscreen"

    invoke-virtual {p0, v12}, Lcom/android/settings/notification/AppNotificationCenterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLockscreen:Landroid/preference/SwitchPreference;

    .line 197
    const-string v12, "statusbar"

    invoke-virtual {p0, v12}, Lcom/android/settings/notification/AppNotificationCenterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mStatusbar:Landroid/preference/SwitchPreference;

    .line 198
    const-string v12, "breathe"

    invoke-virtual {p0, v12}, Lcom/android/settings/notification/AppNotificationCenterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBreathe:Landroid/preference/SwitchPreference;

    .line 200
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    .line 201
    .local v10, "secure":Z
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 202
    .local v1, "enabled":Z
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 203
    .local v0, "allowPrivate":Z
    if-eqz v10, :cond_8

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    .line 207
    :cond_8
    iget-object v12, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBackend:Lcom/android/settings/notification/NotificationCenter$Backend;

    invoke-static {v7, v12, v13}, Lcom/android/settings/notification/NotificationCenter;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationCenter$Backend;)Lcom/android/settings/notification/NotificationCenter$AppRow;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    .line 208
    const-string v12, "has_settings_intent"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 210
    const-string v12, "has_settings_intent"

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 211
    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    const-string v12, "settings_intent"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    iput-object v12, v13, Lcom/android/settings/notification/NotificationCenter$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 220
    :cond_9
    :goto_2
    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app_package"

    invoke-virtual {v3, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "block"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_c

    .line 223
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBlock:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLockscreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mStatusbar:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBreathe:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLocktype:Landroid/preference/PreferenceScreen;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    :goto_3
    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app_package"

    invoke-virtual {v3, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "lock"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_d

    .line 237
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLockscreen:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLocktype:Landroid/preference/PreferenceScreen;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :goto_4
    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app_package"

    invoke-virtual {v3, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "statusbar"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_e

    .line 248
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mStatusbar:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 253
    :goto_5
    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app_package"

    invoke-virtual {v3, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "breathe"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_f

    .line 256
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBreathe:Landroid/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 266
    :goto_6
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBlock:Landroid/preference/SwitchPreference;

    new-instance v13, Lcom/android/settings/notification/AppNotificationCenterSettings$2;

    invoke-direct {v13, p0, v5, v4, v11}, Lcom/android/settings/notification/AppNotificationCenterSettings$2;-><init>(Lcom/android/settings/notification/AppNotificationCenterSettings;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLockscreen:Landroid/preference/SwitchPreference;

    new-instance v13, Lcom/android/settings/notification/AppNotificationCenterSettings$3;

    invoke-direct {v13, p0, v5}, Lcom/android/settings/notification/AppNotificationCenterSettings$3;-><init>(Lcom/android/settings/notification/AppNotificationCenterSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 347
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mStatusbar:Landroid/preference/SwitchPreference;

    new-instance v13, Lcom/android/settings/notification/AppNotificationCenterSettings$4;

    invoke-direct {v13, p0, v5}, Lcom/android/settings/notification/AppNotificationCenterSettings$4;-><init>(Lcom/android/settings/notification/AppNotificationCenterSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 365
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBreathe:Landroid/preference/SwitchPreference;

    new-instance v13, Lcom/android/settings/notification/AppNotificationCenterSettings$5;

    invoke-direct {v13, p0, v5}, Lcom/android/settings/notification/AppNotificationCenterSettings$5;-><init>(Lcom/android/settings/notification/AppNotificationCenterSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 402
    invoke-static {v7, v2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 188
    .end local v0    # "allowPrivate":Z
    .end local v1    # "enabled":Z
    .end local v10    # "secure":Z
    :cond_a
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/settings/notification/NotificationRadioPreference;->setChecked(Z)V

    .line 189
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settings/notification/NotificationRadioPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 215
    .restart local v0    # "allowPrivate":Z
    .restart local v1    # "enabled":Z
    .restart local v10    # "secure":Z
    :cond_b
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 216
    .local v9, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationCenter$AppRow;>;"
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    iget-object v12, v12, Lcom/android/settings/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;

    invoke-virtual {v9, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/settings/notification/NotificationCenter;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    goto/16 :goto_2

    .line 232
    .end local v9    # "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationCenter$AppRow;>;"
    :cond_c
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBlock:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 243
    :cond_d
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mLockscreen:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 251
    :cond_e
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mStatusbar:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 259
    :cond_f
    iget-object v12, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mBreathe:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6
.end method

.method public onRadioButtonClicked(Lcom/android/settings/notification/NotificationRadioPreference;)V
    .locals 5
    .param p1, "emiter"    # Lcom/android/settings/notification/NotificationRadioPreference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 415
    .local v0, "pkg_value":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    if-ne p1, v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/notification/NotificationRadioPreference;->setChecked(Z)V

    .line 417
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/NotificationRadioPreference;->setChecked(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "app_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    if-ne p1, v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/notification/NotificationRadioPreference;->setChecked(Z)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/NotificationRadioPreference;->setChecked(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "app_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
