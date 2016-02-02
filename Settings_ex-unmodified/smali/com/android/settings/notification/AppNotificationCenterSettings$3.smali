.class Lcom/android/settings/notification/AppNotificationCenterSettings$3;
.super Ljava/lang/Object;
.source "AppNotificationCenterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationCenterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

.field final synthetic val$pkg_value:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationCenterSettings;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    iput-object p2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->val$pkg_value:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 314
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 315
    .local v0, "lockscreen":Z
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mLocktype:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$500(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 317
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$600(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 318
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$700(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 319
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->val$pkg_value:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v3}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "app_package"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # invokes: Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$900(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # invokes: Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$1000(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    :goto_0
    return v5

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mLocktype:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$500(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$600(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$700(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->val$pkg_value:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v3}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "app_package"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # invokes: Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$1100(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$3;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # invokes: Lcom/android/settings/notification/AppNotificationCenterSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$1200(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
