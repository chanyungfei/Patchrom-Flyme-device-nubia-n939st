.class Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseSystemSettingSwitchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;

    .line 126
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 127
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;

    # getter for: Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;->access$000(Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;

    # getter for: Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;->access$100(Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->update()V

    .line 134
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->update()V

    .line 144
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->update()V

    .line 149
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;

    # getter for: Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;->access$000(Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;

    # invokes: Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;->setSwitchState()V
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;->access$200(Lcom/android/settings_ex/cyanogenmod/BaseSystemSettingSwitchBar;)V

    .line 153
    return-void
.end method
