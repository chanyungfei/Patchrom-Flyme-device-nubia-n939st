.class Lcom/android/settings/notification/AppNotificationCenterSettings$2;
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

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$pkg_value:Landroid/content/ContentResolver;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationCenterSettings;Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    iput-object p2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$pkg_value:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 269
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 270
    .local v0, "block":Z
    if-nez v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mLockscreen:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$200(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mStatusbar:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$300(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mBreathe:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$400(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mLocktype:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$500(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$600(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$700(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$pkg_value:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v3}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "app_package"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "block"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    :goto_0
    const-string v1, "AppNotificationCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yao1111 pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "block="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mBackend:Lcom/android/settings/notification/NotificationCenter$Backend;
    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$800(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationCenter$Backend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$uid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/notification/NotificationCenter$Backend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    move-result v1

    return v1

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mLockscreen:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$200(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mStatusbar:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$300(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mBreathe:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$400(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 290
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$pkg_value:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

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

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mLocktype:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$500(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mNubia:Lcom/android/settings/notification/NotificationRadioPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$600(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mHide:Lcom/android/settings/notification/NotificationRadioPreference;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$700(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationRadioPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->val$pkg_value:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-virtual {v3}, Lcom/android/settings/notification/AppNotificationCenterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "app_package"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "block"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
