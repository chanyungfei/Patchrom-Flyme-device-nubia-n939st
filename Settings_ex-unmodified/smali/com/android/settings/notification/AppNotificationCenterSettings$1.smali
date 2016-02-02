.class Lcom/android/settings/notification/AppNotificationCenterSettings$1;
.super Ljava/lang/Object;
.source "AppNotificationCenterSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationCenterSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationCenterSettings;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$100(Lcom/android/settings/notification/AppNotificationCenterSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationCenterSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationCenterSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationCenterSettings;->mAppRow:Lcom/android/settings/notification/NotificationCenter$AppRow;
    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationCenterSettings;->access$000(Lcom/android/settings/notification/AppNotificationCenterSettings;)Lcom/android/settings/notification/NotificationCenter$AppRow;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/notification/NotificationCenter$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
